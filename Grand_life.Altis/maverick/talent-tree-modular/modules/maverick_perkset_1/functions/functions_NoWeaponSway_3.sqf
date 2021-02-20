scriptName "functions_recoilCompensation_3";#define __filename "functions_recoilCompensation_3.sqf"
player setCustomAimCoef 0.8;
player addEventHandler["Respawn", {
    player setCustomAimCoef 0.8;
}];