#include "script_macros.hpp"
private["_display", "_list"];
disableSerialization;
waitUntil { ! isNull(findDisplay 29012)
};
_list = CONTROL(29012, 2902);
_dynekon = missionNamespace getVariable["DYN_EKON", []];
if (_dynekon isEqualTo[]) exitWith {
    lbClear _list;
    _list lbAdd "ERROR: _dynekon = []";
    _list lbSetdata[(lbSize _list) - 1, "[]"];
    hint "ERROR:, zgłoś problem adminowi. _dynekon = []";
};
_cenyup = _dynekon#0;
_cenydown = _dynekon#1;
lbClear _list;
_list lbAdd "==> Ceny w górę <==";
_list lbSetdata[(lbSize _list) - 1, "[]"]; {
    _towar_n = M_CONFIG(getText, "VirtualItems", (_x#0), "displayName");
    _list lbAdd format["%1", (localize _towar_n)];
    _temp = _x;
    _temp pushback true;
    _list lbSetdata[(lbSize _list) - 1, str(_temp)];
}
forEach _cenyup;
_list lbAdd "==> Ceny w dół <==";
_list lbSetdata[(lbSize _list) - 1, "[]"]; {
    _towar_n = M_CONFIG(getText, "VirtualItems", (_x#0), "displayName");
    _list lbAdd format["%1", (localize _towar_n)];
    _temp = _x;
    _temp pushback false;
    _list lbSetdata[(lbSize _list) - 1, str(_temp)];
}
forEach _cenydown;