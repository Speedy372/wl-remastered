#include "script_macros.hpp"
private["_smoke"];
life_smoking = true;
_unit = player;
_int = 0.1;
_smokecount = 0;
life_num = 5400;
player setCustomAimCoef 0.35;
player setAnimSpeedCoef 1.1;
player enableFatigue false;
[] call life_fnc_hudUpdate;
while {
    life_num > 0
}
do {
    _source = "logic"
    createVehicleLocal(getpos _unit);
    _smoke = "#particlesource"
    createVehicle getpos _source;
    _smoke setParticleParams[["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 13, 0], "", "Billboard", 0.5, 0.5, [0, 0, 0], [0, 0.2, -0.2], 1, 1.275, 1, 0.2, [0, 0.2, 0], [[0.4, 0.4, 1, _int], [1, 1, 1, 0.01], [1, 1, 1, 0]], [1000], 1, 0.04, "", "", _source];
    _smoke setParticleRandom[2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
    _smoke setDropInterval 0.001;
    _source attachto[_unit, [0, 0.15, 0], "neck"];
    uiSleep 1;
    deletevehicle _source;
    uiSleep 15;
    life_num = life_num - 16;
    if (deadPlayer) exitWith {
        life_num = 0;
    };
}; player enableFatigue false;
["Ahh, papierosek..", "info", 5] call pedro_fnc_pow;
player setAnimSpeedCoef 1;
player setCustomAimCoef 1;
[] call life_fnc_hudUpdate;
life_smoking = false;