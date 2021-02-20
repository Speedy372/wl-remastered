#include "script_macros.hpp"
private _unit = player getVariable["escortingPlayer", objNull];
if (isNull _unit) then {
    _unit = cursorTarget;
};
if (isNull _unit) exitWith {};
if (! (_unit getVariable["Escorting", false])) exitWith {};
detach _unit;
_unit setVariable["Escorting", false, true];
player setVariable["currentlyEscorting", nil];
player setVariable["isEscorting", false];