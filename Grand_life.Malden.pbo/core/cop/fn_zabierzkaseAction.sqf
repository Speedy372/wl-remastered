#include "script_macros.hpp"
private["_target"];
_target = cursorObject;
if (isNull _target) exitWith {};
if (!isPlayer _target) exitWith {};
[player] remoteExecCall["life_fnc_zabierzkase", _target];