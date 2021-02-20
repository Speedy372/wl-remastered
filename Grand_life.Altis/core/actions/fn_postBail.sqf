#include "script_macros.hpp"
private["_unit"];
_unit = param[1, objNull, [objNull]];
if (life_bail_paid) exitWith {};
if (isNil "life_bail_amount") then {
    life_bail_amount = 3500;
};
if (!life_canpay_bail) exitWith {
    hint localize "STR_NOTF_Bail_Post"
};
if (BANK < life_bail_amount) exitWith {
    hint format[localize "STR_NOTF_Bail_NotEnough", life_bail_amount];
};
BANK = BANK - life_bail_amount;
life_bail_paid = true;
[1] call SOCK_fnc_updatePartial;
[0, "STR_NOTF_Bail_Bailed", true, [profileName]] remoteExecCall["life_fnc_broadcast", RCLIENT];