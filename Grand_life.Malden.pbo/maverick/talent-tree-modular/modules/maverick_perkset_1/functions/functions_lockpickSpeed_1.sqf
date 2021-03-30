scriptName "functions_lockpickSpeed_1";#define __filename "functions_lockpickSpeed_1.sqf"
_ownsDependency1 = [life_currentExpPerks, "perk_locksmith_2"] call mav_ttm_fnc_hasPerk;
_ownsDependency2 = [life_currentExpPerks, "perk_locksmith_3"] call mav_ttm_fnc_hasPerk;
if (!_ownsDependency1 && !_ownsDependency2) then {
    mav_ttm_var_lockpickMultiplier = 1.1;
};