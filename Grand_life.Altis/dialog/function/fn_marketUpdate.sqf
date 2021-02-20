#include "script_macros.hpp"
private["_item_list", "_shopItems", "_name", "_buyPrice", "_sellPrice", "_weight", "_displayName"];
disableSerialization;
_item_list = CONTROL(60700, 67001);
ctrlShow[60704, false];
ctrlShow[60705, false];
ctrlShow[60706, false];
ctrlShow[60707, false];
ctrlShow[60708, false];
ctrlShow[60709, false];
ctrlShow[60710, false];
ctrlShow[60711, false];
ctrlShow[60712, false];
lbClear _item_list;
if (!isClass(missionConfigFile >> "VirtualShops" >> "ymarket")) exitWith {
    closeDialog 0;
    hint localize "STR_NOTF_ConfigDoesNotExist";
};
ctrlSetText[67003, localize(M_CONFIG(getText, "VirtualShops", "ymarket", "name"))];
_shopItems = M_CONFIG(getArray, "VirtualShops", "ymarket", "items"); {
    _displayName = M_CONFIG(getText, "VirtualItems", _x, "displayName");
    _buyPrice = M_CONFIG(getNumber, "VirtualItems", _x, "buyPrice");
    _sellPrice = M_CONFIG(getNumber, "VirtualItems", _x, "sellPrice");
    _weight = M_CONFIG(getNumber, "VirtualItems", _x, "weight");
    _item_list lbAdd format["%1", (localize _displayName)];
    _item_list lbSetData[(lbSize _item_list) - 1, _x];
    _icon = M_CONFIG(getText, "VirtualItems", _x, "icon");
    if (! (_icon isEqualTo "")) then {
        _item_list lbSetPicture[(lbSize _item_list) - 1, _icon];
    };
}
forEach _shopItems;