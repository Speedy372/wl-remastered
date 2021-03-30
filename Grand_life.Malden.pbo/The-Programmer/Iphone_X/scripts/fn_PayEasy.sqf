#include "The-Programmer\script_macros.hpp"
private["_display", "_joueur"];
disableSerialization;
createDialog "The_Programmer_Iphone_Bank_Menu";
_display = findDisplay 20055;
_joueur = (_display displayCtrl 2022);
lbClear _joueur;
(_display displayCtrl 1002) ctrlSetStructuredText(parseText(format["<t align = 'center' shadow = '1' color='#000000' font='PuristaBold'>%1</t>", [BANK] call life_fnc_numberText]));
(_display displayCtrl 1001) ctrlSetStructuredText(parseText(format["<t align = 'center' shadow = '1' color='#000000' font='PuristaBold'>%1</t>", [CASH] call life_fnc_numberText]));
_near_units = []; {
    if (player distance _x < 20) then {
        _near_units pushBack _x;
    };
}
foreach playableUnits; {
    if (!isNull _x && alive _x && player distance _x < 20 && _x != player) then {
        _joueur lbAdd format["%1 - %2", _x getVariable["realname", name _x], side _x];
        _joueur lbSetData[(lbSize _joueur) - 1, str(_x)];
    };
}
foreach _near_units;