#include "script_macros.hpp"
params[["_unit", objNull, [objNull]], ["_val", "", [""]], ["_from", objNull, [objNull]]];
if (isNull _unit || isNull _from || _val isEqualTo "") exitWith {};
if ! (player isEqualTo _unit) exitWith {};
if (! ([_val] call TON_fnc_isnumber)) exitWith {};
if (_unit == _from) exitWith {};
hint format[localize "STR_NOTF_GivenMoney", _from getVariable["realname", name _from], [(parseNumber(_val))] call life_fnc_numberText];
CASH = CASH + parseNumber(_val);
[0] call SOCK_fnc_updatePartial;