private["_unit"];
_unit = cursorTarget;
if (isNull _unit) exitWith {};
if ((_unit getVariable["blindfolded", false])) exitWith {};
if ((life_action_inUse) || (player getVariable["tied", false]) || (player getVariable["restrained", false])) exitWith {
    hintSilent "Nie możesz tego zrobić.";
};
if (player == _unit) exitWith {};
if (!isPlayer _unit) exitWith {};
if (life_inv_blindfold < 1) exitWith {
    hintSilent "Potrzebujesz opaski na oczy!";
};
life_inv_blindfold = life_inv_blindfold - 1;
hintSilent "Zakładam opaskę...";
_cme = 1;
_myposy = getPos player;
while {
    true
}
do {
    life_action_inUse = true;
    if (player distance _myposy > 2.5) exitwith {
        hint "To far away!";
    };
    player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    waitUntil {
        animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    };
    _cme = _cme + 1;
    if (_cme > 3) exitwith {
        cursorTarget setVariable["blindfolded", true, true];
        [player] remoteExecCall["life_fnc_tieingb", cursorTarget];
    };
}; life_action_inUse = false;