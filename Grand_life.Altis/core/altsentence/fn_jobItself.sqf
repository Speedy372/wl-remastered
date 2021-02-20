params[["_cop", objNull], ["_time", 5], ["_bad", false, [false]]];
life_garbageArray = [];
[] call life_fnc_spawnGarbage;
[] call life_fnc_saveGear;
life_gearPrisoner = getUnitLoadout player;
player setVariable["restrained", FALSE, TRUE];
player setVariable["Escorting", FALSE, TRUE];
player setVariable["transporting", FALSE, TRUE];
player setPos[3524.186, 12997.288, 0.173];
player setDir 283.393;
player setVariable["inJob", true, true];
[_time] spawn {
    _time = _this#0;
    while {
        _time > 0
    }
    do {
        if (player distance(getMarkerPos "altsentence") > 350) exitWith {};
        titleText["Zostałeś wysłany na prace społeczne. Zbieraj śmieci do końca swojego wyroku i nie oddalaj się na więcej niż 350m od biurowca!", "PLAIN"];
        _time = _time - 1;
        uisleep 60;
        if (player distance(getMarkerPos "altsentence") > 350) exitWith {};
    };
};
RemoveAllWeapons player; {
    player removeMagazine _x
}
forEach(magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player; {
    player unassignItem _x;
    player removeItem _x;
}
forEach(assignedItems player);
removeUniform player;
player addUniform "U_B_HeliPilotCoveralls";
player addVest "V_Safety_orange_F";
player setObjectTextureGlobal[0, "textures\Uniform\prisoner.paa"];
player addBackpack "B_AssaultPack_cbr";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemRadio";
player assignItem "ItemRadio";
[player, _bad, _time] remoteExecCall["life_fnc_senSys", 2];
[] call life_fnc_playerSkins;
[_time] spawn {
    params["_time"];
    private _esc = false;
    _time = time + (_time * 60);
    for "_i"
    from 0 to 1 step 0 do {
        if ((round(_time - time)) > 0) then {
            private _countDown =
            if (round(_time - time) > 60) then {
                format["%1 minut(y)", round(round(_time - time) / 60)]
            } else {
                format["%1 sekund(y)", round(_time - time)]
            };
            hint format["Pozostały Czas:\n %1\n", _countDown];
        };
        if (player distance(getMarkerPos "altsentence") > 350) exitWith {
            _esc = true;
        };
        if ((round(_time - time)) < 1) exitWith {
            hint ""
        };
        if (!alive player && ((round(_time - time)) > 0)) exitWith {};
    }; switch (true) do {
    case(alive player && _esc):
        {
            hint "Uciekłeś z prac społecznych";
            [0, "STR_Jail_EscapePraceNOTF", true, [profileName]] remoteExecCall["life_fnc_broadcast", -2];
            if (life_HC_isActive) then {
                [getPlayerUID player, profileName, "902"] remoteExecCall["HC_fnc_wantedAdd", HC_Life];
            } else {
                [getPlayerUID player, profileName, "902"] remoteExecCall["life_fnc_wantedAdd", 2];
            };
            [] call life_fnc_deleteGarbage;
            player setVariable["inJob", false, true];
            [5] call SOCK_fnc_updatePartial;
        };
    case(alive player && !_esc):
        {
            player setUnitLoadout life_gearPrisoner;
            if (life_HC_isActive) then {
                [getPlayerUID player] remoteExecCall["HC_fnc_wantedRemove", HC_Life];
            } else {
                [getPlayerUID player] remoteExecCall["life_fnc_wantedRemove", 2];
            };
            [] call life_fnc_deleteGarbage;
            player setVariable["inJob", false, true];
            [5] call SOCK_fnc_updatePartial;
            player setPos(getMarkerPos "jail_release");
        };
    case !(alive player):
        {
            [] call life_fnc_deleteGarbage;
            player setVariable["inJob", false, true];
        };
    };
};