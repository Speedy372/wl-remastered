private _time = ctrlText 1400;
_time = parseNumber _time;
private _prisoner = cursorTarget;
closeDialog 0;
if (_prisoner == objNull || player == objNull) exitWith {};
if (_time > 20) then {
    _time = 20;
};
if (_time < 1) then {
    _time = 5;
};
[getPlayerUID _prisoner, _prisoner, player, false] remoteExecCall["life_fnc_wantedBounty", 2];
[player, _time] remoteExec["life_fnc_jobItself", _prisoner];