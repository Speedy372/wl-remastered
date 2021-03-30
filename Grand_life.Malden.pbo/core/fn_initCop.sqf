#include "script_macros.hpp"
waitUntil { ! (isNull(findDisplay 46))
};
if (life_blacklisted) exitWith {
    ["Blacklisted", false, true] call BIS_fnc_endMission;
    sleep 30;
};
if ((FETCH_CONST(life_coplevel) isEqualTo 0) && (FETCH_CONST(life_adminlevel) isEqualTo 0)) then {
    ["NotWhitelisted", false, true] call BIS_fnc_endMission;
    sleep 35;
};
if ((str(player) in ["cop_11", "cop_10"])) then {
    if (FETCH_CONST(life_coplevel) < 17) then {
        ["NotWhitelistedKomediant", false, true] call BIS_fnc_endMission;
        sleep 35;
    };
};
player setVariable["rank", (FETCH_CONST(life_coplevel)), true];
[] call cat_spawn_fnc_spawnMenu;
waitUntil { ! isNull(findDisplay 38500)
};
waitUntil {
    isNull(findDisplay 38500)
};
if (license_cop_aiad) then {
    player setVariable["aiad", 2, true];
};
if (license_cop_cswat) then {
    player setVariable["cswat", 2, true];
};
[] call life_fnc_placeablesInit;
[] call life_fnc_playerSkins;
[] call life_fnc_initPayChecks;