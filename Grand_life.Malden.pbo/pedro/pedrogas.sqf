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
        ((nearestObject[getpos player, "SmokeShellYellow"]) distance player < 10) and(getpos(nearestObject[getpos player, "SmokeShellYellow"]) select 2 < 0.5)
    };
    if (! (goggles player in _gasMask)) then {
        _first = getDammage player;
        _final = _first + 0.1;
        player setDamage _final;
    };
    sleep 2;
};