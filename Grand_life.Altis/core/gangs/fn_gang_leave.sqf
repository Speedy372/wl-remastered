scriptName "fn_gang_leave";
_bool = param[0, false, [false]];
_group = group player;
_uid = getplayeruid player;
_owner = false;
_result = false;
if ((_uid isEqualTo(_group getVariable["gang_owner", ""]))) then {
    _result = [localize "STR_aapps_gang_disband_owner", "Gangsystem", true, true] call BIS_fnc_guiMessage;
    _owner = true;
} else {
    if (_bool) then {
        _result = [localize "STR_aapps_gang_disband", "Gangsystem", true, true] call BIS_fnc_guiMessage;
        _owner = true;
    } else {
        _result = [localize "STR_aapps_gang_leave_question", "Gangsystem", true, true] call BIS_fnc_guiMessage;
    };
};
if (!_result) exitWith {};
player setVariable["realname", profilename, true];
if (_owner) then {
    if (life_HC_isActive) then {
        [_group, player, _uid, true] remoteExecCall["hc_fnc_gang_disband", hc_life];
    } else {
        [_group, player, _uid, true] remoteExecCall["ton_fnc_gang_disband", 2];
    };
} else {
    life_gangdata = [-1, -1];
    hint format[localize "STR_aapps_gang_left", _group getVariable["gang_name", ""]];
    if (life_HC_isActive) then {
        [_group, player, _uid, false] remoteExecCall["hc_fnc_gang_disband", hc_life];
    } else {
        [_group, player, _uid, false] remoteExecCall["ton_fnc_gang_disband", 2];
    };
};
closeDialog 0;