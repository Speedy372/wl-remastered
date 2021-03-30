if (!isNil "mav_taxi_v_fareRecordingThread") then {
    terminate mav_taxi_v_fareRecordingThread;
    mav_taxi_v_fareRecordingThread = nil;
};
mav_taxi_v_hasCalledTaxi = false;
mav_taxi_v_isOnDuty = false;
mav_taxi_v_myDriver = objNull;
mav_taxi_v_myCustomer = objNull;
mav_taxi_v_currentFare_startTime = 0;
mav_taxi_v_currentFare_totalDistance = 0;
mav_taxi_v_myCallId = -1;
mav_taxi_v_hasReachedOtherParty = false;
mav_taxi_v_taxiMeterRan = false;
mav_taxi_v_destination = [];
if (mav_taxi_v_isDriver) then {
    mav_taxi_v_isOnDuty = true;
    player setVariable["mav_taxi_v_isOnDuty", true, true];
};
[] call mav_taxi_fnc_stopTask;
["RscTitleTaxiMeter"] call mav_gui_fnc_destroyLayer;