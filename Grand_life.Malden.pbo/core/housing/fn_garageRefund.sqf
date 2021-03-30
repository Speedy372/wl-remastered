#include "script_macros.hpp"
_price = _this select 0;
_unit = _this select 1;
if ! (_unit isEqualTo player) exitWith {};
BANK = BANK + _price;
[1] call SOCK_fnc_updatePartial;