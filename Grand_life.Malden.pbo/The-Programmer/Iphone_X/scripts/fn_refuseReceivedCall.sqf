if ! (player getVariable["receiveCall", false]) exitWith {};
_with = player getVariable["receiveCallBy", objNull];
if (isNull _with) exitWith {};
_withNum = _with getVariable["maxence_numero", ""];
if (_with getVariable["calling_ano", false]) then {
    _withNum = (["STR_ANONYME"] call max_phone_fnc_localize);
} else {
    {
        if (_x select 1 isEqualTo _withNum) exitWith {
            _withNum = _x select 0;
        };
    }
    foreach maxence_contact;
};
1 fadeSound 0;
closeDialog 0;
hint format["Incoming %1 call refused.", _withNum];
player setVariable["receiveCall", false];
player setVariable["receiveCallBy", objNull];
[] spawn the_programmer_iphone_fnc_phone_init;