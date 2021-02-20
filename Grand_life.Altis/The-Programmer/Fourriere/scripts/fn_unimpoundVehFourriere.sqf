#include "The-Programmer\script_macros.hpp"
private["_vehicle", "_vehicleLife", "_vid", "_pid", "_unit", "_price", "_price", "_FourriereMultipler", "_purchasePrice"];
disableSerialization;
if ((lbCurSel 2802) isEqualTo - 1) exitWith {
    hint localize "STR_Global_NoSelection"
};
_vehicle = lbData[2802, (lbCurSel 2802)];
_vehicle = (call compile format["%1", _vehicle]) select 0;
_vehicleLife = _vehicle;
_vid = lbValue[2802, (lbCurSel 2802)];
_pid = getPlayerUID player;
_unit = player;
_spawntext = localize "STR_Garage_spawn_Success";
if (isNil "_vehicle") exitWith {
    hint localize "STR_Garage_Selection_Error"
};
if (!isClass(missionConfigFile >> "LifeCfgVehicles" >> _vehicleLife)) then {
    _vehicleLife = "Default";
    diag_log format["%1: LifeCfgVehicles class doesn't exist", _vehicle];
};
_price = M_CONFIG(getNumber, "LifeCfgVehicles", _vehicleLife, "price");
_FourriereMultipler = getNumber(missionConfigFile >> "Max_Settings_Fourriere" >> "price_unimpound");
switch (playerSide) do {
case civilian:
    {
        _purchasePrice = _price * LIFE_SETTINGS(getNumber, "vehicle_purchase_multiplier_CIVILIAN");
    };
case west:
    {
        _purchasePrice = _price * LIFE_SETTINGS(getNumber, "vehicle_purchase_multiplier_COP");
    };
case independent:
    {
        _purchasePrice = _price * LIFE_SETTINGS(getNumber, "vehicle_purchase_multiplier_MEDIC");
    };
}; _price = _purchasePrice * _FourriereMultipler;
if (! (_price isEqualType 0) || _price < 1) then {
    _price = 500;
};
if (BANK < _price) exitWith {
    hint format[(localize "STR_Garage_CashError"), [_price] call life_fnc_numberText];
};
if (life_fourriere_sp isEqualType[]) then {
    [_vid, _pid, (life_fourriere_sp select 0), _unit, _price, (life_fourriere_sp select 1), _spawntext] remoteExec["TON_fnc_spawnVehicle", RSERV];
} else {
    [_vid, _pid, (getMarkerPos life_fourriere_sp), _unit, _price, markerDir life_fourriere_sp, _spawntext] remoteExec["TON_fnc_spawnVehicle", RSERV];
};
hint localize "STR_Garage_SpawningVeh";
BANK = BANK - _price;
[1] call SOCK_fnc_updatePartial;
closeDialog 0;