params[["_customer", objNull, [objNull]], ["_newDestination", [], [[]]]];
if (isNull _customer) exitWith {};
if (count _newDestination != 3) exitWith {};
if (!isServer) exitWith {};
private _setInQueue = false; {
    private _unit = _x param[0, objNull];
    if (_unit isEqualTo _customer) exitWith {
        _x set[3, _newDestination];
        _setInQueue = true;
    };
}
forEach mav_taxi_v_callQueue;
if (_setInQueue) then {
    publicVariable "mav_taxi_v_callQueue";
} else {
    {
        _x params["_unit", "_driver", "_callId"];
        if (_unit isEqualTo _customer) exitWith {
            [_newDestination] remoteExecCall["mav_taxi_fnc_driverUpdateDestination", _driver];
        };
    }
    forEach mav_taxi_v_activeFares;
};