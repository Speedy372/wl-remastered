{
    if (_x animationPhase "Door_1_rot" == 1) then {
        _x animate["Door_1_rot", 0];
    } else {
        _x animate["Door_1_rot", 1];
    };
}
forEach(nearestObjects[player, ["Land_BarGate_F"], 10]); {
    if (_x animationPhase "Door_1_move"
    isEqualTo 1) then {
        _x animate["Door_1_move", 0];
    } else {
        _x animate["Door_1_move", 1];
    };
}
forEach(nearestObjects[player, ["Land_ConcreteWall_01_m_gate_F", "Land_ConcreteWall_01_l_gate_F"], 20]); {
    if (_x animationPhase "Door_1_rot" == 1) then {
        _x animate["Door_1_rot", 0];
    } else {
        _x animate["Door_1_rot", 1];
    };
}
forEach(nearestObjects[player, ["Land_BackAlley_01_l_gate_F"], 10]);