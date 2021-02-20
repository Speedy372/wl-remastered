#include "script_macros.hpp"
disableSerialization;
private _escSync = {
    disableSerialization;
    private _abortButton = CONTROL(49, 104);
    private _abortTime = LIFE_SETTINGS(getNumber, "escapeMenu_timer");
    private _timeStamp = time + _abortTime;
    waitUntil {
        _abortButton ctrlSetText format[localize "STR_NOTF_AbortESC", [(_timeStamp - time), "SS.MS"] call BIS_fnc_secondsToString];
        _abortButton ctrlCommit 0;
        if (dialog && {
            isNull(findDisplay 7300)
        }) then {
            closeDialog 0
        };
        round(_timeStamp - time) <= 0 || {
            isNull(findDisplay 49)
        }
    };
    _abortButton ctrlSetText localize "STR_DISP_INT_ABORT";
    _abortButton ctrlCommit 0;
    _abortButton ctrlEnable true;
};
private _canUseControls = {
    (playerSide isEqualTo west) || { ! ((player getVariable["restrained", false]) || {
            player getVariable["Escorting", false]
        } || {
            player getVariable["transporting", false]
        } || {
            life_is_arrested
        } || {
            life_istazed
        } || {
            life_isknocked
        })
    }
};
for "_i"
from 0 to 1 step 0 do {
    waitUntil { ! isNull(findDisplay 49)
    };
    [] spawn {
        private["_timer"];
        _timer = time;
        waitUntil {
            (time - _timer) > 10 || !isNull(findDisplay 602) || !isNull(findDisplay 2001)
        };
        if (!isNull(findDisplay 602) || !isNull(findDisplay 2001)) then {
            closeDialog 0;
        };
    };
    private _abortButton = CONTROL(49, 104);
    _abortButton buttonSetAction "call SOCK_fnc_updateRequest; [player] remoteExec [""TON_fnc_cleanupRequest"",2];";
    _abortButton ctrlSetEventHandler["ButtonClick", "[] spawn life_fnc_loggedOut; (findDisplay 49) closeDisplay 2; true"];
    private _respawnButton = CONTROL(49, 1010);
    private _fieldManual = CONTROL(49, 122);
    private _saveButton = CONTROL(49, 103);
    _saveButton ctrlSetText "";
    if (LIFE_SETTINGS(getNumber, "escapeMenu_displayExtras") isEqualTo 1) then {
        private _topButton = CONTROL(49, 2);
        _topButton ctrlEnable false;
        _topButton ctrlSetText format["%1", LIFE_SETTINGS(getText, "escapeMenu_displayText")];
        _saveButton ctrlEnable false;
        _saveButton ctrlSetText format["Player UID: %1", getPlayerUID player];
    };
    _display = findDisplay 49;
    _edit = _display ctrlCreate["RscStructuredText", -1];
    _edit ctrlSetPosition[-0.20, 0.58, 0.45, 0.38];
    _edit ctrlSetBackgroundColor[0, 0, 0, 0];
    _edit ctrlSetStructuredText parseText "<br /><a size='2' href='https://grandlife.pl/'>Forum !</a><br />";
    _edit ctrlCommit 0;
    _abortButton ctrlEnable false;
    _fieldManual ctrlEnable false;
    _fieldManual ctrlShow false;
    if (call _canUseControls) then {
        [] spawn _escSync;
    } else {
        _respawnButton ctrlEnable false;
    };
    waitUntil {
        isNull(findDisplay 49) || { ! alive player
        }
    };
    if (!isNull(findDisplay 49) && { ! alive player
    }) then {
        (findDisplay 49) closeDisplay 2;
    };
};