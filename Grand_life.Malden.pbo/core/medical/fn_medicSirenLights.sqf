#include "script_macros.hpp"
params[["_vehicle", objNull, [objNull]]];
if (isNull _vehicle) exitWith {};
if ! (typeOf _vehicle in ["C_Offroad_01_F", "B_MRAP_01_F", "C_SUV_01_F", "C_Hatchback_01_sport_F", "B_Heli_Light_01_F", "B_Heli_Transport_01_F", "C_Van_01_box_F"]) exitWith {};
private _trueorfalse = _vehicle getVariable["lights", false];
if (_trueorfalse) then {
    _vehicle setVariable["lights", false, true];
    if ! (isNil {
        (_vehicle getVariable "lightsJIP")
    }) then {
        private _jip = _vehicle getVariable "lightsJIP";
        _vehicle setVariable["lightsJIP", nil, true];
        remoteExec["", _jip];
    };
} else {
    _vehicle setVariable["lights", true, true];
    private _jip = [_vehicle, 0.22] remoteExec["life_fnc_medicLights", RCLIENT, true];
    _vehicle setVariable["lightsJIP", _jip, true];
};