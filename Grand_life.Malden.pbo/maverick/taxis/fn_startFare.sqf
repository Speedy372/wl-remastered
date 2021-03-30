params[["_driver", objNull, [objNull]], ["_customer", objNull, [objNull]], ["_asDriver", false, [false]]];
if (isNull _driver || {
    isNull _customer
}) exitWith {};
mav_taxi_v_hasCalledTaxi = false;
mav_taxi_v_isOnDuty = false;
mav_taxi_v_myDriver = objNull;
mav_taxi_v_myCustomer = objNull;
mav_taxi_v_currentFare_startTime = diag_tickTime;
mav_taxi_v_currentFare_totalDistance = 0;
mav_taxi_v_hasReachedOtherParty = false;
mav_taxi_v_taxiMeterRan = false;
mav_taxi_v_reachedDestination = false;
mav_taxi_v_callerPaid = -1;
mav_taxi_v_callerReceivedTotalDistance = false;
if (_asDriver) then {
    mav_taxi_v_myCustomer = _customer;
} else {
    mav_taxi_v_myDriver = _driver;
    mav_taxi_v_hasCalledTaxi = true;
};
if (!isNil "mav_taxi_v_fareRecordingThread") then {
    terminate mav_taxi_v_fareRecordingThread;
    mav_taxi_v_fareRecordingThread = nil;
};
mav_taxi_v_currentFare_isCounting = false;
mav_taxi_v_fareRecordingThread = [_driver, _customer, _asDriver] spawn mav_taxi_fnc_fareRecording;