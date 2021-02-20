#include "script_macros.hpp"
params[["_unit", objNull, [objNull]]];
if (isNull _unit) exitWith {};
private _dropWeapons = LIFE_SETTINGS(getNumber, "drop_weapons_onDeath");
private _loadout = getUnitLoadout _unit;
if (_dropWeapons isEqualTo 1) then {
    _loadout set[0, []];
    _loadout set[1, []];
    _loadout set[2, []];
};
_loadout;