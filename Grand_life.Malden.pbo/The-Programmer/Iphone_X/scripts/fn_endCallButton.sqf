closeDialog 0;
_with = player getVariable["calling_with", objNull];
if (isNull _with) exitWith {};
player setVariable["in_call", false, true];
_with setVariable["in_call", false, true];
[_with] remoteExec["max_phone_fnc_callEnd", player];
[player] remoteExec["max_phone_fnc_callEnd", _with];
[] spawn the_programmer_iphone_fnc_phone_init;