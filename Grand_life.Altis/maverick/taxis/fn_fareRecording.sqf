disableSerialization;
params[["_driver", objNull, [objNull]], ["_customer", objNull, [objNull]], ["_asDriver", false, [false]]];
if (isNull _driver || {
    isNull _customer
}) exitWith {};
mav_taxi_v_currentFare_isCounting = false;
private _taximeterDisplay = displayNull;
while {
    true
}
do {
    private _oldPosition = getPos _driver;
    sleep 1;
    private _newPos = getPos _driver;
    if (((vehicle _driver) isEqualTo(vehicle _customer)) && (_driver isEqualTo(driver vehicle _driver))) then {
        mav_taxi_v_currentFare_isCounting = true;
        mav_taxi_v_currentFare_totalDistance = mav_taxi_v_currentFare_totalDistance + (_oldPosition distance2D _newPos);
        if (!mav_taxi_v_taxiMeterRan) then {
            mav_taxi_v_taxiMeterRan = true;
            if (_asDriver) then {
                [] spawn mav_taxi_fnc_driverCallerReached;
            } else {
                [] spawn mav_taxi_fnc_customerDriverReached;
            };
            ["RscTitleTaxiMeter", 0, false] call mav_gui_fnc_createLayer;
            _taximeterDisplay = uiNamespace getVariable["RscTitleTaxiMeter", displayNull];
        };
    } else {
        mav_taxi_v_currentFare_isCounting = false;
    };
    if (!mav_taxi_v_hasReachedOtherParty) then {
        if ((_driver distance2D _customer) < 50) then {
            mav_taxi_v_hasReachedOtherParty = true;
            if (!_asDriver) then {
                [[["msgTaskCustomerDriverDescription"] call mav_taxi_fnc_getLocalization, ["msgTaskCustomerDriverDescriptionS"] call mav_taxi_fnc_getLocalization, ["msgTaskCustomerDriverHUD"] call mav_taxi_fnc_getLocalization], _driver, "getin"] call mav_taxi_fnc_setTask;
                ["Your taxi driver is near you"] spawn mav_taxi_fnc_showLargeNotification;
            };
        };
    };
    if ((player distance2D mav_taxi_v_destination) < 20) exitWith {
        mav_taxi_v_reachedDestination = true;
        [mav_taxi_v_currentFare_totalDistance, _asDriver] spawn mav_taxi_fnc_destinationReached;
    };
    if (!isNull _taximeterDisplay) then {
        ["infoUpdater", [_taximeterDisplay]] spawn RscTitleTaxiMeter;
    };
};