_bed = cursorObject;
_unit = _this select 1;
_bed setVariable["occupied", true, true];
[_unit, "AinjPpneMstpSnonWnonDnon", "switch", 0] remoteExec["life_fnc_animSync", 0];
waitUntil {
    animationState player == "AinjPpneMstpSnonWnonDnon"
};
_unit setPos[(getPosATL _bed select 0), (getPosATL _bed select 1), (getPosATL _bed select 2)];
life_action_getup = _unit addaction["<t color='#0099FF'>Wstań</t>", "bed\getup.sqf"];
life_laydown = _bed;
_unit setposatl[getPosATL _unit select 0, getPosATL _unit select 1, ((getPosATL _unit select 2))];