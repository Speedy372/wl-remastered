#include "The-Programmer\script_macros.hpp"
_key = [_this, 0, "", [""]] call BIS_fnc_param;
_lang = getText(missionConfigFile >> "Max_Settings_Fourriere" >> "default_lang");
_return = _key;
_cfgEntry = missionConfigFile >> "Fourriere_Localization" >> _key;
if (isClass _cfgEntry) then {
    _return = getText(_cfgEntry >> _lang);
};
_return