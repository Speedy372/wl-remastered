#include "script_macros.hpp"
params[["_robber", objNull, [objNull]]];
if (isNull _robber) exitWith {};
if (!life_use_atm) exitWith {
    hint localize "STR_NOTF_recentlyRobbedBank2";
    ctrlShow[2001, true];
};
if (CASH > 0) then {
    [CASH, player, _robber] remoteExecCall["life_fnc_robReceive", _robber];
    if (life_HC_isActive) then {
        [getPlayerUID _robber, _robber getVariable["realname", name _robber], "211"] remoteExecCall["HC_fnc_wantedAdd", HC_Life];
    } else {
        [getPlayerUID _robber, _robber getVariable["realname", name _robber], "211"] remoteExecCall["life_fnc_wantedAdd", RSERV];
    };
    [1, "STR_NOTF_Robbed", true, [_robber getVariable["realname", name _robber], profileName, [CASH] call life_fnc_numberText]] remoteExecCall["life_fnc_broadcast", RCLIENT];
    CASH = 0;
    [0] call SOCK_fnc_updatePartial;
} else {
    [2, "STR_NOTF_RobFail", true, [profileName]] remoteExecCall["life_fnc_broadcast", _robber];
};