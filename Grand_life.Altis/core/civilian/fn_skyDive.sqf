#include "script_macros.hpp"
private["_post", "_num", "_color", "_action", "_price", "_smoke1", "_smoke2", "_light", "_flare1", "_flare2", "_previousVol", "_i", "_camera", "_heli", "_jumpers", "_post", "_smokeOn"];
_post = _this select 0;
if (playerSide != civilian) exitWith {
    hint "Nie można skakać jeśli jesteś na służbie.";
};
_price = 15000;
if (CASH < _price) exitWith {
    hint "Nie masz wystarczająco pieniędzy";
};
_action = ["Uwaga, skok kosztuje 15000Tyś kontynuować?", "Skok", "Tak", "Nie"] call BIS_fnc_guiMessage;
if (_action) then {
    _jumpers = _post getVariable["jumpers", []];
    _jumpers pushBack getPlayerUID player;
    _post setVariable["jumpers", _jumpers, true];
    player allowDamage false;
    disableUserInput true;
    life_skydive = true;
    CASH = CASH - _price;
    [] call life_fnc_hudSetup;
    "colorCorrections"
    ppEffectAdjust[1, 1, 0, [0, 0, 0, 0], [1, 1, 1, 1], [0, 0, 0, 0]];
    "colorCorrections"
    ppEffectCommit 0;
    "colorCorrections"
    ppEffectEnable true;
    "colorCorrections"
    ppEffectAdjust[1, 1, 0, [0, 0, 0, 0], [0, 0, 0, 0], [1, 1, 1, 1]];
    "colorCorrections"
    ppEffectCommit 3;
    preloadCamera[position player select 0, position player select 1, 1500];
    life_oldBackpack = backpack player;
    life_oldBackpackItems = backpackItems player;
    uiSleep 0.5;
    removeBackpack player;
    uiSleep 3.5;
    _heli = _post getVariable["heli", objNull];
    if (isNull _heli) then {
        _heli = createVehicle["B_Heli_Transport_03_unarmed_F", [0, 0, 1500], [], 0, "FLY"];
        _heli allowDamage false;
        _heli setPos[position player select 0, position player select 1, 1500];
        _post setVariable["heli", _heli, true];
        createVehicleCrew _heli;
        _heli disableAI "MOVE";
        _heli animateDoor['Door_R_source', 1];
        _heli animateDoor['Door_L_source', 1];
        _heli animateDoor['Door_rear_source', 1];
    };
    showCinemaBorder true;
    _camera = "camera"
    camCreate[(position _heli select 0) + 250 - floor(random 500), (position _heli select 1) + 250 - floor(random 500), (position _heli select 2) + 300];
    _camera cameraEffect["internal", "back"];
    _camera camSetTarget player;
    _camera camSetFOV 2.000;
    _camera camCommit 0;
    uiSleep 0.5;
    player moveInCargo _heli;
    "colorCorrections"
    ppEffectAdjust[1, 1, 0, [0, 0, 0, 0], [1, 1, 1, 1], [0, 0, 0, 0]];
    "colorCorrections"
    ppEffectCommit 2;
    _camera camSetRelPos[10, -10, 2];
    _camera camCommit 5;
    uiSleep 5;
    "colorCorrections"
    ppEffectEnable false;
    player action["getOut", _heli];
    _camera camSetRelPos[0, 10, 2];
    _camera camCommit 2;
    player addBackpack "B_Parachute";
    uiSleep 4;
    disableUserInput false;
    _camera cameraEffect["terminate", "back"];
    camDestroy _camera;
    waitUntil {
        (vehicle player != player || isTouchingGround player)
    };
    if (isTouchingGround player) then {
        _smokeOn = false;
        player playMoveNow "AinvPknlMstpSnonWrflDnon_medic1";
        player playActionNow "stop";
    } else {
        _smokeOn = true;
        _num = floor(random 6);
        _color =
        switch (_num) do {
        case 0:
            {
                ["SmokeShell", "SmokeShellRed", "F_20mm_White"];
            };
        case 1:
            {
                ["SmokeShellPurple", "SmokeShellYellow", "F_20mm_White"];
            };
        case 2:
            {
                ["SmokeShellRed", "SmokeShellBlue", "F_20mm_Red"];
            };
        case 3:
            {
                ["SmokeShellBlue", "SmokeShellYellow", "F_20mm_Yellow"];
            };
        case 4:
            {
                ["SmokeShellOrange", "SmokeShellBlue", "F_20mm_Red"];
            };
        case 5:
            {
                ["SmokeShellYellow", "SmokeShellRed", "F_20mm_Yellow"];
            };
        }; if (sunOrMoon < 0.7) then {
            _light = true;
            _flare1 = (_color select 2) createVehicle position player;
            _flare1 attachTo[vehicle player, [0, -0.1, 1.75]];
        } else {
            _light = false;
        };
        _smoke1 = (_color select 0) createVehicle position player;
        _smoke1 attachTo[vehicle player, [-0.15, -0.1, 1.75]];
        uiSleep 4;
        _smoke2 = (_color select 1) createVehicle position player;
        _smoke2 attachTo[vehicle player, [0.15, -0.1, 1.75]];
        if (_light) then {
            _flare2 = (_color select 2) createVehicle position player;
            _flare2 attachTo[vehicle player, [0, -0.1, 1.75]];
        };
    };
    while { ! (isTouchingGround player)
    }
    do {
        if (isNull _smoke1) then {
            _smoke1 = (_color select 0) createVehicle position player;
            _smoke1 attachTo[vehicle player, [-0.15, -0.1, 1.75]];
        };
        if (isNull _smoke2) then {
            _smoke2 = (_color select 1) createVehicle position player;
            _smoke2 attachTo[vehicle player, [0.15, -0.1, 1.75]];
        };
        if (_light) then {
            if (isNull _flare1) then {
                _flare1 = (_color select 2) createvehicle(position player);
                _flare1 attachTo[vehicle player, [0, -0.1, 1.75]];
            };
            if (isNull _flare2) then {
                _flare2 = (_color select 2) createvehicle(position player);
                _flare2 attachTo[vehicle player, [0, -0.1, 1.75]];
            };
        };
        uiSleep 0.1;
    }; if (_smokeOn) then {
        if (! (isNull _smoke1)) then {
            deleteVehicle _smoke1;
        };
        if (! (isNull _smoke2)) then {
            deleteVehicle _smoke2;
        };
        if (_light) then {
            if (! (isNull _flare1)) then {
                deleteVehicle _flare1;
            };
            if (! (isNull _flare2)) then {
                deleteVehicle _flare2;
            };
        };
    };
    player allowDamage true;
    life_skydive = false;
    player setPos(position player);
    5 fadeMusic 0;
    uiSleep 2;
    if (alive player) then {
        removeBackpack player;
        if (life_oldBackpack != "") then {
            player addBackpack life_oldBackpack;
            clearAllItemsFromBackpack player;
            if (count life_oldBackpackItems > 0) then {
                {
                    [_x, true, true] call life_fnc_handleItem;
                }
                foreach life_oldBackpackItems;
            };
        };
    };
    uiSleep 4;
    0 fadeMusic 1;
    _jumpers = _post getVariable["jumpers", []];
    _jumpers = _jumpers - [getPlayerUID player];
    _post setVariable["jumpers", _jumpers, true];
    if (count _jumpers isEqualTo 0) then {
        {
            _heli deleteVehicleCrew _x
        }
        forEach crew _heli;
        deleteVehicle _heli;
    };
} else {
    hint "Skok odwołany może następnym razem?";
};