#include "script_macros.hpp"
life_corpse setVariable["Revive", false, true];
life_corpse setVariable["Revive2", false, true];
[life_corpse, profileName] remoteExecCall["life_fnc_medicRequest", independent];
life_request_timer = true;
[] spawn {
    ((findDisplay 7300) displayCtrl 7303) ctrlEnable false;
    sleep(2 * 60);
    ((findDisplay 7300) displayCtrl 7303) ctrlEnable true;
};