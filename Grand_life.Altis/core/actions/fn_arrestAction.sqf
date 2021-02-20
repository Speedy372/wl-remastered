#include "script_macros.hpp"
private["_unit", "_id", "_time"];
_unit = param[0, objNull, [objNull]];
_time = param[1, 30];
if (isNull _unit) exitWith {};
if (isNil "_unit") exitWith {};
if (! (_unit isKindOf "Man")) exitWith {};
if (!isPlayer _unit) exitWith {};
if (! (_unit getVariable "restrained")) exitWith {};
if (! ((side _unit) in [civilian, independent, east])) exitWith {};
if (isNull _unit) exitWith {};
if (life_HC_isActive) then {
    if (_time < 1) exitwith {};
    [getPlayerUID _unit, _unit, player, false] remoteExecCall["HC_fnc_wantedBounty", HC_Life];
} else {
    if (_time < 1) exitwith {};
    [getPlayerUID _unit, _unit, player, false] remoteExecCall["life_fnc_wantedBounty", RSERV];
};
if (isNull _unit) exitWith {};
detach _unit;
[_unit, false, _time] remoteExecCall["life_fnc_jail", _unit];
[0, "STR_NOTF_Arrested_1", true, [_unit getVariable["realname", name _unit], profileName]] remoteExecCall["life_fnc_broadcast", RCLIENT];
_log = format["%1 został aresztowany przez %2", _unit getVariable["realname", name _unit], profileName];
[_log, "wiezienie"] remoteExecCall["A3Log", 2];
if (LIFE_SETTINGS(getNumber, "player_advancedLog") isEqualTo 1) then {
    if (LIFE_SETTINGS(getNumber, "battlEye_friendlyLogging") isEqualTo 1) then {
        advanced_log = format[localize "STR_DL_AL_Arrested_BEF", _unit getVariable["realname", name _unit]];
    } else {
        advanced_log = format[localize "STR_DL_AL_Arrested", profileName, (getPlayerUID player), _unit getVariable["realname", name _unit]];
    };
    publicVariableServer "advanced_log";
};