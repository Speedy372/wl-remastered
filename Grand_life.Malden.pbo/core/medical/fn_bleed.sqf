params["_newParam"];
if (deadPlayer) exitwith {};
if (isNil "bleedingEffect") then {
    bleedingEffect = 0;
};
if (bleedingEffect < 0) then {
    bleedingEffect = 0
};
if (bleedingEffect > 60) exitwith {};
if (bleedingEffect > 0) exitwith {
    bleedingEffect = bleedingEffect + _newParam;
};
bleedingEffect = _newParam;
while {
    bleedingEffect > 0
}
do {
    999 cutRsc["HUDbleed", "PLAIN"];
    [4] spawn life_fnc_hudeffects;
    uisleep 3;
    _dmg = damage player;
    _dmg = _dmg + 0.05;
    player setdamage _dmg;
    bleedingEffect = bleedingEffect - 3;
}; bleedingEffect = nil;