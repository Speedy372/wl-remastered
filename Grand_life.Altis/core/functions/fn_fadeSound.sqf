life_fadeSound = !life_fadeSound;
if (life_fadeSound) then {
    1 fadeSound 0.1;
    titleText["Zatyczki wlozone.", "PLAIN"];
} else {
    1 fadeSound 1;
    titleText["Zatyczki wyjete.", "PLAIN"];
};
[] call life_fnc_hudUpdate;