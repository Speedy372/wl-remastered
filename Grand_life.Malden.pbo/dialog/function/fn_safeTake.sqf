#include "script_macros.hpp"
private["_ctrl", "_num", "_safeInfo"];
disableSerialization;
if ((lbCurSel 3502) isEqualTo - 1) exitWith {
    hint localize "STR_Civ_SelectItem";
};
_ctrl = CONTROL_DATA(3502);
_num = ctrlText 3505;
_safeInfo = life_safeObj getVariable["safe", 0];
if (life_safeObj == BOX_Naoad_K_1) then {
    _item = "dokument"
} else {
    _item = "goldBar"
};
if (! ([_num] call TON_fnc_isnumber)) exitWith {
    hint localize "STR_MISC_WrongNumFormat";
};
_num = parseNumber(_num);
if (_num < 1) exitWith {
    hint localize "STR_Cop_VaultUnder1";
};
if (! (_ctrl isEqualTo _item)) exitWith {
    hint localize "STR_Cop_OnlyGold"
};
if (_num > _safeInfo) exitWith {
    hint format[localize "STR_Civ_IsntEnoughGold", _num];
};
_num = [_ctrl, _num, life_carryWeight, life_maxWeight] call life_fnc_calWeightDiff;
if (_num isEqualTo 0) exitWith {
    hint localize "STR_NOTF_InvFull"
};
if (! ([true, _ctrl, _num] call life_fnc_handleInv)) exitWith {
    hint localize "STR_NOTF_CouldntAdd";
};
life_safeObj setVariable["safe", _safeInfo - _num, true];
if (life_safeObj == BOX_Naoad_K_1) then {
    [] call life_fnc_safeIn
} else {
    [life_safeObj] call life_fnc_safeInventory
};