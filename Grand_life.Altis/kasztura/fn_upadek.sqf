while {
    true
}
do {
    _vel = (velocity player)#2;
    _time = time;
    if (_vel >= 30) then {
        waitUntil {
            (isTouchingGround player) || (_time + 5 > time)
        };
        if ((isTouchingGround player) && (alive player)) then {
            [player, true] spawn life_fnc_neptyk
        };
    };
    uisleep 0.2;
};