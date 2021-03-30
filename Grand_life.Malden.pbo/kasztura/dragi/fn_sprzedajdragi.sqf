#include "script_macros.hpp"
_pojazd = kartel_1 getvariable["kasztura_pojazdDEV", objNull];
if (isNull _pojazd) exitWith {
    hint "ERROR: _pojazd isNull"
};
_objs = (getpos Drug_EV_NPC_END) nearObjects["CAR", 30];
_obdzekt = objNull; {
    if (_x == _pojazd) then {
        _obdzekt = _x
    };
}
forEach _objs;
if (isNull _obdzekt) exitWith {
    hint "Gdzie mój towar ? Nie widzę go tu."
};
if (west countSide playableUnits < 3) exitWith {
    ["kartel jest aktywny kiedy jest 4 lub wiecej policjantow online", false] spawn domsg;
};
_klasa = getText(missionConfigFile >> "kasztura_config" >> "DrugEV_klasa");
_ilosc = getNumber(missionConfigFile >> "kasztura_config" >> "DrugEV_ilosc");
_kasiora = getNumber(missionConfigFile >> "kasztura_config" >> "DrugEV_kasiora");
_bagar = _pojazd getVariable["Trunk", [[], 0]];
_klasa1 = ((_bagar#0)#0)#0;
_ilosc1 = ((_bagar#0)#0)#1;
if ! (_klasa isEqualTo _klasa1) exitWith {
    hint "Gdzie mój towar ? Nie widzę go tu !";
};
if (_ilosc > _ilosc1) exitWith {
    hint "Czegoś tu brakuje !";
};
_pojazd setVariable["Trunk", [[], 0], true];
deleteVehicle _pojazd;
kartel_1 setvariable["kasztura_pojazdDEV", objNull, true];
CASH = CASH + (_ilosc * _kasiora);
hint Format["Dzięki za załatwienie sprawy. Oto twoja działka: %1 $", (_ilosc * _kasiora)];
["Drug_Event"] spawn mav_ttm_fnc_addExp;
_pos = Drug_EV_NPC_END getvariable["_startpos", [0, 0, 0]];
Drug_EV_NPC_END setpos _pos;