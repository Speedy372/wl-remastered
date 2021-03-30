#include "script_macros.hpp"
params[["_mode", true, [true]]];
if ((lbCurSel 2302) isEqualTo - 1) exitWith {
    hint localize "STR_Shop_Veh_DidntPick";
    closeDialog 0;
};
private _className = lbData[2302, (lbCurSel 2302)];
private _vIndex = lbValue[2302, (lbCurSel 2302)];
private _vehicleList = M_CONFIG(getArray, "CarShops", (life_veh_shop select 0), "vehicles");
private _shopSide = M_CONFIG(getText, "CarShops", (life_veh_shop select 0), "side");
private _classNameShop = (life_veh_shop select 0);
private _initalPrice = M_CONFIG(getNumber, "LifeCfgVehicles", _className, "price");
private "_buyMultiplier";
private "_rentMultiplier";
switch (playerSide) do {
case civilian:
    {
        _buyMultiplier = LIFE_SETTINGS(getNumber, "vehicle_purchase_multiplier_CIVILIAN");
        _rentMultiplier = LIFE_SETTINGS(getNumber, "vehicle_rental_multiplier_CIVILIAN");
    };
case west:
    {
        _buyMultiplier = LIFE_SETTINGS(getNumber, "vehicle_purchase_multiplier_COP");
        _rentMultiplier = LIFE_SETTINGS(getNumber, "vehicle_rental_multiplier_COP");
    };
case independent:
    {
        _buyMultiplier = LIFE_SETTINGS(getNumber, "vehicle_purchase_multiplier_MEDIC");
        _rentMultiplier = LIFE_SETTINGS(getNumber, "vehicle_rental_multiplier_MEDIC");
    };
case east:
    {
        _buyMultiplier = LIFE_SETTINGS(getNumber, "vehicle_purchase_multiplier_OPFOR");
        _rentMultiplier = LIFE_SETTINGS(getNumber, "vehicle_rental_multiplier_OPFOR");
    };
}; private "_purchasePrice";
if ((_classNameShop == "b_market_car") || (_classNameShop == "b_market_heli")) then {
    _buyMultiplier = 1;
    _purchasePrice = round(_initalPrice * _buyMultiplier);
} else {
    if (_mode) then {
        _purchasePrice = round(_initalPrice * _buyMultiplier);
    } else {
        _purchasePrice = round(_initalPrice * _rentMultiplier);
    };
    if ((call life_donator) > 0) then {
        if ((call life_donator) == 1) then {
            _purchasePrice = _purchasePrice * 0.95;
        };
        if ((call life_donator) == 2) then {
            _purchasePrice = _purchasePrice * 0.90;
        };
        if ((call life_donator) == 3) then {
            _purchasePrice = _purchasePrice * 0.85;
        };
    };
};
private _conditions = M_CONFIG(getText, "LifeCfgVehicles", _className, "conditions");
if ! ([_conditions] call life_fnc_levelCheck) exitWith {
    hint localize "STR_Shop_Veh_NoLicense";
};
private _colorIndex = lbValue[2304, (lbCurSel 2304)];
if ((_classNameShop == "b_market_car") || (_classNameShop == "b_market_heli")) then {
    kasztura_old_btc = gl_money_btc;
    if (_purchasePrice < 0) exitWith {
        closeDialog 0;
    };
    if (BTC < _purchasePrice) exitWith {
        hint format[localize "STR_Shop_Veh_NotEnough", [_purchasePrice - BTC] call life_fnc_numberText];
        closeDialog 0;
    };
    BTC = BTC - _purchasePrice;
    [] call life_fnc_btcupdate;
    [0] call SOCK_fnc_updatePartial;
    [format[localize "STR_Shop_Veh_Bought", getText(configFile >> "CfgVehicles" >> _className >> "displayName"), [_purchasePrice] call life_fnc_numberText], false] spawn domsg;
    _vehicle = createVehicle[_className, [0, 0, (round(random 2000) + 500)], [], 0, "NONE"];
    waitUntil { ! isNil "_vehicle" && { ! isNull _vehicle
        }
    };
    _vehicle allowDamage false;
    if (_mode) then {
        if ! (_className in LIFE_SETTINGS(getArray, "vehicleShop_rentalOnly")) then {
            if (life_HC_isActive) then {
                [(getPlayerUID player), playerSide, _vehicle, _colorIndex] remoteExecCall["HC_fnc_vehicleCreate", HC_Life];
            } else {
                [(getPlayerUID player), playerSide, _vehicle, _colorIndex] remoteExecCall["TON_fnc_vehicleCreate", RSERV];
            };
        };
    };
    if (LIFE_SETTINGS(getNumber, "player_advancedLog") isEqualTo 1) then {
        if (LIFE_SETTINGS(getNumber, "battlEye_friendlyLogging") isEqualTo 1) then {
            advanced_log = format[localize "STR_DL_AL_boughtVehicle_BEF", _className, [_purchasePrice] call life_fnc_numberText, [CASH] call life_fnc_numberText, [BANK] call life_fnc_numberText];
        } else {
            advanced_log = format[localize "STR_DL_AL_boughtVehicle", profileName, (getPlayerUID player), _className, [_purchasePrice] call life_fnc_numberText, [CASH] call life_fnc_numberText, [BANK] call life_fnc_numberText];
        };
        publicVariableServer "advanced_log";
    };
    ["VehiclePurchased"] spawn mav_ttm_fnc_addExp;
    ["Pojazd został dostarczony do twojego garażu", false] spawn domsg;
    closeDialog 0;
    _log = format["%1, %2 kupil %3 za %4", name player, getPlayerUID player, _className, [_purchasePrice] call life_fnc_numberText];
    [_log, "kupsppojazd"] remoteExecCall["A3Log", 2];
    true;
} else {
    if (_purchasePrice < 0) exitWith {
        closeDialog 0;
    };
    if (CASH < _purchasePrice) exitWith {
        hint format[localize "STR_Shop_Veh_NotEnough", [_purchasePrice - CASH] call life_fnc_numberText];
        closeDialog 0;
    };
    CASH = CASH - _purchasePrice;
    [0] call SOCK_fnc_updatePartial;
    [format[localize "STR_Shop_Veh_Bought", getText(configFile >> "CfgVehicles" >> _className >> "displayName"), [_purchasePrice] call life_fnc_numberText], false] spawn domsg;
    _vehicle = createVehicle[_className, [0, 0, (round(random 2000) + 500)], [], 0, "NONE"];
    waitUntil { ! isNil "_vehicle" && { ! isNull _vehicle
        }
    };
    _vehicle allowDamage false;
    if (_mode) then {
        if ! (_className in LIFE_SETTINGS(getArray, "vehicleShop_rentalOnly")) then {
            if (life_HC_isActive) then {
                [(getPlayerUID player), playerSide, _vehicle, _colorIndex] remoteExecCall["HC_fnc_vehicleCreate", HC_Life];
            } else {
                [(getPlayerUID player), playerSide, _vehicle, _colorIndex] remoteExecCall["TON_fnc_vehicleCreate", RSERV];
            };
        };
    };
    if (LIFE_SETTINGS(getNumber, "player_advancedLog") isEqualTo 1) then {
        if (LIFE_SETTINGS(getNumber, "battlEye_friendlyLogging") isEqualTo 1) then {
            advanced_log = format[localize "STR_DL_AL_boughtVehicle_BEF", _className, [_purchasePrice] call life_fnc_numberText, [CASH] call life_fnc_numberText, [BANK] call life_fnc_numberText];
        } else {
            advanced_log = format[localize "STR_DL_AL_boughtVehicle", profileName, (getPlayerUID player), _className, [_purchasePrice] call life_fnc_numberText, [CASH] call life_fnc_numberText, [BANK] call life_fnc_numberText];
        };
        publicVariableServer "advanced_log";
    };
    ["VehiclePurchased"] spawn mav_ttm_fnc_addExp;
    ["Pojazd został dostarczony do twojego garażu", false] spawn domsg;
    closeDialog 0;
    _log = format["%1, %2 kupil %3 za %4", name player, getPlayerUID player, _className, [_purchasePrice] call life_fnc_numberText];
    [_log, "kupsppojazd"] remoteExecCall["A3Log", 2];
    true;
};