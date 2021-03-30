for "_i"
from 0 to 1 step 0 do {
    if ((round(_time - time)) > 0) then {
        _countDown =
        if (round(_time - time) > 60) then {
            format["%1 minut(y)", round(round(_time - time) / 60)]
        } else {
            format["%1 sekund(y)", round(_time - time)]
        };
        hintSilent format["Pozostały Czas:\n %1\n", _countDown];
    };
    if (player distance(getMarkerPos "altsentence") > 350) exitWith {
        _esc = true;
    };
    if ((round(_time - time)) < 1) exitWith {
        hint ""
    };
    if (!alive player && ((round(_time - time)) > 0)) exitWith {};
    sleep 1;
}; switch (true) do {
case(_esc):
    {
        hint localize "Uciekłeś z prac społecznych";
        [0, "%1 uciekł z prac społecznych!", true, [profileName]] remoteExecCall["life_fnc_broadcast", RCLIENT];
        if (life_HC_isActive) then {
            [getPlayerUID player, profileName, "902"] remoteExecCall["HC_fnc_wantedAdd", HC_Life];
        } else {
            [getPlayerUID player, profileName, "902"] remoteExecCall["life_fnc_wantedAdd", RSERV];
        };
        [] call life_fnc_deleteGarbage;
        player setVariable["inJob", false, true];
        [5] call SOCK_fnc_updatePartial;
    };
case(alive player && !_esc):
    {
        hint localize "Skończyłeś przymusowe prace społeczne.";
        if (life_HC_isActive) then {
            [getPlayerUID player] remoteExecCall["HC_fnc_wantedRemove", HC_Life];
        } else {
            [getPlayerUID player] remoteExecCall["life_fnc_wantedRemove", RSERV];
        };
        player setPos(getMarkerPos "jail_release");
        [] call life_fnc_endJob;
        [5] call SOCK_fnc_updatePartial;
    };
};