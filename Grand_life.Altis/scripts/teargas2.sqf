While {
    true
}
do {
    "dynamicBlur"
    ppEffectEnable true;
    "dynamicBlur"
    ppEffectAdjust[0];
    "dynamicBlur"
    ppEffectCommit 15;
    resetCamShake;
    20 fadeSound 1;
    _gasmask = ["G_Combat", "G_Balaclava_TI_G_blk_F", "G_RegulatorMask_F", "G_AirPurifyingRespirator_02_black_F", "G_Balaclava_TI_G_tna_F", "G_AirPurifyingRespirator_02_olive_F", "G_AirPurifyingRespirator_02_sand_F", "G_AirPurifyingRespirator_01_F"];
    waituntil {
        ((nearestObject[getpos player, "G_40mm_SmokeBlue"]) distance player < 10) and(getpos(nearestObject[getpos player, "G_40mm_SmokeBlue"]) select 2 < 0.5)
    };
    if (! (goggles player in _gasMask)) then {
        "dynamicBlur"
        ppEffectEnable true;
        "dynamicBlur"
        ppEffectAdjust[20];
        "dynamicBlur"
        ppEffectCommit 3;
        enableCamShake true;
        addCamShake[2, 60, 2];
        player setFatigue 1;
        5 fadeSound 0.2;
    };
    sleep 5;
};