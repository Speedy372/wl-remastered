closeDialog 0;
sleep 2;
enableCamShake true;
player setVariable["inDrink", true, true];
for "_i"
from 0 to 160 do {
    if (life_drink > 0.12) then {
        sleep 20;
        if (vehicle player != player) exitWith {};
        private "_rag";
        _rag = "Land_Can_V3_F"
        createVehicleLocal[0, 0, 0];
        _rag setMass 1e10;
        _rag attachTo[player, [0, 0, 0], "Spine3"];
        _rag setVelocity[0, 0, 6];
        player allowDamage false;
        detach _rag;
        0 = _rag spawn {
            deleteVehicle _this;
            player allowDamage true;
        };
        sleep 10;
    };
    if (life_drink != 0) then {
        life_drink = life_drink - 0.02;
    };