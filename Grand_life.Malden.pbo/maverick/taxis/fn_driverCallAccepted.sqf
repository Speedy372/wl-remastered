#include "maverick\taxis\gui\gui_includes.h"
disableSerialization;
params[["_customer", objNull, [objNull]], ["_destination", [], [[]]]];
if (isNull _customer) exitWith {};
if (count _destination != 3) exitWith {};
["Proceed to the marked location"] spawn mav_taxi_fnc_showLargeNotification;
mav_taxi_v_myCustomer = _customer;
mav_taxi_v_destination = _destination;
mav_taxi_v_isDriver = true;
player setVariable["mav_taxi_v_isOnDuty", nil, true];
private _basePrice = getNumber(missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "basePrice");
[-(round _basePrice), true] call mav_taxi_fnc_attemptPayment;
private _display = findDisplay MAV_IDD_RSCDISPLAYTAXICALLS;
if (!isNull _display) then {
    closeDialog 0;
};
[player, _customer, true] call mav_taxi_fnc_startFare;
[[["msgTaskDriverPickupDescription"] call mav_taxi_fnc_getLocalization, ["msgTaskDriverPickupDescriptionS"] call mav_taxi_fnc_getLocalization, ["msgTaskDriverPickupHUD"] call mav_taxi_fnc_getLocalization], _customer, "default"] call mav_taxi_fnc_setTask;
if ([] call mav_taxi_fnc_isNavigatorEnabled) then {
    [getPos player, getPos mav_taxi_v_myCustomer, [], "NORMAL", true] spawn mav_gps_fnc_startNavigationScripted;
};
mav_taxi_v_currentFare_startPosition = getPos _customer;