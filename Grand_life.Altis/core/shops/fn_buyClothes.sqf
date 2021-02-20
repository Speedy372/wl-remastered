#include "script_macros.hpp"
private["_price"];
if ((lbCurSel 3101) isEqualTo - 1) exitWith {
    titleText[localize "STR_Shop_NoClothes", "PLAIN"];
};
_price = 0; {
    if (! (_x isEqualTo - 1)) then {
        _price = _price + _x;
    };
}
forEach life_clothing_purchase;
if (_price > CASH) exitWith {
    titleText[localize "STR_Shop_NotEnoughClothes", "PLAIN"];
};
CASH = CASH - _price;
[0] call SOCK_fnc_updatePartial;
life_clothesPurchased = true;
[] call life_fnc_playerSkins;
closeDialog 0;
_log = format["%1, %2 kupil ubrania za %3", name player, getPlayerUID player, [_price] call life_fnc_numberText];
[_log, "kupspubranie"] remoteExecCall["A3Log", 2];