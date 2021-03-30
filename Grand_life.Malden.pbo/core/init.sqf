#include "script_macros.hpp"
private["_handle", "_timeStamp", "_extDB_notLoaded"];
life_firstSpawn = true;
life_session_completed = false;
deadPlayer = false;
0 cutText[localize "STR_Init_ClientSetup", "BLACK FADED"];
0 cutFadeOut 9999999;
_timeStamp = diag_tickTime;
_extDB_notLoaded = "";
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "--------------------------------- Starting Altis Life Client Init ----------------------------------";
diag_log "------------------------------------------ Version 5.0.0 -------------------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
waitUntil { ! isNull player && player == player
};
[] call compile preprocessFileLineNumbers "core\clientValidator.sqf";
enableSentences false;
diag_log "::Life Client:: Initialization Variables";
[] call compile preprocessFileLineNumbers "core\configuration.sqf";
diag_log "::Life Client:: Variables initialized";
diag_log "::Life Client:: Setting up Eventhandlers";
[] call life_fnc_setupEVH;
diag_log "::Life Client:: Eventhandlers completed";
diag_log "::Life Client:: Setting up user actions";
[] call life_fnc_setupActions;
diag_log "::Life Client:: User actions completed";
diag_log "::Life Client:: Waiting for server functions to transfer..";
waitUntil {
    (!isNil "TON_fnc_clientGangLeader")
};
diag_log "::Life Client:: Received server functions.";
0 cutText[localize "STR_Init_ServerReady", "BLACK FADED"];
0 cutFadeOut 99999999;
diag_log "::Life Client:: Waiting for the server to be ready..";
waitUntil { ! isNil "life_server_isReady"
};
waitUntil { ! isNil "life_HC_isActive" && { ! isNil "life_server_extDB_notLoaded"
    }
};
if (life_server_extDB_notLoaded) exitWith {
    999999 cutText[localize "STR_Init_ExtdbFail", "BLACK FADED"];
    999999 cutFadeOut 99999999;
};
waitUntil {
    life_server_isReady
};
[] call SOCK_fnc_dataQuery;
waitUntil {
    life_session_completed
};
0 cutText[localize "STR_Init_ClientFinish", "BLACK FADED"];
0 cutFadeOut 9999999;
diag_log "::Life Client:: kozak";
[] spawn life_fnc_escInterupt;
[] spawn life_fnc_pasy;
switch (playerSide) do {
case west:
    {
        life_paycheck = LIFE_SETTINGS(getNumber, "paycheck_cop");
    };
case civilian:
    {
        life_paycheck = LIFE_SETTINGS(getNumber, "paycheck_civ");
    };
case independent:
    {
        life_paycheck = LIFE_SETTINGS(getNumber, "paycheck_med");
    };
}; switch (playerSide) do {
case west:
    {
        _handle = [] spawn life_fnc_initCop;
        waitUntil {
            scriptDone _handle
        };
    };
case civilian:
    {
        _handle = [] spawn life_fnc_initCiv;
        waitUntil {
            scriptDone _handle
        };
    };
case independent:
    {
        _handle = [] spawn life_fnc_initMedic;
        waitUntil {
            scriptDone _handle
        };
    };
}; player setVariable["restrained", false, true];
player setVariable["Escorting", false, true];
player setVariable["transporting", false, true];
player setVariable["playerSurrender", false, true];
diag_log "Past Settings Init";
[] execFSM "core\fsm\client.fsm";
diag_log "Executing client.fsm";
waitUntil { ! (isNull(findDisplay 46))
};
diag_log "Display 46 Found";
(findDisplay 46) displayAddEventHandler["KeyDown", "_this call life_fnc_keyHandler"];
[player, life_settings_enableSidechannel, playerSide] remoteExecCall["TON_fnc_manageSC", RSERV];
0 cutText["", "BLACK IN"];
[] call life_fnc_hudSetup;
LIFE_ID_PlayerTags = ["LIFE_PlayerTags", "onEachFrame", "life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
LIFE_ID_RevealObjects = ["LIFE_RevealObjects", "onEachFrame", "life_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;
player setVariable["steam64ID", getPlayerUID player];
player setVariable["realname", profileName, true];
life_fnc_moveIn = compileFinal "
    life_disable_getIn = false;
    player moveInCargo (_this select 0);
    life_disable_getOut = true;
";
life_fnc_RequestClientId = player;
publicVariableServer "life_fnc_RequestClientId";
[] spawn life_fnc_survival;
waitUntil {
    (missionNamespace getVariable["life_perksInitialized", true])
};
life_paycheck = life_paycheck * (missionNamespace getVariable["mav_ttm_var_paycheckMultiplier", 1]);
[] spawn {
    while {
        true
    }
    do {
        sleep 1200;
        sleep(random 30);
        if ("grandlife.pl" in profileNameSteam) then {
            BANK = BANK + 10000;
            systemChat "Dostałes 10000$ za posiadanie grandlife.pl w nicku na steam!"
        } else {
            systemChat "Przegapiłeś darmowe 10000$, jesli chcesz je zdobyc dopisz grandlife.pl (wielkość liter ma znaczenie) do twojego nicku na steam!"
        };
    };
};
[] spawn {
    for "_i"
    from 0 to 1 step 0 do {
        waitUntil {
            (!isNull(findDisplay 49)) && {
                (!isNull(findDisplay 602))
            }
        };
        (findDisplay 49) closeDisplay 2;
        (findDisplay 602) closeDisplay 2;
    };
};
CONSTVAR(life_paycheck);
if (LIFE_SETTINGS(getNumber, "enable_fatigue") isEqualTo 0) then {
    player enableFatigue false;
};
if (LIFE_SETTINGS(getNumber, "pump_service") isEqualTo 1) then {
    [] execVM "core\fn_setupStationService.sqf";
}; {
    _x params[["_chan", -1, [0]], ["_noText", "false", [""]], ["_noVoice", "false", [""]]];
    _noText = [false, true] select((["false", "true"] find toLower _noText) max 0);
    _noVoice = [false, true] select((["false", "true"] find toLower _noVoice) max 0);
    _chan enableChannel[!_noText, !_noVoice];
}
forEach getArray(missionConfigFile >> "disableChannels");
if (life_HC_isActive) then {
    [getPlayerUID player, player getVariable["realname", name player]] remoteExec["HC_fnc_wantedProfUpdate", HC_Life];
} else {
    [getPlayerUID player, player getVariable["realname", name player]] remoteExec["life_fnc_wantedProfUpdate", RSERV];
};
life_hideoutBuildings = []; {
    private _building = nearestBuilding getMarkerPos _x;
    life_hideoutBuildings pushBack _building;
    false
}
count["gang_area_1", "gang_area_2", "gang_area_3"];
0 call life_fnc_gang_initFunctions;
player setvariable["warznaamienna_whuj", warznaamienna_whuj, true];
warznaamienna_whuj = nil;
[] call life_fnc_donator;
diag_log "----------------------------------------------------------------------------------------------------";
diag_log format["               End of Altis Life Client Init :: Total Execution Time %1 seconds ", (diag_tickTime) - _timeStamp];
diag_log "----------------------------------------------------------------------------------------------------";