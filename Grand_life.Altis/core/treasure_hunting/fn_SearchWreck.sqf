#include < core\treasure_hunting\macro.h > private["_sum", "_finding", "_txt", "_items", "_wreck", "_combinedWeight", "_lootArray", "_wreckLoot"];
_wreck = life_explorer_wreck;
life_action_inUse = true;
titleText["Przeszukiwanie wraku...", "PLAIN"];
titleFadeOut 5;
sleep 5;
_wreckLoot = _wreck getVariable["loot", []];
if (count _wreckLoot isEqualTo 0) exitWith {
    hint "Ten wrak jest pusty!";
    life_action_inUse = false;
};
if (dialog) exitWith {
    life_action_inUse = false;
};
if (!createDialog "wreckSearchDialog") exitWith {
    hint "Wystąpił błąd.";
    life_action_inUse = false;
};
disableSerialization;
_itemList = CONTROL(25500, 25503);
_editBox = CONTROL(25500, 25504);
_editBox ctrlEnable false;
lbClear _itemList; {
    _displayName = M_CONFIG(getText, "VirtualItems", _x, "displayName");
    _itemList lbAdd format["%1", localize _displayName];
    _itemList lbSetData[(lbSize _itemList) - 1, _x];
}
forEach _wreckLoot;
if (! (_wreck getVariable["searched", true])) then {
    _wreck setVariable["searched", true, false];
    life_explorer_distance = 0;
};
life_action_inUse = false;
sleep 2;