if ! (player getVariable["receiveCall", false]) exitWith {};
_from = player getVariable["receiveCallBy", objNull];
if (isNull _from) exitWith {};
_fromNum = _from getVariable["maxence_numero", ""];
if (_from getVariable["calling_ano", false]) then {
    _fromNum = (["STR_ANONYME"] call max_phone_fnc_localize);
} else {
    {
        if (_x select 1 isEqualTo _fromNum) exitWith {
            _fromNum = _x select 0;
        };
    }
    foreach maxence_contact;
};
disableSerialization;
_display = findDisplay 26000;
_numberTXT = _display displayCtrl 26001;
_numberTXT ctrlSetStructuredText parseText format["<t size='1.5'><t align='center'>%1</t></t>", _fromNum];