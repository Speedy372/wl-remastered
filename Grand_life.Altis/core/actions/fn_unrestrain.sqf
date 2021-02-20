#include "script_macros.hpp"
private["_unit"];
_unit = param[0, objNull, [objNull]];
if (isNull _unit) exitWith {};
_unit setVariable["restrained", false, true];
_unit setVariable["Escorting", false, true];
_unit setVariable["transporting", false, true];
_unit setVariable["tied", nil, true];
_unit setVariable["gagged", false, true];
_unit setVariable["blindfolded", nil, true];
detach _unit;
[0, "STR_NOTF_Unrestrain", true, [_unit getVariable["realname", name _unit], profileName]] remoteExecCall["life_fnc_broadcast", west];
_log = format["%1, %2 rozkul %3 %4", name player, getPlayerUID player, name _unit, getPlayerUID _unit];
[_log, "skujrozkuj"] remoteExecCall["A3Log", 2];