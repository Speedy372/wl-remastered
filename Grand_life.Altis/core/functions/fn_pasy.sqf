[] spawn {
    while {
        true
    }
    do {
        if (isNull objectParent player) then {
            if (life_seatwarn) then {
                life_seatwarn = false;
            };
            if (life_seatbelt) then {
                sleep 1;
                life_seatbelt = false;
            };
        };
        if (vehicle player != player && !(player getVariable["Escorting", false]) && !(player getVariable["restrained", false]) && (vehicle player isKindOf "LandVehicle")) then {
            if (speed vehicle player > 60 && !life_seatbelt) then {
                oldVehVelocity = velocity(vehicle player);
                Sleep 0.3;
                if (speed vehicle player < 4) then {
                    playSound "glassbreak";
                    moveOut player;
                    player setVelocity[(oldVehVelocity select 0) * 0.4, (oldVehVelocity select 1) * 0.4, ((oldVehVelocity select 2) * 0.4) + 5];
                    Sleep 2;
                    player switchmove "";
                    oldVehVelocity = nil;
                };
            } else {
                if (!life_seatwarn) then {
                    if (!life_seatwarn) then {
                        ["Pamietaj o pasach!", false] spawn domsg;
                    };
                    playSound "seatwarn";
                    life_seatwarn = true;
                };
            };
        };
    };
};