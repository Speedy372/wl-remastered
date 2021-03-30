#include "script_macros.hpp"
private["_cop", "_player", "_vehicle"];
_cop = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
_player = player;
_vehicle = vehicle player;
if (isNull _cop) exitWith {};
[] spawn {
    private "_time";
    for "_i"
    from 0 to 1 step 0 do {
        _time = time;
        waitUntil {
            (time - _time) > (20 * 60)
        };
        if (! (player getVariable["nosze", FALSE])) exitWith {};
        if (! ([independent, getPos player, 30] call life_fnc_nearUnits) && (player getVariable["nosze", FALSE]) && isNull objectParent player) exitWith {
            player setVariable["nosze", FALSE, TRUE];
            player setVariable["Escorting", FALSE, TRUE];
            player setVariable["transporting", false, true];
            detach player;
        };
    };
};
while {
    player getVariable "nosze"
}
do {
    if (isNull objectParent player) then {
        player playMove "AinjPpneMstpSnonWrflDnon";
    };
    _state = vehicle player;
    waitUntil {
        animationState player != "AinjPpneMstpSnonWrflDnon" || !(player getVariable "nosze") || vehicle player != _state
    };
    if (!alive player) exitWith {
        player setVariable["nosze", false, true];
        player setVariable["Escorting", false, true];
        player setVariable["transporting", false, true];
        detach _player;
    };
    if (!alive _cop) then {
        player setVariable["Escorting", false, true];
        detach player;
    };
    if ((vehicle player != player) && (vehicle player != _vehicle)) then {
        _vehicle = vehicle player;
    };
}; if (alive player) then {
    player switchMove "AmovPercMstpSlowWrflDnon_SaluteIn";
    player setVariable["Escorting", false, true];
    player setVariable["transporting", false, true];
    detach player;
};