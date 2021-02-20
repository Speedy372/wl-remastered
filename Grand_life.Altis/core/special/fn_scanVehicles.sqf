private["_display", "_list", "_objects"];
disableSerialization;
if (!isNull(findDisplay 3494)) then {
    _display = findDisplay 3494;
    _list = _display displayCtrl 2902;
    lbClear _list;
    nn_last_vehicles = [];
    _objects = nearestObjects[player, ["Air", "Car", "Ship"], 150]; {
        if (vehicle player != _x) then {
            _list lbAdd format["%1 - (%2)", getText(configFile >> "cfgVehicles" >> typeOf _x >> "DisplayName"), round(player distance _x)];
            nn_last_vehicles set[count nn_last_vehicles, _x];
        };
    }
    foreach _objects;
};