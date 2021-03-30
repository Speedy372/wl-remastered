_uid = getPlayerUID player;
private["_uid"];
if (hasInterface) then {
    [[player, ""], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;
    sleep 2;
    if (_uid == "0") then {
        [[player, "RG_P_Helios"], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;
    };
};