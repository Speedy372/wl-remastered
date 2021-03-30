scriptName "functions_paycheckIncrease_1";#define __filename "functions_paycheckIncrease_1.sqf"
_ownsDependency1 = [life_currentExpPerks, "perk_paycheck_2"] call mav_ttm_fnc_hasPerk;
_ownsDependency2 = [life_currentExpPerks, "perk_paycheck_3"] call mav_ttm_fnc_hasPerk;
if (!_ownsDependency1 && !_ownsDependency2) then {
    mav_ttm_var_paycheckMultiplier = 1.25;
};