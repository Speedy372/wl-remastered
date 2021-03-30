if (!alive player || dialog) exitWith {};
createDialog "nanoEMPConsole";
disableSerialization;
waitUntil { ! isNull(findDisplay 3494)
};
[] spawn life_fnc_scanVehicles;