params[["_finalDistanceDriven", 0, [0]], ["_isDriver", false, [false]], ["_driver", objNull, [objNull]], ["_customer", objNull, [objNull]], ["_didTaxiMeterRun", false, [false]], ["_notCompleted", false, [false]], ["_cancelledByDriver", false, [false]], ["_startPosition", [], [[]]], ["_endPosition", [], [[]]]];
if (_finalDistanceDriven < 0) exitWith {};
if (_isDriver) then {
    [_finalDistanceDriven] remoteExecCall["mav_taxi_fnc_setDrivenDistance", _customer];
} else {
    waitUntil {
        sleep 0.1;
        mav_taxi_v_callerReceivedTotalDistance
    };
    _finalDistanceDriven = mav_taxi_v_currentFare_totalDistanceByDriver;
    mav_taxi_v_currentFare_totalDistanceByDriver = nil;
};
private _automaticBilling = true;
private _totalPrice = (mav_taxi_v_pricePerKilometre * (_finalDistanceDriven / 1000));
private _basePrice = getNumber(missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "basePrice");
if (_automaticBilling) then {
    private _exit = false;
    private _totalSegmentsToDisplay = [];
    if (_isDriver) then {
        _totalSegmentsToDisplay pushBack["msgTaxiBillingBasePrice", round _basePrice, true];
        if (_totalPrice > 0) then {
            _totalSegmentsToDisplay pushBack["msgTaxiBillingPayment", round _totalPrice, true];
        };
        waitUntil {
            sleep 0.1;
            (mav_taxi_v_callerPaid != -1)
        };
        if (mav_taxi_v_callerPaid > _totalPrice) then {
            _totalPrice = mav_taxi_v_callerPaid;
        };
        if (mav_taxi_v_callerPaid == _totalPrice) then {
            [round(-_totalPrice), true] call mav_taxi_fnc_attemptPayment;
            if (!_notCompleted) then {
                [format[["msgPaidDriver"] call mav_taxi_fnc_getLocalization, (_totalPrice + _basePrice) toFixed 0], true, "maverick\taxis\data\images\check-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;
            };
        } else {
            [round(-mav_taxi_v_callerPaid), true] call mav_taxi_fnc_attemptPayment;
            if (!_notCompleted) then {
                [format[["msgNotFullyPaidDriver"] call mav_taxi_fnc_getLocalization, (_totalPrice + _basePrice) toFixed 0, mav_taxi_v_callerPaid], true, "maverick\taxis\data\images\check-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;
            };
            if (_totalPrice > 0) then {
                _totalSegmentsToDisplay pushBack["msgTaxiBillingDriverMissingP", -(round(_totalPrice - mav_taxi_v_callerPaid)), true];
            };
        };
    } else {
        private _couldPay = [round _totalPrice, false] call mav_taxi_fnc_attemptPayment;
        _totalSegmentsToDisplay pushBack["msgTaxiBillingBasePrice", -(round _basePrice), true];
        if (_totalPrice > 0) then {
            _totalSegmentsToDisplay pushBack["msgTaxiBillingPayment", -(round _totalPrice), true];
        };
        if (_couldPay) then {
            [_totalPrice] remoteExecCall["mav_taxi_fnc_driverCallerPaid", _driver];
            if (!_notCompleted) then {
                [format[["msgPaidCustomer"] call mav_taxi_fnc_getLocalization, (_totalPrice + _basePrice) toFixed 0], true, "maverick\taxis\data\images\check-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;
            };
        } else {
            private _maxAmountAvailable = [] call mav_taxi_fnc_getMaximumMoneyAvailable;
            [_maxAmountAvailable] remoteExecCall["mav_taxi_fnc_driverCallerPaid", _driver];
            [_maxAmountAvailable, false] call mav_taxi_fnc_attemptPayment;
            if (!_notCompleted) then {
                [format[["msgNotFullyPaidCustomer"] call mav_taxi_fnc_getLocalization, (_totalPrice + _basePrice) toFixed 0, _maxAmountAvailable], true, "maverick\taxis\data\images\check-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;
            };
            if (_totalPrice > 0) then {
                _totalSegmentsToDisplay pushBack["msgTaxiBillingCustomerMissingP", (round(_totalPrice - _maxAmountAvailable)), true];
            };
        };
    };
    if (_cancelledByDriver) then {
        if (_isDriver) then {
            [_basePrice, false] call mav_taxi_fnc_attemptPayment;
            _totalSegmentsToDisplay pushBack["msgTaxiBillingCancelled", -_basePrice];
        } else {
            _totalSegmentsToDisplay pushBack["msgTaxiBillingCancelled", _basePrice];
            [-_basePrice, true] call mav_taxi_fnc_attemptPayment;
        };
    };
    [_totalSegmentsToDisplay, _startPosition, _endPosition] spawn mav_taxi_fnc_showFareSummary;
} else {
    if (!_isDriver) then {
        [format[["msgPayCustomer"] call mav_taxi_fnc_getLocalization, _totalPrice toFixed 2], true, "maverick\taxis\data\images\check-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;
    } else {
        [format[["msgPayDriver"] call mav_taxi_fnc_getLocalization, _totalPrice toFixed 2], true, "maverick\taxis\data\images\check-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;
    };
};