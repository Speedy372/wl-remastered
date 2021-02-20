#include "script_macros.hpp"
private["_control", "_price", "_nearVehicles", "_chopMultiplier", "_chopable", "_nearUnits"];
if (life_action_inUse) exitWith {
    hint localize "STR_NOTF_ActionInProc"
};
if (playerSide != civilian) exitWith {
    hint localize "STR_NOTF_notAllowed"
};
disableSerialization;
_chopable = LIFE_SETTINGS(getArray, "chopShop_vehicles");
_nearVehicles = nearestObjects[getMarkerPos(_this select 3), _chopable, 25];
_nearUnits = (nearestObjects[player, ["Man"], 5]) arrayIntersect playableUnits;
if (count _nearUnits > 1) exitWith {
    hint localize "STR_NOTF_PlayerNear"
};
life_chopShop = _this select 3;
if (count _nearVehicles isEqualTo 0) exitWith {
    titleText[localize "STR_Shop_NoVehNear", "PLAIN"];
};
if (! (createDialog "tablice")) exitWith {
    hint localize "STR_Shop_ChopShopError"
};
_control = CONTROL(39400, 39402); {
    if (alive _x) then {
        _className = typeOf _x;
        _classNameLife = _className;
        _displayName = getText(configFile >> "CfgVehicles" >> _className >> "displayName");
        _picture = getText(configFile >> "CfgVehicles" >> _className >> "picture");
        if (!isClass(missionConfigFile >> "LifeCfgVehicles" >> _classNameLife)) then {
            _classNameLife = "Default";
            diag_log format["%1: LifeCfgVehicles class doesn't exist", _className];
        };
        _price = M_CONFIG(getNumber, "LifeCfgVehicles", _classNameLife, "price");
        _chopMultiplier = LIFE_SETTINGS(getNumber, "vehicle_chopShop_multiplier");
        if (_className == "I_MRAP_03_F") then {
            _price = 2150000;
        };
        if (_className == "B_MRAP_01_F") then {
            _price = 2350000;
        };
        if (_className == "I_heli_light_03_unarmed_f") then {
            _price = 500000;
        };
        if (_className == "I_Heli_light_03_dynamicLoadout_F") then {
            _price = 500000;
        };
        _price = _price * _chopMultiplier * 0.15;
        if (!isNil "_price" && count crew _x isEqualTo 0) then {
            _control lbAdd _displayName;
            _control lbSetData[(lbSize _control) - 1, str(_forEachIndex)];
            _control lbSetPicture[(lbSize _control) - 1, _picture];
            _control lbSetValue[(lbSize _control) - 1, _price];
        };
    };
}
forEach _nearVehicles;