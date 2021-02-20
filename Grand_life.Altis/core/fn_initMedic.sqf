#include "script_macros.hpp"
waitUntil { ! (isNull(findDisplay 46))
};
if ((FETCH_CONST(life_medicLevel)) < 1 && (FETCH_CONST(life_adminlevel) isEqualTo 0)) exitWith {
    ["Notwhitelisted", false, true] call BIS_fnc_endMission;
    sleep 35;
};
[] call cat_spawn_fnc_spawnMenu;
waitUntil { ! isNull(findDisplay 38500)
};
waitUntil {
    isNull(findDisplay 38500)
};
player setVariable["rank", (FETCH_CONST(life_medicLevel)), true];
[] call life_fnc_placeablesInit;
[] call life_fnc_playerSkins;
[] call life_fnc_initPayChecks;