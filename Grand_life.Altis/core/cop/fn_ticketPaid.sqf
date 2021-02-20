#include "script_macros.hpp"
params[["_value", 5, [0]], ["_unit", objNull, [objNull]], ["_cop", objNull, [objNull]]];
if (isNull _unit || { ! (_unit isEqualTo life_ticket_unit)
}) exitWith {};
if (isNull _cop || { ! (_cop isEqualTo player)
}) exitWith {};
BANK = BANK + _value;
[] call life_fnc_mandatexp;
[1] call SOCK_fnc_updatePartial;