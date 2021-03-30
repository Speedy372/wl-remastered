private["_target", "_message"];
_target = cursorTarget;
if (playerSide == civilian) exitWith {
    hint "Nie jesteś policjantem!";
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
_message = format["<img size='10' color='#FFFFFF' image='icons\odznaka.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1'>Policja Altis</t>", name player];
if (license_cop_aiad) then {
    _message = format["<img size='10' color='#FFFFFF' image='icons\odznakaAIAD.paa'/><br/><br/><t size='2.5'>%1</t><br/><t color='#7a0000' size='1.0'>Wydział Spraw Wewnętrznych </t><t color='#FFFFFF' size='1'>Altis</t>", name player];
};
if (playerSide == independent) then {
    _message = format["<br/><br/><t size='2.5'>%1</t><br/><t size='1'>Ratownik Medyczny</t>", name player];
};
[player, _message] remoteExec["life_fnc_passeportCop", _target];