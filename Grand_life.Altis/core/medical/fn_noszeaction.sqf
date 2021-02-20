#include "script_macros.hpp"
private["_unit"];
_unit = cursorObject;
if (isNull _unit) exitWith {};
if (player distance _unit > 3) exitWith {};
if (_unit getVariable "restrained") exitWith {};
if (_unit getVariable "nosze") exitWith {};
if (side _unit isEqualTo independent) exitWith {};
if (player isEqualTo _unit) exitWith {};
if (!isPlayer _unit) exitWith {};
_unit setVariable["nosze", true, true];
[player] remoteExec["life_fnc_nosze", _unit];