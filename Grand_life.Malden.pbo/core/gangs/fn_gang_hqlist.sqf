scriptName "fn_gang_hqlist";
if ([220200, "dialog_gang_hqlist"] call life_fnc_gang_activedialog) exitWith {
    hint localize "STR_aapps_gang_dialog_inuse"
};
disableSerialization;
createDialog "life_gang_hqselection";
_display = findDisplay 220200;
_listbox = _display displayCtrl 220200;
_btn = _display displayCtrl 220201;
_group = group player;
_cur = (_group getVariable["gang_hq", objNull]);
ctrlEnable[220201, false];
if ((isNull _cur) && (life_houses isEqualTo[])) exitWith {
    _listbox lbAdd localize "STR_aapps_gang_nohouses";
};
_val = 0;
if (! (isNull _cur)) then {
    _listbox lbAdd localize "STR_aapps_gang_remhq";
    _listbox lbSetValue[0, 3];
    _houseName = getText(configFile >> "CfgVehicles" >> (typeOf _cur) >> "displayName");
    _listbox lbAdd format[localize "STR_aapps_gang_current_Hq", _houseName];
    _listbox lbSetData[1, str(getpos _cur)];
    _listbox lbSetValue[1, 2];
    _val = 2;
}; {
    _posstring = format["%1", (_x select 0)];
    _pos = call compile _posstring;
    _house = nearestObject[_pos, "House"];
    if (! (_house isEqualTo _cur)) then {
        _houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
        _grid = mapGridPosition _house;
        _listbox lbAdd format["%1 - Pos: %2 %3", _houseName, _grid select[0, 3], _grid select[3, 3]];
        _listbox lbSetData[_val, _posstring];
        _listbox lbSetValue[_val, 1];
        _val = _val + 1;
    };
}
forEach life_houses;
_listbox ctrlSetEventhandler["LBSelChanged", "
    _cur = _this select 1;
    if(_cur isEqualTo -1) exitWIth {};
    if(lbValue[220200,_cur] isEqualTo 2) then {
        ctrlEnable[220201,false];
    } else {
        ctrlEnable[220201,true];
    };
"];
_btn ctrlSetEventhandler["ButtonClick", "0 spawn life_fnc_gang_selecthq"];
_display displayAddEventHandler["Unload", "
    (group player) setVariable ['dialog_gang_hqlist','[]',true];
    closeDialog 0;
"];