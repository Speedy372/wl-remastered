_with = player getVariable["calling_with", objNull];
if (isNull _with) exitWith {};
_withNum = player getVariable["calling_number", ""];
if (_with getVariable "calling_ano") then {
    _withNum = (["STR_ANONYME"] call max_phone_fnc_localize);
}; {
    if ((_x select 1) isEqualTo _withNum) exitWith {
        _withNum = _x select 0;
    };
}
foreach maxence_contact;
disableSerialization;
_display = findDisplay 25000;
_numberTXT = _display displayCtrl 25001;
_numberTXT ctrlSetStructuredText parseText format["<t size='1.5'><t align='center'>%1</t></t>", _withNum];
while {
    player getVariable["in_call", false]
}
do {
    _time = player getVariable["calling_time", 0];
    _time = _time + 1;
    _time = _time / 3600;
    _time = [_time] call BIS_fnc_timeToString;
    ctrlSetText[25002, _time];
    uiSleep 1;
};