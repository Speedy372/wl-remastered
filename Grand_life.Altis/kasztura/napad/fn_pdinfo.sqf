switch (param[0, ""]) do {
case "laptop":
    {
        _pos = mapGridPosition(getpos WRAK_Naoad_K);
        ["Napad na wyspę", format["Ktoś pobrał dane z tajnego laptopa: Lokalizacja: %1", _pos], "Informacja"] spawn life_fnc_AAN;
    }; case "sejf": {
        _pos = mapGridPosition(getpos BOX_Naoad_K_1);
        ["Napad na wyspę", format["Ktoś otwiera skrzynie na wyspie: Lokalizacja: %1", _pos], "Informacja"] spawn life_fnc_AAN;
    };
case "playerinfo":
    {
        _time = param[1, 300];
        [format["Otwarcie sejfu za: %1 sekund", _time], "info", 5] call pedro_fnc_pow;
    };
case "otwarte":
    {
        ["Sejf Otwarty", "info", 5] call pedro_fnc_pow;
        ["Reset zabezpieczeń za 15 min.", "info", 5] call pedro_fnc_pow;
    };
case "zakonczono":
    {
        ["Napad na wyspę", "Ktoś właśnie obrobił sejf na wyspie", "Informacja"] spawn life_fnc_AAN;
    };
default {};
};