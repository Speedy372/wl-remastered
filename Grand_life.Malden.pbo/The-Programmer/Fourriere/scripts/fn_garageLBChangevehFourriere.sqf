#include "The-Programmer\script_macros.hpp"
disableSerialization;
private["_control", "_index", "_className", "_classNameLife", "_dataArr", "_retrievePrice", "_vehicle_four_multiplier", "_price", "_purchasePrice"];
_control = _this select 0;
_index = _this select 1;
_dataArr = CONTROL_DATAI(_control, _index);
_dataArr = call compile format["%1", _dataArr];
_className = (_dataArr select 0);
_classNameLife = _className;
if (!isClass(missionConfigFile >> "LifeCfgVehicles" >> _classNameLife)) then {
    _classNameLife = "Default";
    diag_log format["%1: LifeCfgVehicles class doesn't exist", _className];
};
_price = M_CONFIG(getNumber, "LifeCfgVehicles", _classNameLife, "price");
_vehicle_four_multiplier = getNumber(missionConfigFile >> "Max_Settings_Fourriere" >> "price_unimpound");
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
}; _retrievePrice = _purchasePrice * _vehicle_four_multiplier;
if (! (_retrievePrice isEqualType 0) || _retrievePrice < 1) then {
    _retrievePrice = 500;
};
(CONTROL(2800, 2803)) ctrlSetStructuredText parseText format[(localize "STR_Shop_Veh_UI_RetrievalP") + " <t color='#32A832'>$%1</t><br/>
    ", [_retrievePrice] call life_fnc_numberText];
ctrlShow[2803, true];
ctrlShow[2830, true];