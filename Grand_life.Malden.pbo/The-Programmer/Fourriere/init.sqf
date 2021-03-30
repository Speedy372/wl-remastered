_this allowDamage false;
_this enableSimulation false;
_this addAction["Fourriere Terrestre", {
    [getPlayerUID player, playerSide, "Car", player] remoteExecCall["max_fourriere_fnc_getfourriere", 2];
    createDialog "Life_fourriere_menu";
    disableSerialization;
    ctrlSetText[2802, "Patientez...."];
    life_fourriere_sp = "spawn_veh";
    life_fourriere_type = "Car";
},
"", 0, false, false, ""];
_this addAction["Fourriere Aerienne", {
    [getPlayerUID player, playerSide, "Air", player] remoteExecCall["max_fourriere_fnc_getfourriere", 2];
    createDialog "Life_fourriere_menu";
    disableSerialization;
    ctrlSetText[2802, "Patientez...."];
    life_fourriere_sp = "spawn_veh";
    life_fourriere_type = "Air";
},
"", 0, false, false, ""];
_this addAction["Fourriere Maritime", {
    [getPlayerUID player, playerSide, "Ship", player] remoteExecCall["max_fourriere_fnc_getfourriere", 2];
    createDialog "Life_fourriere_menu";
    disableSerialization;
    ctrlSetText[2802, "Patientez...."];
    life_fourriere_sp = "spawn_veh";
    life_fourriere_type = "Ship";
},
"", 0, false, false, ""];