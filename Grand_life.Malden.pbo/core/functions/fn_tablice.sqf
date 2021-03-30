#include "script_macros.hpp"
disableSerialization;
private["_control", "_price", "_vehicle", "_nearVehicles", "_price2", "_chopable", "_nazwa"];
_control = CONTROL(39400, 39402);
_price = _control lbValue(lbCurSel _control);
_vehicle = _control lbData(lbCurSel _control);
_vehicle = call compile format["%1", _vehicle];
_chopable = LIFE_SETTINGS(getArray, "chopShop_vehicles");
_nearVehicles = nearestObjects[getMarkerPos life_chopShop, _chopable, 25];
_vehicle = (_nearVehicles select _vehicle);
if (isNull _vehicle) exitWith {};
if (typeOf _vehicle == "B_GEN_Van_02_transport_F") exitWith {
    hint "Nie mozesz ukrasc tego pojazdu!";
};
if (typeOf _vehicle == "C_IDAP_Van_02_medevac_F") exitWith {
    hint "Nie mozesz ukrasc tego pojazdu!";
};
if (typeOf _vehicle == "O_Heli_Transport_04_medevac_F") exitWith {
    hint "Nie mozesz ukrasc tego pojazdu!";
};
if (typeOf _vehicle == "I_Truck_02_medical_F") exitWith {
    hint "Nie mozesz ukrasc tego pojazdu!";
};
if (typeOf _vehicle == "C_Van_02_medevac_F") exitWith {
    hint "Nie mozesz ukrasc tego pojazdu!";
};
if (typeOf _vehicle == "B_Heli_Transport_01_F") exitWith {
    hint "Nie mozesz ukrasc tego pojazdu!";
};
if ((_vehicle getVariable "tablice")) exitWith {
    hint "Pojazd ma juz przebite tablice!"
};
if (gl_money_cash < _price) exitWith {
    hint format["Potrzebujesz %1 $ aby to zrobić!", _price];
};
gl_money_cash = gl_money_cash - _price;
_vehicle setVariable["tablice", TRUE, TRUE];
hint format["Zaplaciles %1 $ za przebicie tablic. Teraz udaj sie na dziuple w celu przeniesienia pojazdu do swojego garazu!", [_price] call life_fnc_numberText];
closeDialog 0;