scriptName "fn_gang_openDialog";
_bool = _this isEqualTo 1;
if (! (player getVariable["gang_init_done", false])) exitWith {};
if (! (life_gangData isEqualTo[-1, -1]) OR _bool) then {
    _group = group player;
    if (!_bool) then {
        _ownid = life_gangData select 0;
        if (! (_ownid isequalTo - 1)) then {
            _gangid = (_group getVariable["gang_id", -1]);
            if (! (_gangid isEqualTo _ownid)) exitWith {
                hint "You are buggy, reopen the dialog in a second!";
                [_ownid] spawn life_fnc_gang_findGang;
            };
        };
    };
    createDialog "life_gang_overview";
    disableSerialization;
    _display = findDisplay 220050;
    _desc = _group getVariable["gang_description", ""];
    _lvl = _group getVariable["gang_level", 1];
    _members = _group getVariable["gang_members", []];
    _type = _group getVariable["gang_type", 0];
    _permissions = _group getVariable["gang_permissions", []];
    (_display displayCtrl 220050) ctrlSetStructuredText parseText _desc;
    _tax = _group getVariable["gang_tax", 0];
    _sum = _group getVariable["gang_tax_sum", 0];
    _tag = _group getVariable["gang_tag", ""];
    _tag =
    if (! (_tag isEqualto "")) then {
        format["[%1]", _tag]
    } else {
        _tag
    };
    (_display displayCtrl 220051) ctrlSetStructuredText parseText format[localize "STR_aapps_gang_stats", _tag, _group getVariable["gang_name", "1337 BUGGY 1337"], [_group getVariable["gang_bank", 0]] call life_fnc_numbertext, count _members,
    if (_type isEqualTo 0) then {
        getNumber(missionConfigFile >> "gang_config" >> "default_temp_maxmembers")
    } else {
        getNumber(missionconfigfile >> "gang_config" >> "upgrades" >> format["level%1", _lvl] >> "max_members")
    },
    _lvl, _tax, "%", [_sum] call life_fnc_numbertext];
    _permission = life_gangdata select 1;
    _playerpermission = []; {
        if ((_x select 0) isEqualTo _permission) exitWith {
            _playerpermission = _x;
        };
    }
    forEach _permissions;
    (_display displayCtrl 220053) ctrlSetStructuredText parseText format["<img image='\a3\3den\data\displays\display3den\panelright\modegroups_ca.paa'></img>  Gangmanagement<t align='right'>[%1] %2", _playerpermission select 1, profileName];
    _playerpermission = _playerpermission select 2;
    _listbox = _display displayCtrl 220052;
    _val = 0; {
        _bool = getNumber(missionConfigFile >> "gang_config" >> "permissions" >> "gang_" + _x >> "main");
        if (_bool isEqualTo 1) then {
            if (! ((_x isEqualTo "DEPOSIT") && {
                "WITHDRAW" in _playerpermission
            })) then {
                _listbox lbAdd getText(missionConfigFile >> "gang_config" >> "permissions" >> "gang_" + _x >> "displayName");
                _listbox lbSetData[_val, getText(missionConfigFile >> "gang_config" >> "permissions" >> "gang_" + _x >> "action")];
                _listbox lbSetPicture[_val, getText(missionConfigFile >> "gang_config" >> "permissions" >> "gang_" + _x >> "icon")];
                _val = _val + 1;
            };
        };
    }
    forEach _playerpermission;
    _bool = (getplayeruid player) isEqualTo(_group getVariable["gang_owner", ""]);
    if (_bool && { ! (_permission isEqualTo 0)
    }) then {
        _listbox lbAdd localize "STR_aapps_gang_action_reassign";
        _listbox lbSetData[_val, "0 call life_fnc_gang_reassign"];
        _val = _val + 1;
    };
    if ((_permission isEqualTo 0) OR {
        "TAG" in _playerpermission
    }
    OR {
        "TAX" in _playerpermission
    }) then {
        _listbox lbAdd localize "STR_aapps_gang_action_settings";
        _listbox lbSetData[_val, "0 call life_fnc_gang_settings"];
        _val = _val + 1;
    };
    if (_val isEqualTo 0) then {
        _listbox lbAdd localize "STR_aapps_gang_action_nopermission";
    } else {
        lbSort[_listbox, "ASC"];
    };
    ((findDisplay 220050) displayCtrl 220052) ctrlSetEventHandler['LBDblClick', '
        _action = lbData[220052,lbCurSel 220052];
        0 call compile _action;
	'];
} else {
    if (getNumber(missionConfigFile >> "gang_config" >> "temporary_gangs") isEqualTo 1) then {
        createDialog "life_gang_buymenu";
    } else {
        createDialog "life_gang_buymenu_small";
    };
    ctrlSetText[220070, ([getNumber(missionConfigFile >> "gang_config" >> "temp_gang_price")] call life_fnc_numberText) + "€"];
    ctrlSetText[220071, ([getNumber(missionConfigFile >> "gang_config" >> "perm_gang_price")] call life_fnc_numberText) + "€"];
};