#include "script_macros.hpp"
private["_display", "_list"];
disableSerialization;
if ! (playerSide isEqualTo west) exitWith {};
_display = findDisplay 2400;
_list = _display displayCtrl 2402;
_data = lbData[2401, (lbCurSel 2401)];
_data = call compile format["%1", _data];
if (isNil "_data") exitWith {};
if (! (_data isEqualType[])) exitWith {};
if (_data isEqualTo[]) exitWith {};
if (life_HC_isActive) then {
    [(_data select 0)] remoteExecCall["HC_fnc_wantedRemove", HC_Life];
} else {
    [(_data select 0)] remoteExecCall["life_fnc_wantedRemove", RSERV];
};
_log = format["%1, %2 usunal z listy poszukiwanych %3", name player, getPlayerUID player, _uid];
[_log, "usunzlisty"] remoteExecCall["A3Log", 2];