#include "script_macros.hpp"
disableSerialization;
_text = CONTROL(29012, 2903);
_info = lbData[2902, lbCurSel(2902)];
_info = call compile format["%1", _info];
if (isNil "_info") exitWith {
    _text ctrlSetText "B/D"
};
if (_info isEqualTo[]) exitWith {
    _text ctrlSetText "B/D"
};
_text ctrlSetText "B/D";
_towar_n = M_CONFIG(getText, "VirtualItems", (_info#0), "displayName");
_towar_c = M_CONFIG(getNumber, "VirtualItems", (_info#0), "sellPrice");
_towar_p = _info#1;
if ! (_info#2) then {
    _towar_p = _towar_p * (-1)
};
_cenanowa = round(_towar_c + (_towar_c * _towar_p));
CONTROL(29012, 2903) ctrlSetStructuredText parseText format["<t size='.7'>Nazwa: %1<br/>Cena Normalna: %2<br/>Prpcent +/-: %3<br/>Cena po zmianie: %4</br></t>", (localize _towar_n), _towar_c, _towar_p, _cenanowa];