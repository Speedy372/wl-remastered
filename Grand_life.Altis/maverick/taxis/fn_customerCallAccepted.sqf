disableSerialization;
params[["_driver", objNull, [objNull]]];
if (isNull _driver) exitWith {};
[["msgTaxiCallAccepted"] call mav_taxi_fnc_getLocalization] spawn mav_taxi_fnc_showLargeNotification;
[_driver, player, false] call mav_taxi_fnc_startFare;
private _display = uiNamespace getVariable["RscDisplayTaxiCall", displayNull];
if (!isNull _display) then {
    ["showUI", [_display]] call RscDisplayTaxiCall;
};