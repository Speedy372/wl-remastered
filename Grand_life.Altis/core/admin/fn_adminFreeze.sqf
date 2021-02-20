#include "script_macros.hpp"
private _unit = lbData[2902, lbCurSel(2902)];
_unit = call compile format["%1", _unit];
if (isNil "_unit") exitWith {};
if (isNull _unit) exitWith {};
if (_unit == player) exitWith {
    hint localize "STR_ANOTF_Error";
};
[player] remoteExec["life_fnc_freezePlayer", _unit];
_log = format["%1, %2 zamrozil %3 %4", name player, getPlayerUID player, name _unit, getPlayerUID _unit];
[_log, "admin"] remoteExecCall["A3Log", 2];