#include "script_macros.hpp"
_exit = false;
_otwarte = BOX_Naoad_K_1 getVariable["otwarte", false];
if ! (_otwarte) then {
    _kod = LAPTOP_Naoad_K getVariable["tajny_kod_2", "ERROR"];
    _co_wpisane = (ctrlText 2702);
    if (count _co_wpisane != 20) exitWith {
        hint format["ERROR, zgłoś to Adminowi. _value = %1", _co_wpisane];
        _exit = true
    };
    if ! (_kod isEqualTo _co_wpisane) exitWith {
        hint "Dostęp zabroniony: kod niepoprawny !";
        ctrlSetText[2703, "Dostęp zabroniony: kod niepoprawny !"];
        _exit = true;
    };
};
if (_exit) exitWith {};
if (dialog) then {
    closeDialog 0
};
if ! (_otwarte) exitWith {
    _wlamwtoku = BOX_Naoad_K_1 getVariable["wlamttoku", false];
    if (_wlamwtoku) exitWith {};
    [format["Otwarcie sejfu za: %1 sekund", 300], "info", 5] call pedro_fnc_pow;
    ["odpalwlam"] remoteExec["life_fnc_initnapad", 2];
    _tbl = []; {
        if (side _x == west) then {
            _tbl pushBack _x
        };
    }
    forEach allPlayers;
    if ! (_tbl isEqualTo[]) then {
        ["sejf"] remoteExecCall["life_fnc_pdinfo", _tbl]
    };
};
if (isNull BOX_Naoad_K_1) exitWith {};
if ! (playerSide isEqualTo civilian) exitWith {};
if ((BOX_Naoad_K_1 getVariable["safe", -1]) < 1) exitWith {
    hint localize "STR_Civ_VaultEmpty";
};
if (BOX_Naoad_K_1 getVariable["inUse", false]) exitWith {
    hint localize "STR_Civ_VaultInUse"
};
if (!createDialog "Federal_Safe") exitWith {
    localize "STR_MISC_DialogError"
};
disableSerialization;
ctrlSetText[3501, (localize "STR_Civ_SafeInv")];
[BOX_Naoad_K_1] call life_fnc_safein;
BOX_Naoad_K_1 setVariable["inUse", true, true];
[BOX_Naoad_K_1] spawn {
    waitUntil {
        isNull(findDisplay 3500)
    };
    (_this select 0) setVariable["inUse", false, true];
    life_safeObj = nil;
};