scriptName "fn_initTuningClient";#define __filename "fn_initTuningClient.sqf" [] spawn {
    waitUntil { ! isNull player
    };
    waitUntil { ! isNull(findDisplay 46)
    };
    sleep 20;
    diag_log "fn_initTuningClient Aufruf!";
    mav_tuning_light_toofast = -999;
    mav_tuning_nitroCooldownShort = 0;
    mav_tuning_nitroActive = false;
    mav_tuning_nitro_handler = (findDisplay 46) displayAddEventHandler["KeyDown", {
        _handled = false;
        if (vehicle player != player AND(driver vehicle player) == player) then {
            if ((_this select 1) == 17 AND(vehicle player != player)) then {
                if ((speed vehicle player) < 100 && ((vehicle player) isKindOf "LandVehicle")) then {
                    if (diag_tickTime - mav_tuning_nitroCooldownShort >= 0.2) then {
                        mav_tuning_nitroCooldownShort = diag_tickTime;
                        if (mav_tuning_nitroActive) then {
                            _vehicle = vehicle player;
                            _vel = velocity _vehicle;
                            _dir = direction _vehicle;
                            _speed = 0.75;
                            _vehicle setVelocity[(_vel select 0) + (sin _dir * _speed), (_vel select 1) + (cos _dir * _speed), (_vel select 2)];
                        };
                    };
                };
            };
            if ((_this select 2) AND(_this select 1) == 36) then {
                if ! ((((vehicle player) getVariable["mav_tuning", [0, 0, 0, 0, [-1, -1, -1]]]) select 4) isEqualTo[-1, -1, -1]) then {
                    if ((diag_tickTime - mav_tuning_light_toofast) < 1) exitWith {};
                    mav_tuning_light_toofast = diag_tickTime;
                    if (isNull((vehicle player) getVariable["mav_tuning_light", objNull])) then {
                        [(vehicle player)] remoteExec["mav_tuning_fnc_enableLight"];
                        ["<t size='1' align='center' shadow='2' font='PuristaMedium' color='#12FE00'>Neony włączone</t>"] spawn mav_tuning_fnc_displayText;
                        _handled = true;
                    } else {
                        [(vehicle player)] remoteExec["mav_tuning_fnc_disableLight"];
                        ["<t size='1' align='center' shadow='2' font='PuristaMedium' color='#ff0000'>Neony wyłączone</t>"] spawn mav_tuning_fnc_displayText;
                        _handled = true;
                    };
                };
            };
        };
        _handled
    }];
    _allVehicles = allMissionObjects "LandVehicle"; {
        if (!isNil {
            _x getVariable "vehicleID"
        }
        AND ! isNil {
            _x getVariable "mav_tuning"
        }) then {
            [_x getVariable "mav_tuning", _x, 3] spawn mav_tuning_fnc_loadVehicleModification;
        };
    }
    forEach _allVehicles; {
        _npcNameString = format["npc_tuning_%1", _x];
        _npc = missionNamespace getVariable[_npcNameString, objNull];
        if (!isNull _npc) then {
            player addAction["Tuning pojazdów", {
                [vehicle player] spawn mav_tuning_fnc_start
            },
            nil, 50, true, false, "", format["(%1 distance2d player) < 10", _npcNameString]];
        };
    }
    forEach[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    player addEventHandler["Respawn", {
        [] spawn {
            sleep 10; {
                _npcNameString = format["npc_tuning_%1", _x];
                _npc = missionNamespace getVariable[_npcNameString, objNull];
                if (!isNull _npc) then {
                    player addAction["Tuningshop betreten", {
                        [vehicle player] spawn mav_tuning_fnc_start
                    },
                    nil, 50, true, false, "", format["(%1 distance2d player) < 10", _npcNameString]];
                };
            }
            forEach[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
        };
    }];
};