params[["_destination", [], [[]]]];
if (count _destination != 3) exitWith {};
[["msgTaxiDestinationUpdated"] call mav_taxi_fnc_getLocalization] spawn mav_taxi_fnc_showLargeNotification;
mav_taxi_v_destination = _destination;
if (mav_taxi_v_taxiMeterRan) then {
    [[["msgTaskDriverGoToDescription"] call mav_taxi_fnc_getLocalization, ["msgTaskDriverGoToDescriptionS"] call mav_taxi_fnc_getLocalization, ["msgTaskDriverGoToDriverHUD"] call mav_taxi_fnc_getLocalization], mav_taxi_v_destination, "default"] call mav_taxi_fnc_setTask;
    if ([] call mav_taxi_fnc_isNavigatorEnabled) then {
        [getPos player, mav_taxi_v_destination, [], "NORMAL", true] spawn mav_gps_fnc_startNavigationScripted;
    };
};