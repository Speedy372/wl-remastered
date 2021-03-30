#include "script_macros.hpp"
params[["_value", 0, [0]], ["_from", "", [""]]];
if (_value isEqualTo 0 || _from isEqualTo "" || _from isEqualTo profileName) exitWith {};
BANK = BANK + _value;
[1] call SOCK_fnc_updatePartial;
hint format[localize "STR_ATM_WireTransfer", _from, [_value] call life_fnc_numberText];
_log = format["%1, %2 przelal %3, %4 %5", name _from, getPlayerUID _from, name player, getPlayerUID player, [_value] call life_fnc_numberText];
[_log, "przelew"] remoteExecCall["A3Log", 2];