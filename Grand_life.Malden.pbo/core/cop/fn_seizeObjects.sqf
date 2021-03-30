_clear = nearestObjects[player, ["weaponholder"], 3];
_clear = _clear + nearestObjects[player, ["groundWeaponHolder"], 3];
_destroyed = 0;
money_log = format["@%1@%2@%3@%4@%5", "SEIZEGROUND", name player, getPlayerUID player, _clear, position player];
[money_log, "CopLog"] remoteExecCall["A3Log", 2];
for "_i"
from 0 to count _clear - 1 do {
    _destroyed = _destroyed + 1;
    deleteVehicle(_clear select _i);
    uiSleep 0.056;
}; _destroyed = _destroyed - 1;
titleText[format["Usunąłeś %1 przedmioty.", _destroyed], "PLAIN"];