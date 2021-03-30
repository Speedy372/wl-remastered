#include "maverick\taxis\gui\gui_includes.h"
params[["_reason", "", [""]]];
if (!isNil "mav_taxi_v_fareRecordingThread") then {
    terminate mav_taxi_v_fareRecordingThread;
    mav_taxi_v_fareRecordingThread = nil;
};
if (mav_taxi_v_isDriver) then {
    if (_reason != "BY_DRIVER") then {
        [["masTaxiFareCancelledAsDriver"] call mav_taxi_fnc_getLocalization] spawn mav_taxi_fnc_showLargeNotification;
    };
    mav_taxi_v_isOnDuty = true;
    player setVariable["mav_taxi_v_isOnDuty", true, true];
} else {
    if (_reason != "BY_CUSTOMER") then {
        [["msgTaxiFareCancelledAsCustomer"] call mav_taxi_fnc_getLocalization] spawn mav_taxi_fnc_showLargeNotification;
    };
};
[] call mav_taxi_fnc_stopTask;
["RscTitleTaxiMeter"] call mav_gui_fnc_destroyLayer;
if ([] call mav_taxi_fnc_isNavigatorEnabled) then {
    [] spawn mav_gps_fnc_stopNavigationScripted;
};
private _automaticBilling = true;
private _totalPrice = (mav_taxi_v_pricePerKilometre * (mav_taxi_v_currentFare_totalDistance / 1000));
[_totalPrice, mav_taxi_v_isDriver, mav_taxi_v_myDriver, mav_taxi_v_myCustomer, true, true, _reason == "BY_DRIVER", mav_taxi_v_currentFare_startPosition, mav_taxi_v_destination] spawn mav_taxi_fnc_processFareBilling;
mav_taxi_v_hasCalledTaxi = false;
mav_taxi_v_myDriver = objNull;
mav_taxi_v_myCustomer = objNull;
mav_taxi_v_currentFare_startTime = 0;
mav_taxi_v_currentFare_totalDistance = 0;
mav_taxi_v_myCallId = -1;
mav_taxi_v_hasReachedOtherParty = false;
mav_taxi_v_taxiMeterRan = false;
mav_taxi_v_destination = [];