#include "script_macros.hpp"
private["_type", "_varName", "_displayName", "_sideFlag", "_price"];
_type = _this select 3;
if (!isClass(missionConfigFile >> "Licenses" >> _type)) exitWith {};
_displayName = M_CONFIG(getText, "Licenses", _type, "displayName");
_price = M_CONFIG(getNumber, "Licenses", _type, "price");
_sideFlag = M_CONFIG(getText, "Licenses", _type, "side");
_varName = LICENSE_VARNAME(_type, _sideFlag);
if (CASH < _price) exitWith {
    hint format[localize "STR_NOTF_NE_1", [_price] call life_fnc_numberText, localize _displayName];
};
CASH = CASH - _price;
[0] call SOCK_fnc_updatePartial;
titleText[format[localize "STR_NOTF_B_1", localize _displayName, [_price] call life_fnc_numberText], "PLAIN"];
[format[localize "STR_NOTF_B_1", localize _displayName, [_price] call life_fnc_numberText], false] spawn doquickmsg;
missionNamespace setVariable[_varName, true];
[2] call SOCK_fnc_updatePartial;
_log = format["%1, %2 kupil %3 za %4", name player, getPlayerUID player, _displayName, [_price] call life_fnc_numberText];
[_log, "kuplic"] remoteExecCall["A3Log", 2];