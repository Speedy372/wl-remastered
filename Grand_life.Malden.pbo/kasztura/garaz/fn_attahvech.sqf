_pojazd = param[0, objNull];
if (isNull _pojazd) exitWith {
    hint "Pojazd isNull => zgoś problem Adminowi"
};
zataczowany_pojazd = true;
_pojazd setVariable["Vid_numer", _this#1];
_startpos = getpos player;
[_pojazd, _startpos] spawn {
    while { ! isNull(_this#0)
    }
    do {
        if (player distance(_this#1) > 20) exitWith {
            deleteVehicle(_this#0);
            hint "Odszedłeś zbyt daleko, pojazd usuniety"
        };
        if ! (alive player) exitWith {
            deleteVehicle(_this#0)
        };
        if (deadplayer) exitWith {
            deleteVehicle(_this#0)
        };
        if ! (zataczowany_pojazd) exitWith {};
    };
};