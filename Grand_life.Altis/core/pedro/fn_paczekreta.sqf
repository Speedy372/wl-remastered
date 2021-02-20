#include "script_macros.hpp"
_complete = false;
_pricechuj = 10000;
if (CASH < _pricechuj) exitWith {
    ["PRACOWNIK: Nie masz wystarczajej ilosci pieniedzy, potrzebuje $10000.", "error", 15] call pedro_fnc_pow;
    _complete = true;
};
CASH = CASH - 10000;
if (_complete) exitWith {};
["Ten donut ma duzo cukru! Dzieki takiej ilosci cukru we krwi, latwiej Ci sie celuje przez 90 minut!", "success", 15] call pedro_fnc_pow;
life_bro = 0;
uiSleep 1;
life_bro = 5400;
player setUnitRecoilCoefficient 1.8;
[] call life_fnc_hudUpdate;
while {
    life_bro > 0
}
do {
    life_bro = life_bro - 1;
    uiSleep 1;
};
["Twoj buff z donutow skonczyl sie", "warning", 15 ] call pedro_fnc_pow;
player setUnitRecoilCoefficient 2.8;
[] call life_fnc_hudUpdate;