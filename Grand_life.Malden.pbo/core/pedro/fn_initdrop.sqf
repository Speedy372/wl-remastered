if (!isServer) exitWith {};
[] spawn {
    private["_positions", "_position", "_skrzynia", "_marker", "_markerZone", "_radius", "_smoke"];
    sleep 3600;
    ["Niedługo spadnie skrzynia z bronią!", "warrning", 15] remoteExec["pedro_fnc_pow", 0];
    sleep 60;
    ["Skrzynia z bronią spadła! Macie 10 min na zabranie z niej przedmiotów", "warrning", 15] remoteExec["pedro_fnc_pow", 0];
    _radius = 350;
    _wynik = selectRandom[1, 2, 3, 4, 5];
    if (_wynik == 1) then {
        _position = [23303, 20273.6, 0];
    };
    if (_wynik == 2) then {
        _position = [8406.87, 20819, 0];
    };
    if (_wynik == 3) then {
        _position = [8406.87, 20819, 0];
    };
    if (_wynik == 4) then {
        _position = [9831.69, 12611.4, 0];
    };
    if (_wynik == 5) then {
        _position = [11841.6, 15294.7, 0];
    };
    _marker = createMarker["bronmarker1", _position];
    _marker setMarkerColor "ColorBlack";
    _marker setMarkerType "mil_warning";
    _marker setMarkerText "Skrzynia z bronia";
    _marker setMarkerAlpha 0.95;
    _markerZone = createMarker["bronmarker2", _position];
    _markerZone setMarkerColor "ColorRed";
    _markerZone setMarkerType "Empty";
    _markerZone setMarkerAlpha 0.50;
    _markerZone setMarkerShape "ELLIPSE";
    _markerZone setMarkerSize[_radius, _radius];
    _skrzynia = createVehicle["Box_East_AmmoVeh_F", _position, [], _radius, "None"];
    _skrzynia allowDamage false;
    _skrzynia setDamage 0;
    _skrzynia addWeaponCargoGlobal["arifle_AK12_F", 1];
    _skrzynia addMagazineCargoGlobal["30Rnd_762x39_Mag_F", 15];
    _skrzynia addWeaponCargoGlobal["arifle_TRG21_F", 3];
    _skrzynia addMagazineCargoGlobal["30Rnd_556x45_Stanag", 20];
    _skrzynia addWeaponCargoGlobal["srifle_DMR_07_hex_F", 2];
    _skrzynia addMagazineCargoGlobal["20Rnd_650x39_Cased_Mag_F", 13];
    _skrzynia addWeaponCargoGlobal["arifle_MXM_Black_F", 2];
    _skrzynia addMagazineCargoGlobal["30Rnd_65x39_caseless_mag", 19];
    _skrzynia addItemCargoGlobal["optic_Arco_blk_F", 3];
    _skrzynia addItemCargoGlobal["optic_MRCO", 3];
    _skrzynia addItemCargoGlobal["optic_DMS", 2];
    _smoke = selectRandom["Purple", "Purple", "Purple", "Purple", "Purple", "Purple", "Purple"];
    _smoke = createVehicle["SmokeShell" + _smoke, [0, 0, 0], [], 0, ""];
    _smoke attachTo[_skrzynia, [0, 0, 0]];
    sleep 6000;
    deleteVehicle _skrzynia;
    deleteMarker "bronmarker1";
    deleteMarker "bronmarker2";
    ["Skrzynia znikneła po 30 min", "warrning", 15] remoteExec["pedro_fnc_pow", 0];
};