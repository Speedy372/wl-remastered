params[["_finalDistanceDriven", 0, [0]], ["_isDriver", false, [false]]];
[_finalDistanceDriven, _isDriver, mav_taxi_v_myDriver, mav_taxi_v_myCustomer, mav_taxi_v_taxiMeterRan, false, false, mav_taxi_v_currentFare_startPosition, mav_taxi_v_destination] spawn mav_taxi_fnc_processFareBilling;
if (_isDriver) then {
    [mav_taxi_v_myCallId] remoteExecCall["mav_taxi_fnc_serverFareFinished", 2];
};
[] call mav_taxi_fnc_stopFare;