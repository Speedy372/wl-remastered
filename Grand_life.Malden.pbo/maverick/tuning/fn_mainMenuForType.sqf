scriptName "fn_mainMenuForType";#define __filename "fn_mainMenuForType.sqf"
_type = param[0, "", [""]];
if (_type == "") exitWith {};
_configName = "";
_configName = [_type] call mav_tuning_fnc_getMasterConfig;
if (_configName == "") exitWith {
    diag_log "Nie możesz tuningować tego pojazdu"
};
disableSerialization;
_listbox = (findDisplay 5100) displayCtrl 0;
lbClear _listbox;
_first = true;
if (isClass(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "RawModifications")) then {
    _listbox lbAdd "Modyfikacje części pojazdu";
    _listbox lbSetColor[(lbSize _listbox) - 1, [0.99, 0.83, 0.23, 1]]; {
        _display = getText(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "RawModifications" >> _x >> "displayText");
        _price = getNumber(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "RawModifications" >> _x >> "price");
        _listbox lbAdd format["$%1 - %2", _price, _display];
        _listbox lbSetData[(lbSize _listbox) - 1, "RawModifications"];
        _listbox lbSetValue[(lbSize _listbox) - 1, _forEachIndex];
    }
    forEach(getArray(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "RawModifications" >> "pool"));
    _first = false;
};
if (isClass(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "Colors")) then {
    if (!_first) then {
        _listbox lbAdd "";
    };
    _listbox lbAdd "Modyfikacje koloru";
    _listbox lbSetColor[(lbSize _listbox) - 1, [0.99, 0.83, 0.23, 1]]; {
        _display = getText(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "Colors" >> _x >> "displayText");
        _price = getNumber(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "Colors" >> _x >> "price");
        _listbox lbAdd format["$%1 - %2", _price, _display];
        _listbox lbSetData[(lbSize _listbox) - 1, "Colors"];
        _listbox lbSetValue[(lbSize _listbox) - 1, _forEachIndex];
    }
    forEach(getArray(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "Colors" >> "pool"));
    _first = false;
};
if (isClass(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "Nitro")) then {
    if (!_first) then {
        _listbox lbAdd "";
    };
    _listbox lbAdd "Nitro";
    _listbox lbSetColor[(lbSize _listbox) - 1, [0.99, 0.83, 0.23, 1]]; {
        _display = getText(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "Nitro" >> _x >> "displayText");
        _price = getNumber(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "Nitro" >> _x >> "price");
        _listbox lbAdd format["$%1 - %2", _price, _display];
        _listbox lbSetData[(lbSize _listbox) - 1, "Nitro"];
        _listbox lbSetValue[(lbSize _listbox) - 1, _forEachIndex];
    }
    forEach(getArray(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "Nitro" >> "pool"));
    _first = false;
};
if (isClass(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "Underglow")) then {
    if (!_first) then {
        _listbox lbAdd "";
    };
    _listbox lbAdd "Neony";
    _listbox lbSetColor[(lbSize _listbox) - 1, [0.99, 0.83, 0.23, 1]]; {
        _display = getText(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "Underglow" >> _x >> "displayText");
        _price = getNumber(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "Underglow" >> _x >> "price");
        _listbox lbAdd format["$%1 - %2", _price, _display];
        _listbox lbSetData[(lbSize _listbox) - 1, "Underglow"];
        _listbox lbSetValue[(lbSize _listbox) - 1, _forEachIndex];
    }
    forEach(getArray(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "Underglow" >> "pool"));
    _first = false;
};