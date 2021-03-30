if (!alive player) exitWith {};
if ! (playerSide in [west, independent]) exitWith {
    hint "Nie możesz tego użyć!"
};
if (life_istazed OR life_knockOut) exitWith {};
if (player getVariable "Pannic") exitWith {
    hint "spierdalaj"
};
_pos = getpos player;
_name = profileName;
player setVariable["Pannic", true, true];
if (playerside == west) then {
    [_pos, _name, true] remoteExec["life_fnc_pannicbuttonMarker", west];
    ["dpanic", false] remoteExec["life_fnc_dispatch", west];
} else {
    [_pos, _name, true] remoteExec["life_fnc_pannicbuttonMarker", west];
    [_pos, _name, true] remoteExec["life_fnc_pannicbuttonMarker", independent];
    ["dpanic", false] remoteExec["life_fnc_dispatch", west];
    ["dpanic", false] remoteExec["life_fnc_dispatch", independent];
};
[player, "panicbutton"] spawn life_fnc_nearestSound;
[] spawn {
    sleep 100;
    player setVariable["Pannic", false, true];
};