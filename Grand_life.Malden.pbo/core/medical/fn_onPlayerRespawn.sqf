#include "script_macros.hpp"
private["_unit", "_corpse", "_containers"];
_unit = _this select 0;
_corpse = _this select 1;
life_corpse = _corpse;
if ! (isNil "bleedingEffect") then {
    bleedingEffect = 0
};
_unit setVariable["restrained", false, true];
_unit setVariable["Escorting", false, true];
_unit setVariable["transporting", false, true];
_unit setVariable["playerSurrender", false, true];
_unit setVariable["steam64id", getPlayerUID player, true];
_unit setvariable["neprzytomny", false, true];
_tag = (group _unit) getVariable["gang_tag", ""];
if (getNumber(missionConfigFile >> "gang_config" >> "show_defined_gangtags") isEqualTo 1) then {
    if (! (_tag isEqualTo "")) then {
        _unit setVariable["realname", format["[%1] %2", _tag, profileName], true];
    } else {
        _unit setVariable["realname", profilename, true];
    };
} else {
    _unit setVariable["realname", profilename, true];
};
player playMoveNow "AmovPpneMstpSrasWrflDnon";
[] call life_fnc_setupActions;
[_unit, life_settings_enableSidechannel, playerSide] remoteExecCall["TON_fnc_manageSC", RSERV];
if (LIFE_SETTINGS(getNumber, "enable_fatigue") isEqualTo 0) then {
    player enableFatigue false;
};