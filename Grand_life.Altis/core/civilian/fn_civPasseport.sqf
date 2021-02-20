private["_target", "_message"];
_target = cursorTarget;
if (playerSide != civilian) exitWith {
    hint "Nie jesteś cywilem!";
};
if (isNull _target) then {
    _target = player;
};
if (! (_target isKindOf "Man")) then {
    _target = player;
};
if (! (alive _target)) then {
    _target = player;
};
_message = format["<img size='7' color='#FFFFFF' image='icons\civ.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1'>Obywatel Altis</t>", name player];
[player, _message] remoteExec["life_fnc_passeportCiv", _target];