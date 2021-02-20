#include "The-Programmer\script_macros.hpp"
private["_ownerID", "_gangBank", "_gangMax", "_gangName", "_members", "_allUnits", "_ctrl"];
disableSerialization;
if (isNull(findDisplay 2620)) then {
    if (! (createDialog "The_Programmer_Iphone_Gang_Menu")) exitWith {};
};
_ownerID = group player getVariable["gang_owner", ""];
if (_ownerID isEqualTo "") exitWith {
    closeDialog 0;
};
_gangName = group player getVariable "gang_name";
_gangBank = GANG_FUNDS;
_gangMax = group player getVariable "gang_maxMembers";
if ! (_ownerID isEqualTo getPlayerUID player) then {
    (CONTROL(2620, 2622)) ctrlEnable false;
    (CONTROL(2620, 2624)) ctrlEnable false;
    (CONTROL(2620, 2625)) ctrlEnable false;
    (CONTROL(2620, 2630)) ctrlEnable false;
    (CONTROL(2620, 2632)) ctrlShow false;
    (CONTROL(2620, 2631)) buttonSetAction "[] call life_fnc_gangLeave;";
    ctrlSetText[2000, "The-Programmer\Iphone_X\textures\groupe_membres.paa"];
} else {
    (CONTROL(2620, 2631)) buttonSetAction "[] spawn life_fnc_gangDisband;";
    ctrlSetText[2000, "The-Programmer\Iphone_X\textures\groupe.paa"];
};
(CONTROL(2620, 2629)) ctrlSetText _gangName;
(CONTROL(2620, 601)) ctrlSetStructuredText(parseText(format["<t align = 'center' shadow = '1' color='#000000' size='1.5' font='PuristaBold'>%1</t>", [_gangBank] call life_fnc_numberText]));
_members = CONTROL(2620, 2621);
lbClear _members; {
    if ((getPlayerUID _x) == _ownerID) then {
        _members lbAdd format["%1 " + (localize "STR_GNOTF_GangLeader"), (_x getVariable["realname", name _x])];
        _members lbSetData[(lbSize _members) - 1, str(_x)];
    } else {
        _members lbAdd format["%1", (_x getVariable["realname", name _x])];
        _members lbSetData[(lbSize _members) - 1, str(_x)];
    };
}
forEach(units group player);
_grpMembers = units group player;
_allUnits = playableUnits; {
    if (_x in _grpMembers || !(side _x isEqualTo civilian) && isNil {
        (group _x) getVariable "gang_id"
    }) then {
        _allUnits deleteAt _forEachIndex;
    };
}
forEach _allUnits;
_ctrl = CONTROL(2620, 2632);
lbClear _ctrl; {
    _ctrl lbAdd format["%1", _x getVariable["realname", name _x]];
    _ctrl lbSetData[(lbSize _ctrl) - 1, str(_x)];
}
forEach _allUnits;