_dmg = damage player;
if (_dmg < 0.1) exitWith {};
hint "Zaczynasz czuć się lepiej";
for "_i"
from 0 to 10 do {
    _dmg = _dmg - 0.1;
    if (_dmg < 0) then {
        _dmg = 0;
    };
    player setDamage _dmg;
    if (_dmg == 0) exitWith {};
    uiSleep 0.8;
};