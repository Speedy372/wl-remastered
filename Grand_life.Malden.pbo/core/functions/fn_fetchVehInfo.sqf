#include "script_macros.hpp"
private["_class", "_scope", "_picture", "_displayName", "_vehicleClass", "_side", "_faction", "_superClass", "_speed", "_armor", "_seats", "_hp", "_fuel"];
_class = [_this, 0, "", [""]] call BIS_fnc_param;
if (_class isEqualTo "") exitWith {
    []
};
if (!isClass(configFile >> "CfgVehicles" >> _class)) exitWith {
    []
};
_scope = -1;
_picture = "";
_displayName = "";
_vehicleClass = "";
_side = -1;
_faction = "";
_speed = 0;
_armor = 0;
_seats = 0;
_hp = 0;
_fuel = 0;
_scope = FETCH_CONFIG2(getNumber, "CfgVehicles", _class, "scope");
_picture = FETCH_CONFIG2(getText, "CfgVehicles", _class, "picture");
_displayName = FETCH_CONFIG2(getText, "CfgVehicles", _class, "displayName");
_vehicleClass = FETCH_CONFIG2(getText, "CfgVehicles", _class, "vehicleClass");
_side = FETCH_CONFIG2(getNumber, "CfgVehicles", _class, "side");
_faction = FETCH_CONFIG2(getText, "CfgVehicles", _class, "faction");
_superClass = BASE_CONFIG("CfgVehicles", _class);
_speed = FETCH_CONFIG2(getNumber, "CfgVehicles", _class, "maxSpeed");
_armor = FETCH_CONFIG2(getNumber, "CfgVehicles", _class, "armor");
_seats = FETCH_CONFIG2(getNumber, "CfgVehicles", _class, "transportSoldier");
_hp = FETCH_CONFIG2(getNumber, "CfgVehicles", _class, "enginePower");
_fuel = FETCH_CONFIG2(getNumber, "CfgVehicles", _class, "fuelCapacity");
[_class, _scope, _picture, _displayName, _vehicleClass, _side, _faction, _superClass, _speed, _armor, _seats, _hp, _fuel];