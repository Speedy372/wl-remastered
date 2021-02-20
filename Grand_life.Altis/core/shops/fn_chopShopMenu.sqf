#include "script_macros.hpp"
private["_control", "_price", "_nearVehicles", "_chopMultiplier", "_chopable", "_nearUnits"];
if (life_action_inUse) exitWith {
    hint localize "STR_NOTF_ActionInProc"
};
if ! (playerSide isEqualTo civilian) exitWith {
    hint localize "STR_NOTF_notAllowed"
};
_mazwazm = format["chopShop_nearVehicles_%1", _this#3];
if ! (isnil {
    missionNamespace getvariable _mazwazm
}) exitWith {};
disableSerialization;
_chopable = LIFE_SETTINGS(getArray, "chopShop_vehicles");
_nearVehicles = nearestObjects[getMarkerPos(_this select 3), _chopable, 25];
_nearUnits = (nearestObjects[player, ["CAManBase"], 5]) arrayIntersect playableUnits;
_nearVehiclesOK = [];
if (count _nearUnits > 1) exitWith {
    hint localize "STR_NOTF_PlayerNear"
};
life_chopShop = _this select 3;
if (count _nearVehicles isEqualTo 0) exitWith {
    titleText[localize "STR_Shop_NoVehNear", "PLAIN"];
};
if (! (createDialog "Chop_Shop")) exitWith {
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
        _price = _price * _chopMultiplier;
        if (!isNil "_price" && count crew _x isEqualTo 0) then {
            _control lbAdd _displayName;
            _control lbSetData[(lbSize _control) - 1, str(_forEachIndex)];
            _control lbSetPicture[(lbSize _control) - 1, _picture];
            _control lbSetValue[(lbSize _control) - 1, _price];
            _nearVehiclesOK pushback _x;
        };
    };
}
forEach _nearVehicles;
_mazwazm = format["chopShop_nearVehicles_%1", _this#3];
missionNamespace setvariable[_mazwazm, _nearVehiclesOK, true];