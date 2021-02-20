private["_display", "_units", "_type"];
disableSerialization;
_display = findDisplay 3000;
_units = _display displayCtrl 3004;
ctrlSetText[3003, ""];
lbClear _units;
if (call life_adminlevel < 1) then {
    ctrlShow[3020, false];
    ctrlShow[3021, false];
}; {
    if (alive _x && !(_x isEqualTo player)) then {
        _type =
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
                "Med"
            };
        }; _units lbAdd format["%1 (%2)", _x getVariable["realname", name _x], _type];
        _units lbSetData[(lbSize _units) - 1, str(_x)];
    };
}
forEach playableUnits;
_units lbSetCurSel - 1;