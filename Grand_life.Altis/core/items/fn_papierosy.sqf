closeDialog 0;
systemChat "Nie ma to jak fajka!";
if (!life_smoking) then {
    life_smoking = true;
    [[player], "life_fnc_attachSmoke", true, false] spawn BIS_fnc_MP;
    sleep 300;
    life_smoking = false;
};