#include "script_macros.hpp"
private["_dialog", "_inv", "_mats", "_item", "_struct", "_str", "_invSize", "_matsNeed", "_matsNum", "_config", "_itemFilter"];
disableSerialization;
_dialog = findDisplay 666;
_inv = _dialog displayCtrl 669;
_mats = _dialog displayCtrl 672;
_struct = "";
if (! ((player distance(getMarkerPos "CraftingArea1") < 50) OR(player distance(getMarkerPos "CraftingArea2") < 50) OR(player distance(getMarkerPos "CraftingArea3") < 50))) exitWith {
    hint "Nie masz odpowiednich narzędzi po 2 musisz być w strefie kraftingu";
};
if ((lbCurSel 669) == -1) exitWith {
    hint localize "STR_ISTR_SelectItemFirst";
};
_item = lbData[669, (lbCurSel 669)];
_itemFilter = lbData[673, (lbCurSel 673)];
_config = [_itemFilter] call life_fnc_craftCfg; {
    if (_item == _x select 0) then {
        _matsNeed = _x select 1;
        _invSize = count _matsNeed;
        for [{
            _i = 0
        },
        {
            _i < _invSize - 1
        },
        {
            _i = _i + 2
        }] do {
            _str = ITEM_NAME(_matsNeed select _i);
            _matsNum = _matsNeed select _i + 1;
            _struct = _struct + format["%1x %2<br/>", _matsNum, localize _str];
        };
    };
}
foreach(_config);
if (_struct == "") then {
    _struct = "Potrzebne materiały";
};
_mats ctrlSetStructuredText parseText format["
<t size='0.8px'>
%1
</t>
", _struct];