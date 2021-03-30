#include "script_macros.hpp"
ctrlShow[2002, false];
call {
    private _value = ctrlText 2010;
    if ((lbCurSel 2023) isEqualTo - 1) exitWith {
        hint localize "STR_NOTF_noOneSelected";
    };
    if ((lbCurSel 2005) isEqualTo - 1) exitWith {
        hint localize "STR_NOTF_didNotSelectItemToGive";
    };
    private _unit = lbData[2023, lbCurSel 2023];
    _unit = call compile format["%1", _unit];
    if (isNil "_unit") exitWith {
        hint localize "STR_NOTF_notWithinRange";
    };
    if (isNull _unit || {
        _unit isEqualTo player
    }) exitWith {};
    private _item = lbData[2005, lbCurSel 2005];
    if ! ([_value] call TON_fnc_isnumber) exitWith {
        hint localize "STR_NOTF_notNumberFormat";
    };
    if (parseNumber _value <= 0) exitWith {
        hint localize "STR_NOTF_enterAmountGive";
    };
    if ! ([false, _item, parseNumber _value] call life_fnc_handleInv) exitWith {
        hint localize "STR_NOTF_couldNotGive";
    };
    if (life_is_processing) exitWith {
        closeDialog 0;
        hint "Nie buguj ziom";
    };
    [_unit, _value, _item, player] remoteExecCall["life_fnc_receiveItem", _unit];
    private _type = M_CONFIG(getText, "VirtualItems", _item, "displayName");
    hint format[localize "STR_NOTF_youGaveItem", _unit getVariable["realname", name _unit], _value, localize _type];
    [] call life_fnc_p_updateMenu;
};
ctrlShow[2002, true];
_log = format["%1, %2 dal %3 %4 w ilosci %5", name player, getPlayerUID player, name _unit, _item, [(parseNumber(_val))] call life_fnc_numberText];
[_log, "dajprzedmiot"] remoteExecCall["A3Log", 2];