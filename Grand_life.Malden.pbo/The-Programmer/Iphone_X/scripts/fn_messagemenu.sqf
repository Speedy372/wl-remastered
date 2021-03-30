private["_display", "_units"];
_curConfig = missionConfigFile >> "Max_Settings_Phone";
disableSerialization;
_display = findDisplay 3000;
ctrlSetText[3003, ""];
if (call life_adminlevel < 1) then {
    ctrlShow[3020, false];
    ctrlShow[3021, false];
};
_display = findDisplay 3000;
_numeroTxt = _display displayCtrl 3010;
_numeroServiceTxt = _display displayCtrl 3011;
_num = player getVariable["maxence_numero", "0"];
if (_num != "0") then {
    _numeroTxt ctrlSetText format["%1", _num];
};
_smsTxt = _display displayCtrl 1002;
_sms = missionNamespace getVariable["maxence_sms", 0];
if (_sms != 0) then {
    _smsTxt ctrlSetText format[(["STR_SMS"] call max_phone_fnc_localize), _sms];
};
if (playerSide isEqualTo west || playerSide isEqualTo independent) then {
    switch (playerSide) do {
    case west:
        {
            _numeroServiceTxt ctrlSetText format[(["STR_ACTUAL_SERVICE_NUMBER"] call max_phone_fnc_localize), getNumber(_curConfig >> "num_cop")];
        };
    case independent:
        {
            _numeroServiceTxt ctrlSetText format[(["STR_ACTUAL_SERVICE_NUMBER"] call max_phone_fnc_localize), getNumber(_curConfig >> "num_med")];
        };
    };
};