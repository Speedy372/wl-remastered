scriptName "functions_recoilCompensation_2";#define __filename "functions_recoilCompensation_2.sqf"
_ownsDependency = [life_currentExpPerks, "perk_gunsspecialist_NoWeaponSway_3"] call mav_ttm_fnc_hasPerk;
if (!_ownsDependency) then {
    player setCustomAimCoef 0.9;
    player addEventHandler["Respawn", {
        player setCustomAimCoef 0.9;
    }];
};