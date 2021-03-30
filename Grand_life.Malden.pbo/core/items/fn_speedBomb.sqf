private["_unit"];
_unit = cursorTarget;
if (!license_civ_rebel) exitWith {
    hint "Musisz być rebeliantem!"
};
if ((! (_unit isKindOf "LandVehicle")) && (!(_unit getVariable["restrained", false]))) exitWith {
    hint "Nie możesz tego zrobić."
};
if (player distance _unit > 7) exitWith {
    hint "Musisz podejść bliżej!"
};
if (! ([false, "speedbomb", 1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;
life_action_inUse = true;
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 1.5;
waitUntil {
    animationState player != "ainvpknlmstpsnonwnondnon_medic_1"
};
life_action_inUse = false;
if (player distance _unit > 7) exitWith {
    titleText["Musisz podejść bliżej!", "PLAIN"];
};
titleText["Bomba podłożona.", "PLAIN"];
[_unit] spawn {
    _veh = _this select 0;
    waitUntil {
        (speed _veh) > 70
    };
    [[_veh, "caralarm", 10], "life_fnc_playSound", true, false] spawn BIS_fnc_MP;
    hint "Bomba prędkościowa została aktywowana!"; {
        [[2, "Bomba prędkościowa została aktywowana w twoim pojeździe. Wybuchnie kiedy zwolisz poniżej 10 km/h!"], "life_fnc_broadcast", _x, false] spawn BIS_fnc_MP;
    }
    foreach(crew _veh);
    waitUntil {
        (speed _veh) < 20
    };
    serv_killed = [player, "1090"];
    publicVariableServer "serv_killed";
    _test = "Bo_Mk82"
    createVehicle[0, 0, 9999];
    _test setPos(getPos _veh);
    _test setVelocity[100, 0, 0];
    hint "Bomba prędkościowa zdetonowana!";
};