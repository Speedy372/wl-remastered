#include "script_macros.hpp"
_fnc_scriptName = "Player Synchronization";
if (isNil "life_session_time") then {
    life_session_time = false;
};
if (life_session_time) exitWith {
    hint localize "STR_Session_SyncdAlready";
};
[] call SOCK_fnc_updateRequest;
[] call life_fnc_playerSkins;
hint localize "STR_Session_SyncData";
[] spawn {
    life_session_time = true;
    sleep(2 * 60);
    life_session_time = false;
};