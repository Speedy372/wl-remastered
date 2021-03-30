scriptName "fn_gang_settings";
if ([220250, "dialog_gang_settings"] call life_fnc_gang_activedialog) exitWith {
    hint localize "STR_aapps_gang_dialog_inuse"
};
closeDialog 0;
createDialog "life_gang_groupsettings";
disableSerialization;
_display = findDisplay 220250;
_group = group player;
ctrlSetText[220250, _group getVariable["gang_name", ""]];
_val = 0;
_owner = (_group getVariable["gang_owner", ""]); {
    if ((_x select 1) isEqualTo 0) then {
        _uid = _x select 0;
        _name = _x select 2;
        lbAdd[220251, _name];
        lbSetData[220251, _val, _uid];
        if (_owner isEqualTO _uid) then {
            lbSetCurSel[220251, _val]
        };
        _val = _val + 1;
    };
}
forEach(_group getVariable["gang_members", []]);
_tag = _group getVariable["gang_tag", ""];
if (! (_tag isEqualTo "")) then {
    ctrlSetText[220252, format["[%1]", _tag]];
};
ctrlSetText[220253, str(_group getVariable["gang_tax", 0])];
_ownrank = life_GangData select 1;
if (! (_ownrank isEqualTo 0)) then {
    ctrlEnable[220250, false];
    (_display displayCtrl 220250) ctrlSetToolTip localize "STR_aapps_gang_neededowner";
};
if (! (_owner isEqualTo(getplayeruid player))) then {
    ctrlEnable[220251, false];
    (_display displayCtrl 220251) ctrlSetToolTip localize "STR_aapps_gang_neededowner";
};
_perm = []; {
    if ((_x select 0) isEqualTo _ownrank) exitWith {
        _perm = _x select 2;
    };
}
forEach(_group getVariable["gang_permissions", []]);
if (! ("TAG" in _Perm)) then {
    ctrlEnable[220252, false];
    (_display displayCtrl 220252) ctrlSetToolTip localize "STR_aapps_gang_neededtag";
};
if (! ("TAX" in _perm)) then {
    ctrlEnable[220253, false];
    (_display displayCtrl 220253) ctrlSetToolTip localize "STR_aapps_gang_neededtax";
};
_display displayAddEventHandler["Unload", '
    (group player) setVariable ["dialog_gang_settings","[]",true];
    closeDialog 0;
'];