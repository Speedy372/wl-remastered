#include "script_macros.hpp"
private["_robber", "_shop", "_kassa", "_ui", "_progress", "_pgText", "_cP", "_rip", "_pos", "_dice"];
_shop = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;
_robber = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_param;
_action = [_this, 2] call BIS_fnc_param;
if ! (alive _robber) exitWith {};
if (_robber distance _shop > 5) exitWith {
    hint "Nie mozesz byc dalej niz 5 m!"
};
if (vehicle player != _robber) exitWith {
    hint "Musisz wyjsc z pojazdu!"
};
private _cena = getNumber(missionConfigFile >> "pedro_config" >> "cena_dziwka");
if (CASH < _cena) exitWith {
    ["Nie masz 5000$", "error", 15] call pedro_fnc_pow;
};
gl_cash = gl_cash - _cena;
life_action_inUse = true;
_upp = "Ruchanie";
disableSerialization;
"progressBar"
cutRsc["life_progress", "PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...", "%", _upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
for "_i"
from 0 to 1 step 0 do {
    uiSleep 0.21;
    _cP = _cP + 0.01;
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format["%3 (%1%2)...", round(_cP * 100), "%", _upp];
    if (_cP >= 1) exitWith {};
}; _dice = random(100);
if (_dice < 90) then {
    player setAnimSpeedCoef 1.2;
    ["Czujesz sie lekki jak piórko :)", "sucess", 15] call pedro_fnc_pow;
    _sex = true;
    [true, "donuts", 1] call life_fnc_handleInv;
} else {
    player setdamage 0.9;
    ["Niestety zaraziles sie HIV'em", "warrning", 15] call pedro_fnc_pow;
};
life_action_inUse = false;
"progressBar"
cutText["", "PLAIN"];
sleep 120;
player setAnimSpeedCoef 1;
["Powróciles do poprzedniego stanu", "sucess", 15] call pedro_fnc_pow;