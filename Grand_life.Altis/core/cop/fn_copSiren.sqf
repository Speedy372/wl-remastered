#include "script_macros.hpp"
private["_vehicle"];
_vehicle = param[0, objNull, [objNull]];
if (isNull _vehicle) exitWith {};
if (isNil {
    _vehicle getVariable "siren"
}) exitWith {};
for "_i"
from 0 to 1 step 0 do {
    if (! (_vehicle getVariable "siren")) exitWith {};
    if (count crew _vehicle isEqualTo 0) then {
        _vehicle setVariable["siren", false, true]
    };
    if (!alive _vehicle) exitWith {};
    if (isNull _vehicle) exitWith {};
    _vehicle say3D["sirenLong", 900, 1];
    sleep 5.000;
    if (! (_vehicle getVariable "siren")) exitWith {};
};