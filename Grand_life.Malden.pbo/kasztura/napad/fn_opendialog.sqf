_ilepd = getNumber(missionConfigFile >> "kasztura_config" >> "minimum_cops_wyspa");
if (west countSide playableUnits < _ilepd) exitWith {
    hint format[localize "STR_Civ_NotEnoughCops", _ilepd];
};
_wtoku = BOX_Naoad_K_1 getVariable["wlamttoku", false];
if (_wtoku) exitWith {
    ["Jeszcze zamknięte", "info", 5] call pedro_fnc_pow
};
life_safeObj = BOX_Naoad_K_1;
switch (BOX_Naoad_K_1 getVariable["otwarte", false]) do {
case false:
    {
        createDialog "kod_do_sejfu";
    };
case true:
    {
        [] spawn life_fnc_opendialog2;
    };
default {};
};