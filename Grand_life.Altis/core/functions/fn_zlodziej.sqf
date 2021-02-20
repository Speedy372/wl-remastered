#include "script_macros.hpp"
disableSerialization;
private["_control", "_price", "_vehicle", "_nearVehicles", "_price2", "_chopable", "_uid", "_side", "_color"];
_uid = getPlayerUID player;
_side = playerSide;
_control = CONTROL(39400, 39402);
_price = _control lbValue(lbCurSel _control);
_price = _price * 1;
if (gl_cash < _price) exitWith {
    hint format["Potrzebujesz %1 $ aby to zrobić!", _price];
};
_vehicle = _control lbData(lbCurSel _control);
_vehicle = call compile format["%1", _vehicle];
_chopable = LIFE_SETTINGS(getArray, "chopShop_vehicles");
_mazwazm = format["chopShop_nearVehicles_%1", life_chopShop];
_nearVehicles = missionNamespace getvariable[_mazwazm, []];
if (count _nearVehicles == 0) exitWith {
    hint "ERROR - _nearVehicles = []"
};
_vehicle = (_nearVehicles select _vehicle);
if (isNull _vehicle) exitWith {
    hint "ERROR - _vehicle isNull"
};
if ((_vehicle distance player) > 25) exitWith {
    hint "Pojazd jest zbyt daleko"
};
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
if (typeOf _vehicle == "I_MRAP_03_F") exitWith {
    hint "Nie mozesz ukrasc tego pojazdu!";
};
if (typeOf _vehicle == "B_MRAP_01_F") exitWith {
    hint "Nie mozesz ukrasc tego pojazdu!";
};
if (typeOf _vehicle == "B_T_VTOL_01_vehicle_F") exitWith {
    hint "Ten pojazd jest za bardzo poszukiwany!";
};
_color = 0;
if (typeOf _vehicle == "B_Heli_Light_01_F") then {
    _color = 2;
};
if (typeOf _vehicle == "C_Heli_Light_01_civil_F") then {
    _color = 2;
};
if (typeOf _vehicle == "I_heli_light_03_unarmed_f") then {
    _color = 0;
};
if (typeOf _vehicle == "I_Heli_light_03_dynamicLoadout_F") then {
    _color = 0;
};
if (typeOf _vehicle == "C_SUV_01_F") then {
    _color = 5;
};
if (_vehicle getVariable["tablice", FALSE]) then {
    [_vehicle] remoteExec["TON_fnc_vehicleDead2", RSERV];
    [_uid, _side, _vehicle, _color] remoteExec["TON_fnc_vehicleCreate2", RSERV];
    hint format["Zaplaciles %1 $ za przeniesienie pojazdu do swojego garazu.", [_price] call life_fnc_numberText];
    CASH = CASH - _price;
    closeDialog 0;
    sleep 0.5;
    if (!isNil "_vehicle" && !isNull _vehicle) then {
        deleteVehicle _vehicle;
    };
} else {
    hint "Aby to zrobic, musisz przebic tablice rejestracyjne!";
};