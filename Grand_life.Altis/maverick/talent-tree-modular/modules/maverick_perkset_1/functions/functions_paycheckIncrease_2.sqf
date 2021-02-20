scriptName "functions_paycheckIncrease_2";#define __filename "functions_paycheckIncrease_2.sqf"
_ownsDependency = [life_currentExpPerks, "perk_paycheck_3"] call mav_ttm_fnc_hasPerk;
if (!_ownsDependency) then {
    mav_ttm_var_paycheckMultiplier = 1.5;
};