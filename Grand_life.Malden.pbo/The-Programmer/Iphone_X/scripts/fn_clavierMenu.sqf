uiNamespace setVariable["compose_number", ""];
_display = findDisplay 21000;
_appelTxt = _display displayCtrl 1003;
_appel = missionNamespace getVariable["maxence_appel", 0];
_time = _appel / 3600;
_time = [_time] call BIS_fnc_timeToString;
if (_appel != 0) then {
    _appelTxt ctrlSetText format[(["STR_CALL"] call max_phone_fnc_localize), _time];
};