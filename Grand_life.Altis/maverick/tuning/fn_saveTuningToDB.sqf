scriptName "fn_saveTuningToDB";#define __filename "fn_saveTuningToDB.sqf"
_vehicleID = param[0, -1, [-1]];
_data = param[1, [], [[]]];
if (_vehicleID == -1) exitWith {};
if (count _data == 0) exitWith {};
_dataString = [true, str _data] call mav_tuning_fnc_tuning_prepareString;
_dbFnc =
if (!isNil "HC_fnc_asyncCall") then {
    HC_fnc_asyncCall
} else {
    DB_fnc_asyncCall
};
_query = format["UPDATE vehicles SET tuning_data='%2' WHERE id='%1';", _vehicleID, _dataString];
[_query, 1] call _dbFnc;