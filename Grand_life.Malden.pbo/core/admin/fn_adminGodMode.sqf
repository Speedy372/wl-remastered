#include "script_macros.hpp"
if (FETCH_CONST(life_adminlevel) < 3) exitWith {
    closeDialog 0;
    hint localize "STR_ANOTF_ErrorLevel";
};
closeDialog 0;
if (life_god) then {
    life_god = false;
    titleText[localize "STR_ANOTF_godModeOff", "PLAIN"];
    titleFadeOut 2;
    player allowDamage true;
} else {
    life_god = true;
    titleText[localize "STR_ANOTF_godModeOn", "PLAIN"];
    titleFadeOut 2;
    player allowDamage false;
};
_log = format["%1, %2 uzyl goda", name player, getPlayerUID player];
[_log, "admin"] remoteExecCall["A3Log", 2];