#include "script_macros.hpp"
if (!alive player) exitWith {};
if (deadplayer) exitwith {};
disableSerialization;
if (isNull LIFEdisplay) then {
    [] call life_fnc_hudSetup;
};
LIFEctrl(6305) ctrlSetText format["Hajs: %1$", [gl_cash] call life_fnc_numberText];
LIFEctrl(6205) ctrlSetText format["Zdrowie: %1", round(100 - (damage player * 100))];