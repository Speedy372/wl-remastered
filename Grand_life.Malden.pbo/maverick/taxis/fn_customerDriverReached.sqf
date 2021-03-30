[] call mav_taxi_fnc_stopTask;
mav_taxi_v_currentFare_startTime = diag_tickTime;
[[["msgTaskDriverGoToDescription"] call mav_taxi_fnc_getLocalization, ["msgTaskDriverGoToDescriptionS"] call mav_taxi_fnc_getLocalization, ["msgTaskDriverGoToDriverHUD"] call mav_taxi_fnc_getLocalization], mav_taxi_v_destination, "default"] call mav_taxi_fnc_setTask;
mav_taxi_v_currentFare_startPosition = getPos player;