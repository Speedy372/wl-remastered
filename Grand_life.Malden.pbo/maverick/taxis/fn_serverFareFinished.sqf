params[["_id", -1, [-1]]];
if (_id == -1) exitWith {}; {
    if (_x param[2, -1] == _id) exitWith {
        mav_taxi_v_activeFares deleteAt _forEachIndex;
    };
}
forEach mav_taxi_v_activeFares;