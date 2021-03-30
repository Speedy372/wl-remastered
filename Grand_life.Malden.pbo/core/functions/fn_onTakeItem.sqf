#include "script_macros.hpp"
private["_unit", "_item", "_restrictedClothing", "_restrictedWeapons"];
_unit = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_container = [_this, 1, objNull, [objNull]] call BIS_fnc_param;
_item = [_this, 2, "", [""]] call BIS_fnc_param;
if (isNull _unit || _item isEqualTo "") exitWith {};
_restrictedClothing = LIFE_SETTINGS(getArray, "restricted_uniforms");
_restrictedWeapons = LIFE_SETTINGS(getArray, "restricted_weapons");
switch (playerSide) do {
case west:
    {
        if (_item in ["U_Rangemaster"]) then {
            [] call life_fnc_playerSkins;
        };
    };
case civilian:
    {
        if (LIFE_SETTINGS(getNumber, "restrict_clothingPickup") isEqualTo 1) then {
            if (_item in _restrictedClothing) then {
                [_item, false, false, false, false] call life_fnc_handleItem;
            };
        };
        if (LIFE_SETTINGS(getNumber, "restrict_weaponPickup") isEqualTo 1) then {
            if (_item in _restrictedWeapons) then {
                [_item, false, false, false, false] call life_fnc_handleItem;
            };
        };
        if (_item in ["U_C_Poloshirt_blue", "U_C_Poloshirt_burgundy", "U_C_Poloshirt_stripped", "U_C_Poloshirt_tricolour", "U_C_Poloshirt_salmon", "U_C_Poloshirt_redwhite", "U_C_Commoner1_1"]) then {
            [] call life_fnc_playerSkins;
        };
    };
case independent:
    {
        if (_item in ["U_Rangemaster"]) then {
            [] call life_fnc_playerSkins;
        };
        if (LIFE_SETTINGS(getNumber, "restrict_medic_weapons") isEqualTo 1) then {
            if (isClass(configFile >> "CfgWeapons" >> _item)) then {
                removeAllWeapons _unit;
            };
        };
    };
}; _log = format["%1 %2 wzial %3", name player, getPlayerUID player, _item];
[_log, "ibagaznik"] remoteExecCall["A3Log", 2];
if (_container in [Komenda_kavala, Komenda_Athira]) then {
    _log = format["%1 %2 wzial %3 z kontenera policyjnego", name player, getPlayerUID player, _item];
    [_log, "ibagaznik"] remoteExecCall["A3Log", 2];
};