#include < core\treasure_hunting\macro.h > private["_wreckLoot", "_item", "_wreck"];
disableSerialization;
_wreck = life_explorer_wreck;
if ((lbCurSel 25503) isEqualTo - 1) exitWith {
    hint "Nie wybrano niczego!"
};
_item = CONTROL_DATA(25503);
if ([true, _item, 1] call life_fnc_handleInv) then {
    _wreckLoot = _wreck getVariable["loot", []];
    _index = _wreckLoot find _item;
    _wreckLoot deleteAt _index;
    _wreck setVariable["loot", _wreckLoot, false];
    if (count _wreckLoot isEqualTo 0) exitWith {
        closeDialog 0;
        [] spawn {
            sleep 60;
            deleteVehicle life_explorer_wreck;
            life_explorer_wreck = objNull;
        };
    };
    _itemList = CONTROL(25500, 25503);
    lbClear _itemList; {
        _displayName = M_CONFIG(getText, "VirtualItems", _x, "displayName");
        _itemList lbAdd format["%1", localize _displayName];
        _itemList lbSetData[(lbSize _itemList) - 1, _x];
    }
    forEach _wreckLoot;
} else {
    hint "Nie masz wystarczająco miejsca";
};