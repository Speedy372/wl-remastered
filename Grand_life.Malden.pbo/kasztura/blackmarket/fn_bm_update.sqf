#include "script_macros.hpp"
private["_item_list", "_gear_list", "_shopItems", "_name", "_price"];
disableSerialization;
kasztura_old_btc = gl_money_btc;
_item_list = CONTROL(2400, 2401);
_gear_list = CONTROL(2400, 2402);
lbClear _item_list;
lbClear _gear_list;
if (!isClass(missionConfigFile >> "VirtualShops" >> life_shop_type)) exitWith {
    closeDialog 0;
    hint localize "STR_NOTF_ConfigDoesNotExist";
};
ctrlSetText[2403, localize(M_CONFIG(getText, "VirtualShops", life_shop_type, "name"))];
_shopItems = M_CONFIG(getArray, "VirtualShops", life_shop_type, "items");
_buyedit = CONTROL(2400, 2404);
_buybtn = CONTROL(2400, 15109);
_item_list ctrlEnable false;
_buyedit ctrlEnable false;
_buybtn ctrlEnable false; {
    _name = M_CONFIG(getText, "VirtualItems", _x, "displayName");
    _val = ITEM_VALUE(_x);
    if (_val > 0) then {
        _gear_list lbAdd format["%2 [x%1]", _val, (localize _name)];
        _gear_list lbSetData[(lbSize _gear_list) - 1, _x];
        _icon = M_CONFIG(getText, "VirtualItems", _x, "icon");
        if (! (_icon isEqualTo "")) then {
            _gear_list lbSetPicture[(lbSize _gear_list) - 1, _icon];
        };
    };
}
forEach _shopItems;