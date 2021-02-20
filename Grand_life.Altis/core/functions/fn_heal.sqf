if ((damage player) < 0.1) exitWith {};
if (! ("Medikit" in (items player))) exitWith {
    hint "Nie masz apteczki!";
};
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 3.5;
player setdamage 0;