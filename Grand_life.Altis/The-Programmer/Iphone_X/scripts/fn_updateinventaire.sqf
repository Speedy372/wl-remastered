#include "The-Programmer\script_macros.hpp"
private["_inv", "_lic", "_licenses", "_near", "_near_units", "_mstatus", "_shrt", "_side", "_struct", "_plist"];
disableSerialization;
_inv = CONTROL(20057, 2005);
_joueur = CONTROL(20057, 2023);
lbClear _inv;
lbClear _joueur; {
    if (ITEM_VALUE(configName _x) > 0) then {
        _inv lbAdd format["%2 [x%1]", ITEM_VALUE(configName _x), localize(getText(_x >> "displayName"))];
        _inv lbSetData[(lbSize _inv) - 1, configName _x];
        _icon = M_CONFIG(getText, "VirtualItems", configName _x, "icon");
        if (! (_icon isEqualTo "")) then {
            _inv lbSetPicture[(lbSize _inv) - 1, _icon];
        };
    };
}
foreach("true"
configClasses(missionConfigFile >> "VirtualItems"));
ctrlSetText[2009, format["%1 / %2", life_carryWeight, life_maxWeight]];
_near_units = []; {
    if (player distance _x < 20) then {
        _near_units pushBack _x
    };
}
foreach playableUnits; {
    if (!isNull _x && alive _x && player distance _x < 20 && _x != player) then {
        _joueur lbAdd format["%1 - %2", _x getVariable["realname", name _x], side _x];
        _joueur lbSetData[(lbSize _joueur) - 1, str(_x)];
    };
}
foreach _near_units;