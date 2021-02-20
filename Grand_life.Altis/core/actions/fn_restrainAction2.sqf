#include "script_macros.hpp"
private["_unit"];
_unit = cursorObject;
if (isNull _unit) exitWith {};
if (player distance _unit > 5) exitWith {};
if (_unit getVariable "restrained") exitWith {};
if (player isEqualTo _unit) exitWith {};
if (!isPlayer _unit) exitWith {};
[player, "handcuffs"] remoteExec["life_fnc_say3D", RANY];
_unit setVariable["playerSurrender", false, true];
_unit setVariable["restrained", true, true];
[player] remoteExec["life_fnc_restrain", _unit];
[0, "STR_NOTF_Restrained", true, [_unit getVariable["realname", name _unit], profileName]] remoteExecCall["life_fnc_broadcast", west];