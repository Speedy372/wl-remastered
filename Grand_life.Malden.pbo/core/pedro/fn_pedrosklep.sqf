#include "script_macros.hpp"
private["_robber", "_shop", "_ui", "_progress", "_pgText", "_cP", "_rip", "_pos", "_amount"];
_shop = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;
_robber = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_param;
_action = [_this, 2] call BIS_fnc_param;
if (_robber distance _shop > 10) exitWith {
    hint "Nie mozesz byc dalej niz 10 m!"
};
if (vehicle player != _robber) exitWith {
    hint "Musisz wyjsc z pojazdu!"
};
if ! (alive _robber) exitWith {};
if (life_inv_plik > 0) then {
    [false, "plik", 1] call life_fnc_handleInv;
    hint "Dzieki za plik misji!";
    ["pedrosklep"] spawn mav_ttm_fnc_addExp;
} else {
    hint "Spierdzielaj!"
};