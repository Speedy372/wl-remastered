#include "script_macros.hpp"
params[["_unit", objNull, [objNull]]];
if (isNull _unit) exitWith {};
sleep 2;
if (player distance _unit > 5 || !alive player || !alive _unit) exitWith {
    hint localize "STR_NOTF_CannotSeizePerson"
};
[player] remoteExec["life_fnc_seizeClient", _unit];
life_action_inUse = false;