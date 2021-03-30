#include "script_macros.hpp"
disableSerialization;
createDialog "life_wanted_menu";
private _display = findDisplay 2400;
private _list = _display displayCtrl 2401;
private _players = _display displayCtrl 2406;
private _units = [];
lbClear _list;
lbClear _players; {
    private _side =
    switch (side _x) do {
    case west:
        {
            "Cop"
        };
    case civilian:
        {
            "Civ"
        };
    default {
            "Unknown"
        };
    }; _players lbAdd format["%1 - %2", name _x, _side];
    _players lbSetdata[(lbSize _players) - 1, str(_x)];
}
forEach playableUnits;
private _list2 = CONTROL(2400, 2407);
lbClear _list2;
private _crimes = LIFE_SETTINGS(getArray, "crimes"); {
    if (isLocalized(_x select 0)) then {
        _list2 lbAdd format["%1 - $%2 (%3)", localize(_x select 0), (_x select 1), (_x select 2)];
    } else {
        _list2 lbAdd format["%1 - $%2 (%3)", (_x select 0), (_x select 1), (_x select 2)];
    };
    _list2 lbSetData[(lbSize _list2) - 1, (_x select 2)];
}
forEach _crimes;
ctrlSetText[2404, "Łączenie..."];
if (FETCH_CONST(life_coplevel) < 1) then {
    ctrlShow[9800, false];
    ctrlShow[1001, false];
    ctrlShow[1002, false];
    ctrlShow[2407, false];
    ctrlShow[2406, false];
};
if (FETCH_CONST(life_coplevel) < 3) then {
    ctrlShow[2405, false];
};
if (life_HC_isActive) then {
    [player] remoteExec["HC_fnc_wantedFetch", HC_Life];
} else {
    [player] remoteExec["life_fnc_wantedFetch", RSERV];
};