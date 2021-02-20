#include "script_macros.hpp"
private["_target", "_revivable", "_targetName", "_ui", "_progressBar", "_titleText", "_cP", "_title", "_reviveCost"];
_target = param[0, objNull, [objNull]];
if (isNull _target) exitWith {};
_reviveCost = LIFE_SETTINGS(getNumber, "revive_fee");
_revivable = _target getVariable["Revive", false];
if (_revivable) exitWith {};
if (_target getVariable["Reviving", objNull] == player) exitWith {
    hint localize "STR_Medic_AlreadyReviving";
};
if (player distance _target > 5) exitWith {};
_targetName = _target getVariable["name", "Unknown"];
_title = format[localize "STR_Medic_Progress", _targetName];
life_action_inUse = true;
_target setVariable["Reviving", player, true];
disableSerialization;
"progressBar"
cutRsc["life_progress", "PLAIN"];
_ui = uiNamespace getVariable["life_progress", displayNull];
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...", "%", _title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;
[player, "defib"] remoteExec["life_fnc_say3D", RANY];
for "_i"
from 0 to 1 step 0 do {
    if (animationState player != "AinvPknlMstpSnonWnonDr_medic0") then {
        [player, "AinvPknlMstpSnonWnonDr_medic0"] remoteExecCall["life_fnc_animSync", RCLIENT];
        player playMoveNow "AinvPknlMstpSnonWnonDr_medic0";
    };
    uiSleep.15;
    _cP = _cP + .02;
    waitUntil {
        inputAction "reloadMagazine" > 0
    };
    _progressBar progressSetPosition _cP;
    _titleText ctrlSetText format["%3 (%1%2)...", round(_cP * 100), "%", _title];
    if (_cP >= 1 || !alive player) exitWith {};
    if (life_istazed) exitWith {};
    if (life_isknocked) exitWith {};
    if (life_interrupted) exitWith {};
    if (player getVariable["restrained", false]) exitWith {};
    if (player distance _target > 4) exitWith {
        _badDistance = true;
    };
    if (_target getVariable["Revive", false]) exitWith {};
    if (_target getVariable["Reviving", objNull] != player) exitWith {};
};
"progressBar" cutText ["", "PLAIN"];
player playActionNow "stop";
if (_target getVariable["Reviving", objNull] != player) exitWith {
    hint localize "STR_Medic_AlreadyReviving";
    life_action_inUse = false;
};
_target setVariable["Reviving", NIL, true];
if (!alive player || life_istazed || life_isknocked) exitWith {
    life_action_inUse = false;
};
if (_target getVariable["Revive", false]) exitWith {
    hint localize "STR_Medic_RevivedRespawned";
    life_action_inUse = false;
};
if (player getVariable["restrained", false]) exitWith {
    life_action_inUse = false;
};
if (!isNil "_badDistance") exitWith {
    titleText[localize "STR_Medic_TooFar", "PLAIN"];
    life_action_inUse = false;
};
if (life_interrupted) exitWith {
    life_interrupted = false;
    titleText[localize "STR_NOTF_ActionCancel", "PLAIN"];
    life_action_inUse = false;
};
life_action_inUse = false;
_target setVariable["Revive", true, true];
_target setVariable["Revive2", true, true];
[profileName] remoteExecCall["life_fnc_revived", _target];
if (playerSide isEqualTo independent) then {
    titleText[format[localize "STR_Medic_RevivePayReceive", _targetName, [_reviveCost] call life_fnc_numberText], "PLAIN"];
    BANK = BANK + _reviveCost;
    [1] call SOCK_fnc_updatePartial;
};
sleep.6;
player reveal _target;
["revivegracz"] spawn mav_ttm_fnc_addExp;
[vehicle player, "win"] remoteExec["life_fnc_say3D", RANY];
_log = format["%1, %2 podniosl %3 %4", name player, getPlayerUID player, _targetName, getPlayerUID _target];
[_log, "podnoszenie"] remoteExecCall["A3Log", 2];