#include "script_macros.hpp"
private _itemControl = _this select 0;
private _itemIndex = _this select 1;
private _iName = _itemControl lbData _itemIndex;
private _dName = M_CONFIG(getText, "VirtualItems", _iName, "displayName");
private _bPrice = M_CONFIG(getNumber, "VirtualItems", _iName, "buyPrice");
private _sPrice = M_CONFIG(getNumber, "VirtualItems", _iName, "sellPrice");
private _iWeight = M_CONFIG(getNumber, "VirtualItems", _iName, "weight");
private _iDescrip = M_CONFIG(getText, "VirtualItems", _iName, "description");
ctrlShow[60704, true];
ctrlShow[60705, true];
ctrlShow[60706, true];
ctrlShow[60707, true];
ctrlShow[60708, true];
ctrlShow[60709, true];
ctrlShow[60710, true];
ctrlShow[60711, true];
ctrlShow[60712, true];
ctrlSetText[60704, localize _dName];
ctrlSetText[60710, format["%1", _iWeight]];
if (! (_bPrice isEqualTo - 1)) then {
    ctrlSetText[60712, format["$%1", [_bPrice] call life_fnc_numberText]];
} else {
    ctrlSetText[60712, "n/a"];
};
if (! (_sPrice isEqualTo - 1)) then {
    ctrlSetText[60711, format["$%1", [_sPrice] call life_fnc_numberText]];
} else {
    ctrlSetText[60711, "n/a"];
};
(CONTROL(60700, 60709)) ctrlSetStructuredText parseText format["%1", _iDescrip];