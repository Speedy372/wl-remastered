_pojazd = (attachedObjects player#0);
if (isNull _pojazd) exitWith {
    hint "Pojazd isNull => zgoś problem Adminowi"
};
if ! (zataczowany_pojazd) exitwith {};
_nearVehicles = nearestObjects[player, ["Car", "Air", "Ship"], 10];
if (count _nearVehicles > 1) exitWith {
    hint "Brak miejsca!"
};
detach _pojazd;
[_pojazd, false] remoteExecCall["life_fnc_allowdamage", 2];
zataczowany_pojazd = false;
[(_pojazd getVariable["Vid_numer", 0]), (getPlayerUID player), 1] remoteExec["life_fnc_vechstatus", 2];