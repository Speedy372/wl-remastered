params[["_civ", Objnull, [Objnull]]];
if (isNull _civ) exitWith {};
[] spawn {
    private["_time"];
    while {
        true
    }
    do {
        uisleep 5;
        if (! (player getVariable["blindfolded", false])) exitWith {};
        if (! (player getVariable["tied", false])) exitwith {
            player setVariable["blindfolded", nil, true];
            hint "Udało ci się zdjąć opaskę!";
        };
        if (! ([east, getPos player, 50] call life_fnc_nearUnits) && !([civilian, getPos player, 50] call life_fnc_nearUnits) && (player getVariable["blindfolded", false]) && isNull objectParent player) exitWith {
            player setVariable["blindfolded", nil, true];
            "colorCorrections"
            ppEffectAdjust[1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1], [0, 0, 0, 0.0]];
            "colorCorrections"
            ppEffectCommit 3;
            "colorCorrections"
            ppEffectEnable false;
            hint "Udało ci się zdjąć opaskę!";
        };
    };
};
cutText["Zdjęto opaskę!", "PLAIN", 2];
cutText["Masz zasłonięte oczy.", "PLAIN", 0, true];
"colorCorrections"
ppEffectEnable true;
"colorCorrections"
ppEffectAdjust[1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.01], [0, 0, 0, 0.0]];
"colorCorrections"
ppEffectCommit 0.3;
removeHeadGear player;
player addheadgear "mgsr_headbag";
[] spawn {
    while {
        true
    }
    do {
        if (! (player getvariable["blindfolded", false])) exitWith {
            cutText["Nie masz już zasłoniętych oczu!", "PLAIN", 2];
            player setVariable["blindfolded", nil, true];
        };
        if (deadPlayer) exitWith {
            cutText["Nie masz już zasłoniętych oczu!", "PLAIN", 2];
            player setVariable["blindfolded", nil, true];
        };
        if (vehicle player != player) then {
            if (driver(vehicle player) == player) then {
                player action["eject", vehicle player]
            };
        };
        uiSleep 1;
        "colorCorrections"
        ppEffectEnable true;
        "colorCorrections"
        ppEffectAdjust[1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.01], [0, 0, 0, 0.0]];
        "colorCorrections"
        ppEffectCommit 0.3;
    };
    "colorCorrections" ppEffectAdjust [1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1], [0, 0, 0, 0.0]];
    "colorCorrections"
    ppEffectCommit 3;
    "colorCorrections"
    ppEffectEnable false;
    removeHeadGear player;
    if (!deadPlayer) then {
        player switchMove "AmovPercMstpSlowWrflDnon_SaluteIn";
        player setVariable["blindfolded", nil, true];
        detach player;
    };
};