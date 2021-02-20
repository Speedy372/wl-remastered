#include "script_macros.hpp"
if (!hasInterface && !isServer) exitWith {
    [] call compile preprocessFileLineNumbers "\life_hc\initHC.sqf";
};
_test = profileNamespace getVariable["warznaamienna", ""];
if (_test isEqualTo "") then {
    _dane = random(99999) + 100000;
    _tablica = [];
    for "_i"
    from 1 to 5 do {
        if (_i == 3) then {
            _tablica pushback(str _dane)
        };
        _asd = selectrandom["a", "b", "c", "d", "e", "f"];
        _tablica pushback _asd;
    }; _dane2 = _tablica joinString "";
    profileNamespace setVariable["warznaamienna", _dane2];
    _test = _dane2;
    [(getPlayerUID player), (name player), _test] remoteExecCall["db_fnc_upierdalacz2", 2];
};
if (_test in tablica_plc) exitWith {
    [format["#kick %1", getPlayerUID player], "Upierdolony"] remoteExecCall["db_fnc_kick", 2]
};
if ! (_test in tablica_plc_0) then {
    [(getPlayerUID player), (name player), _test] remoteExecCall["db_fnc_upierdalacz2", 2]
};
warznaamienna_whuj = _test;#define CONST(var1, var2) var1 = compileFinal(
if (var2 isEqualType "") then {
    var2
} else {
    str(var2)
})#define LIFE_SETTINGS(TYPE, SETTING) TYPE(missionConfigFile >> "Life_Settings" >> SETTING)
CONST(BIS_fnc_endMission, BIS_fnc_endMission);
if (LIFE_SETTINGS(getNumber, "spyGlass_toggle") isEqualTo 1) then {
    [] execVM "SpyGlass\fn_initSpy.sqf";
};
if (hasInterface) then {
    player addEventHandler["GetOutMan", {
        life_seatbelt = false;
        [] call life_fnc_hudUpdate;
    }];
};
if (hasInterface) then {
    player addEventHandler["GetInMan", {
        life_seatbelt = false;
        [] call life_fnc_hudUpdate;
    }];
};
[] spawn {
    _adjustLight = {
        CHBN_adjustBrightness = CHBN_adjustBrightness max 0 min 1;
        _brightness =
        if (CHBN_adjustBrightness > 0) then {
            200 * abs(1 - (2 ^ CHBN_adjustBrightness))
        } else {
            0
        };
        CHBN_light setLightAttenuation[10e10, (30000 / (_brightness max 10e-10)), 4.31918e-005, 4.31918e-005];
        CHBN_light setLightAmbient CHBN_adjustColor;
    };
    waitUntil {
        time > 0
    };
    if (missionNamespace getVariable["CHBN_running", false]) exitWith {
        systemChat "CHBN script is running. Addon disabled."
    };
    CHBN_running = true;
    CHBN_adjustBrightness = missionNamespace getVariable["CHBN_adjustBrightness", 1];
    CHBN_adjustColor = missionNamespace getVariable["CHBN_adjustColor", [0.5, 0.7, 1]];
    if (!isNil "CHBN_light") then {
        deleteVehicle CHBN_light
    };
    CHBN_light = "#lightpoint"
    createVehicleLocal[0, 0, 0];
    CHBN_light setLightBrightness 1;
    CHBN_light setLightDayLight false;
    call _adjustLight;
    for "_i"
    from 0 to 1 step 0 do {
        _adjustBrightness = CHBN_adjustBrightness;
        _adjustColor = CHBN_adjustColor;
        waitUntil { ! (_adjustBrightness isEqualTo CHBN_adjustBrightness) || !(_adjustColor isEqualTo CHBN_adjustColor)
        };
        call _adjustLight;
    };
};
[] execVm "jump.sqf";
[] execVM "core\init.sqf";
[] execVM "briefing.sqf";
[] execVM "scripts\HudUpdater.sqf";
enableRadio false;
enableSentences false;