[[["msgTaskDriverGoToDescription"] call mav_taxi_fnc_getLocalization, ["msgTaskDriverGoToDescriptionS"] call mav_taxi_fnc_getLocalization, ["msgTaskDriverGoToDriverHUD"] call mav_taxi_fnc_getLocalization], mav_taxi_v_destination, "default"] call mav_taxi_fnc_setTask;
["Drive to the destination"] spawn mav_taxi_fnc_showLargeNotification;
mav_taxi_v_currentFare_startTime = diag_tickTime;
if ([] call mav_taxi_fnc_isNavigatorEnabled) then {
    [getPos player, mav_taxi_v_destination, [], "NORMAL", true] spawn mav_gps_fnc_startNavigationScripted;
};
mav_taxi_v_currentFare_startPosition = getPos player;