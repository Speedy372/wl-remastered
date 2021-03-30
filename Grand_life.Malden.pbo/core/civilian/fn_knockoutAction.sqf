#include "script_macros.hpp"
private "_target";
_target = param[0, objNull, [objNull]];
if (isNull _target) exitWith {};
if (!isPlayer _target) exitWith {};
if (player distance _target > 4) exitWith {};
life_knockout = true;
[player, "AwopPercMstpSgthWrflDnon_End2"] remoteExecCall["life_fnc_animSync", RCLIENT];
sleep 0.08;
[_target, profileName] remoteExec["life_fnc_knockedOut", _target];
[player, "knockout"] remoteExec["life_fnc_say3D", RANY];
sleep 3;
life_knockout = false;
_log = format["%1, %2 powalil %3, %4", name player, getPlayerUID player, name _target, getPlayerUID _target];
[_log, "powalenie"] remoteExecCall["A3Log", 2];