params["_pos", "_veh", "_first"];
if (_first) then {
    _title = "Ciężarówka";
    _desc = "Przejmij ciężarówkę z wyposażeniem";
    _wayp = getpos _veh;
    myTask = [west, "GetAmmoTruck", [_desc, _title, _wayp], _veh, "ASSIGNED", 1, true, "box"] call BIS_fnc_taskCreate;
    _msg = parseText "<t size='1.8' color='#50a667'>Transport Wyposażenia</t><br/><t size='1.1'>Miejsce podjęcia ciężarówki z wyposażeniem zostało oznaczone na mapie!</t>";
    hint _msg;
    playSound "taskCreated";
};
_marker = createMarkerLocal["gunrun", _pos];
_marker setMarkerShapeLocal "ICON";
_marker setMarkerTypeLocal "hd_pickup";
_marker setMarkerColorLocal "ColorBlue";
_marker setMarkerTextLocal "punkt podjęcia ciężarówki";