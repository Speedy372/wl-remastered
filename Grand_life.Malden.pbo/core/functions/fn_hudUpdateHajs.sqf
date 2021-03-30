#include "script_macros.hpp"
if (!alive player) exitWith {};
while {
    isNil "deadplayer"
}
do {}; if (deadplayer) exitwith {};
disableSerialization;
if (isNull LIFEdisplay) then {
    [] call life_fnc_hudSetup;
};
LIFEctrl(6305) ctrlSetText format["GOTÓWKA: %1$", [gl_money_cash] call life_fnc_numberText];
_data = systemTime;
LIFEctrl(6308) ctrlSetText format["%1.%2.%3 %4:%5", _data select 2, _data select 1, _data select 0, _data select 3, _data select 4];