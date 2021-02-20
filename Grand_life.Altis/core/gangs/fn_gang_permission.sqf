scriptName "fn_gang_permission";
if ([220150, "dialog_gang_permission"] call life_fnc_gang_activedialog) exitWith {
    hint localize "STR_aapps_gang_dialog_inuse"
};
disableSerialization;
createDialog "life_gang_grouppermission";
_display = findDisplay 220150;
_listbox = _display displayCtrl 220150;
_picbutton = _display displayCtrl 220168;
_del = _display displayCtrl 220166;
_save = _display displayCtrl 220167;
_close = _display displayCtrl 220169;
_group = group player;
_index = 0;
gang_grouppermission = +(_group getVariable["gang_permissions", []]);
gang_grouppermint = (_group getVariable["gang_perm_int", 1]);
gang_deleted_ranks = []; {
    _listbox lbAdd(_x select 1);
    _listbox lbSetValue[_index, (_x select 0)];
    _listbox lbSetData[_index, str(_x select 2)];
    if ((_x select 0) in [0, 1]) then {
        _listbox lbSetPicture[_index, "\a3\3den\data\attributes\taskstates\failed_ca.paa"];
    };
    _index = _index + 1;
}
forEach gang_grouppermission;
_display displayAddEventHandler["Unload", '
    (group player) setVariable ["dialog_gang_permission","[]",true];
    closeDialog 0;
'];
_type = (_group getVariable["gang_type", 0]);
if (_type isEqualTo 0) then {
    {
        _idc = getNumber(_x >> "idc");
        ctrlEnable[_idc, false];
    }
    forEach("true"
    configClasses(missionConfigFile >> "gang_config" >> "permissions"));
    ctrlEnable[220151, false];
    _listbox ctrlSetEventhandler["LBSelChanged", '
        _cur = _this select 1;
        if(_cur isEqualTo -1) exitWIth {};
        _text = lbText[220150,_cur];
        _perm = lbData[220150,_cur];
        ctrlSetText[220151,_text];
        _arr = call compile _perm;
        {
            _short = getText(_x >> "short");
            _idc = getNumber(_x >> "idc");
            _bool = _short in _arr;
            ((findDisplay 220150) displayCtrl _idc) cbSetChecked _bool;
        } forEach ("true" configClasses (missionConfigFile >> "gang_config" >> "permissions"));
    '];
} else {
    _listbox ctrlSetEventhandler["LBSelChanged", '
        _cur = _this select 1;
        if(_cur isEqualTo -1) exitWIth {};
        _text = lbText[220150,_cur];
        _perm = lbData[220150,_cur];
        ctrlSetText[220151,_text];
        _arr = call compile _perm;
        {
            _short = getText(_x >> "short");
            _idc = getNumber(_x >> "idc");
            _ref = getText(_x >> "idc_ref");
            _bool = _short in _arr;
            ((findDisplay 220150) displayCtrl _idc) cbSetChecked _bool;
            if(!(_ref isEqualTo "")) then {
                if(_bool) then {
                    ctrlEnable[getNumber(missionConfigFile >> "gang_config" >> "permissions" >> _ref >> "idc"),true];
                } else {
                    ctrlEnable[getNumber(missionConfigFile >> "gang_config" >> "permissions" >> _ref >> "idc"),false];
                };
            };
        } forEach ("true" configClasses (missionConfigFile >> "gang_config" >> "permissions"));
    '];
    _picbutton ctrlSetEventhandler["ButtonClick", '
        _text = ctrlText 220151;
        _lowered = tolower(_text);
        if(count (_text) < 3) then {hint localize "STR_aapps_gang_rankname"};
        _found = false;
        {
            if((tolower(_x select 1)) isEqualTo _lowered) exitWith {_found = true};
        } forEach gang_grouppermission;
        if(_found) exitWith {hint localize "STR_aapps_gang_rankexist"};
        _int = gang_grouppermint + 1;
        gang_grouppermint = _int;
        gang_grouppermission pushBack [_int,_text,[]];
        lbAdd [220150,_text];
        _index = (lbSize 220150)-1;
        lbSetValue [220150,_index,_int];
        lbSetData [220150,_index,"[]"];
    '];
    _del ctrlSetEventhandler["ButtonClick", '
        _cur = lbCurSel 220150;
        if(_cur isEqualTo -1) exitWith {hint localize "STR_aapps_gang_selentry"};
        if(!(lbPicture[220150,_cur] isEqualTo "")) exitWith {hint localize "STR_aapps_gang_deleterank_msg"};
        _id = lbValue [220150,_cur];
        _index = 0;
        _found = false;
        {
            if((_x select 0) isEqualTo _id) exitWith {_found = true};
            _index = _index + 1;
        } forEach gang_grouppermission;
        if(!_found) exitWith {};
        gang_grouppermission deleteAt _index;
        gang_deleted_ranks pushBack _id;
        lbDelete [220150,_cur];
        lbSetCurSel [220150,0];
    '];
    _save ctrlSetEventHandler["ButtonClick", '
        0 call life_fnc_gang_saveeditgroups;
    '];
    _close ctrlSetEventHandler["ButtonClick", '
        _result = true;
        _group = group player;
        _tempperm = _group getVariable ["gang_permissions",[]];
        _tempint = _group getVariable ["gang_perm_int",1];
        if(!(gang_grouppermission isEqualTo _tempperm) OR !(gang_grouppermint isEqualTo _tempint)) then {
            _result = [localize "STR_aapps_gang_unsavedchanges", "Gangsystem", true, true] call BIS_fnc_guiMessage;
        };
        if(!_result) exitWith {closeDialog 0};
        0 call life_fnc_gang_saveeditgroups;
        gang_grouppermission = nil;
        gang_grouppermint = nil;
        gang_deleted_ranks = nil;
        closeDialog 0;
    ']; {
        _idc = getNumber(_x >> "idc");
        _short = getText(_x >> "short");
        _ref = getText(_x >> "idc_ref");
        _refbool = _ref isEqualTo "";
        _refidc = 0;
        if (!_refbool) then {
            _refidc = getNumber(missionConfigFile >> "gang_config" >> "permissions" >> _ref >> "idc");
            _ref = getText(missionConfigFile >> "gang_config" >> "permissions" >> _ref >> "short");
        };
        (_display displayCtrl _idc) ctrlSetEventHandler["CheckedChanged", "
            _bool = (_this select 1) isEqualTo 1;
            _cur = lbCurSel 220150;
            _val = lbValue[220150,_cur];
            if((ctrlIDC (_this select 0)) isEqualTo getNumber(missionConfigFile >> 'gang_config' >> 'permissions' >> 'gang_CHANGEPERMISSION' >> 'idc')) exitWith {
                hint localize 'STR_aapps_gang_remperm';
                (_this select 0) cbSetChecked true;
            };
            _index = 0;
            _found = false;
            {
                if((_x select 0) isEqualTo _val) exitWith {_found = true};
                _index = _index + 1;
            } forEach gang_grouppermission;
            if(!_found) exitWith {};
            _element = gang_grouppermission select _index;
            _perm = _element select 2;
            if(_bool) then {
                _perm pushBack '" + _short + "';
                " + (
        if (_refbool) then {
            ""
        } else {
            format["
                    ctrlEnable [%1, true];
                ", _refidc]
        }) + "
            } else {
                _perm = _perm - ['" + _short + "'];
                " + (
        if (_refbool) then {
            ""
        } else {
            format["
                    ((findDisplay 220150) displayCtrl %1) cbSetChecked false;
                    ctrlEnable [%1, false];
                    _perm = _perm - ['%2'];
                ", _refidc, _ref]
        }) + "
            };
            _element set[2,_perm];
            lbSetData[220150,_cur,str _perm];
            gang_grouppermission set[_index,_element];
        "];
    }
    forEach("true"
    configClasses(missionConfigFile >> "gang_config" >> "permissions"));
};
_listbox lbsetCurSel 0;