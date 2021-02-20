#include "script_macros.hpp"
params[["_cash", 0, [0]], ["_victim", objNull, [objNull]], ["_robber", objNull, [objNull]]];
if (_robber == _victim) exitWith {};
if (_cash isEqualTo 0) exitWith {
    titleText[localize "STR_Civ_RobFail", "PLAIN"]
};
CASH = CASH + _cash;
titleText[format[localize "STR_Civ_Robbed_cop", [_cash] call life_fnc_numberText], "PLAIN"];