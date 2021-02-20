scriptName "functions_recoilCompensation_3";#define __filename "functions_recoilCompensation_3.sqf"
player setUnitRecoilCoefficient.8;
player addEventHandler["Respawn", {
    player setUnitRecoilCoefficient.8;
}];