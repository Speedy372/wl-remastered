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
if (_losowanie) exitWith {
    ["losowanie w toku!", "error", 15] call pedro_fnc_pow;
};
private _cena = getNumber(missionConfigFile >> "pedro_config" >> "cena_kasyno");
if (CASH < _cena) exitWith {
    ["Nie masz 15000$", "error", 15] call pedro_fnc_pow;
};
gl_money_cash = gl_money_cash - _cena;
_losowanie = true;
["Trwa losowanie biletu!", "event", 15] call pedro_fnc_pow;
sleep 1;
["5", "event", 15] call pedro_fnc_pow;
sleep 1;
["4", "event", 15] call pedro_fnc_pow;
sleep 1;
["3", "event", 15] call pedro_fnc_pow;
sleep 1;
["2", "event", 15] call pedro_fnc_pow;
sleep 1;
["1", "event", 15] call pedro_fnc_pow;
_los = random(100);
if (_los < 15) then {
    ["Wygrałeś Bilet Gratulacje!", "sucess", 15] call pedro_fnc_pow;
    [true, "glticket", 1] call life_fnc_handleInv;
    playSound "win";
} else {
    ["Niestety nie wygrałeś biletu!", "sucess", 15] call pedro_fnc_pow;
};
_losowanie = false;