#include "script_macros.hpp"
private["_value"];
_value = parseNumber(ctrlText 2702);
if (_value > 999999) exitWith {
    hint localize "STR_ATM_WithdrawMax";
};
if (_value < 0) exitWith {};
if (! ([str(_value)] call TON_fnc_isnumber)) exitWith {
    hint localize "STR_ATM_notnumeric"
};
if (_value > BANK) exitWith {
    hint localize "STR_ATM_NotEnoughFunds"
};
if (_value < 100 && BANK > 20000000) exitWith {
    hint localize "STR_ATM_WithdrawMin"
};
CASH = CASH + _value;
BANK = BANK - _value;
hint format[localize "STR_ATM_WithdrawSuccess", [_value] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;
_log = format["%1, %2 wyplacil %3", name player, getPlayerUID player, _value];
[_log, "wplacaniewyplacanie"] remoteExecCall["A3Log", 2];