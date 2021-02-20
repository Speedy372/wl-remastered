private["_unit"];
_unit = cursorTarget;
if ((life_action_inUse) || (player getVariable["tied", false]) || (player getVariable["restrained", false])) exitWith {
    hintSilent "Nie możesz tego zrobić."
};
if (isNull _unit || !(_unit getVariable["tied", false])) exitWith {};
_unit setVariable["tied", nil, true];
_unit setVariable["Escorting", false, true];
_unit setVariable["transporting", false, true];
[_unit, "cuff"] remoteExec["life_fnc_say3D", RANY];