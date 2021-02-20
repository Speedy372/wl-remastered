scriptName "fn_clientSendUpdateToServer";#define __filename "fn_clientSendUpdateToServer.sqf"
params[["_which", -1, [0]]];
if (_which isEqualTo - 1) exitWith {};
private _toSend =
switch (_which) do {
case 0:
    {
        life_currentExpLevel
    };
case 1:
    {
        life_currentExp
    };
case 2:
    {
        life_currentPerkPoints
    };
case 3:
    {
        life_currentExpPerks
    };
}; diag_log "fn_clientSendUpdateToServer.sqf Sending to server";
[_which, _toSend, getPlayerUID player] remoteExecCall["mav_ttm_fnc_updateDatabaseEntry", 2];