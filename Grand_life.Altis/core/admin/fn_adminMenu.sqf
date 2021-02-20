#include "script_macros.hpp"
private["_display", "_list", "_side", "_godmode", "_markers"];
if (FETCH_CONST(life_adminlevel) < 1) exitWith {
    closeDialog 0;
};
disableSerialization;
waitUntil { ! isNull(findDisplay 2900)
};
_list = CONTROL(2900, 2902);
if (FETCH_CONST(life_adminlevel) < 1) exitWith {
    closeDialog 0;
};
switch (FETCH_CONST(life_adminlevel)) do {
case 1:
    {
        ctrlShow[2904, false];
        ctrlShow[2906, false];
        ctrlShow[2907, false];
        ctrlShow[2908, false];
        ctrlShow[2910, false];
        ctrlShow[2911, false]
    };
case 2:
    {
        ctrlShow[2904, false];
        ctrlShow[2905, false];
        ctrlShow[2908, false];
        ctrlShow[2910, false];
        ctrlShow[2911, false]
    };
case 3:
    {
        ctrlShow[2904, false];
        ctrlShow[2910, false];
        ctrlShow[2911, false]
    };
case 4:
    {
        ctrlShow[2904, false];
        ctrlShow[2910, false]
    };
default {};
}; lbClear _list; {
    _side =
    switch (side _x) do {
    case west:
        {
            "Cop"
        };
    case civilian:
        {
            "Civ"
        };
    case independent:
        {
            "Medic"
        };
    default {
            "Unknown"
        };
    }; _list lbAdd format["%1 - %2", _x getVariable["realname", name _x], _side];
    _list lbSetdata[(lbSize _list) - 1, str(_x)];
}
forEach playableUnits;
if (FETCH_CONST(life_adminlevel) < 1) exitWith {
    closeDialog 0;
};
if (life_god) then {
    _godmode = CONTROL(2900, 2908);
    _godmode ctrlSetTextColor[0, 255, 0, 1];
};
if (life_markers) then {
    _markers = CONTROL(2900, 2910);
    _markers ctrlSetTextColor[0, 255, 0, 1];
};