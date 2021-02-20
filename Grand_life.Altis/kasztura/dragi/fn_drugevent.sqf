if ! (isnull(kartel_1 getvariable["kasztura_pojazdDEV", objNull])) exitWith {
    hint "inny Drug Event w Trakcie, spróbuj później !"
};
hint format["Tyle mi się tych drugów tu nazbierało, że nie mam gdzie tego trzymać. Załadowałem towar na ciężarówkę. Dostarcz go w wyznaczone miejsce a odpalę ci solidną działkę."];
_obdzekt = param[0, objNull];
_cyferka = (str _obdzekt) select[7, 1];
_marker_1 = format["marker_kartel_event_%1_1", _cyferka];
_marker_2 = format["marker_kartel_event_%1_2", _cyferka];
_marker_spawn = _marker_2;
_endmarker = "drug_event_end";
_startpos = getpos Drug_EV_NPC_END;
Drug_EV_NPC_END setvariable["_startpos", _startpos, true];
_klasa = getText(missionConfigFile >> "kasztura_config" >> "DrugEV_klasa");
_ilosc = getNumber(missionConfigFile >> "kasztura_config" >> "DrugEV_ilosc");
_nearVehicles = nearestObjects[(getmarkerpos _marker_2), ["Car", "Air", "Ship"], 15];
if (count _nearVehicles > 0) then {
    _marker_spawn = _marker_1
};
kasztura_pojazdDEV = createVehicle["O_Truck_02_covered_F", (getmarkerpos _marker_spawn), [], 0, "NONE"];
kartel_1 setvariable["kasztura_pojazdDEV", kasztura_pojazdDEV, true];
[kasztura_pojazdDEV, ["BlueOlive", 1], true] call BIS_fnc_initVehicle;
kasztura_pojazdDEV setVariable["FuraDrudEv", true, true];
kasztura_pojazdDEV setVariable["MarkerDrudEv", (getmarkerpos _endmarker), false];
kasztura_pojazdDEV setVariable["StarterDrudEv", player, false];
kasztura_pojazdDEV lock 2;
[kasztura_pojazdDEV] call life_fnc_addVehicle2Chain;
kasztura_pojazdDEV setVariable["Trunk", [[], 0], true];
[_klasa, _ilosc, kasztura_pojazdDEV] call life_fnc_zaladujfure;
[kasztura_pojazdDEV, player, _startpos] remoteExec["life_fnc_DrugEVWathdog", 2];
kasztura_pojazdDEV addEventHandler["Killed", {
    kartel_1 setvariable["kasztura_pojazdDEV", objNull, true]
}];
kasztura_pojazdDEV addEventHandler["GetIn", {
    [((_this#0) getVariable["MarkerDrudEv", [0, 0, 0]]), "Transport narkotykowy", "Location"] spawn life_fnc_ikonkiimarkery
}];
kasztura_pojazdDEV addEventHandler["GetOut", {
    [_this#0] spawn {
        if (isnull(kasztura_pojazdDEV getVariable["StarterDrudEv", objNull])) exitWith {};
        uisleep 2;
        ["location", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
        deletemarkerlocal format["location%1", getPlayerUID player];
        _pojazd = _this#0;
        _czas = 30;
        _endmarker = _pojazd getVariable["MarkerDrudEv", [0, 0, 0]];
        while {
            true
        }
        do {
            uisleep 1;
            _czas = _czas - 1;
            _time1 = time + _czas;
            if ((_endmarker distance _pojazd) < 50) exitWith {};
            if (!alive player) exitWith {};
            if (isnull _pojazd) exitWith {};
            if (! (isNull objectParent player) && ((objectParent player) getVariable["FuraDrudEv", false])) exitWith {};
            if (_czas <= 0) exitWith {};
            _countDown = [(_time1 - time), "MM:SS"] call BIS_fnc_secondsToString;
            hintSilent parseText format["<t color='#ff001d'><t size='1'>Wróc do pojazdu</t><br/> %1 skund.", _countDown];
        }; if (((isNull objectParent player) || !((objectParent player) getVariable["FuraDrudEv", false])) && ((_endmarker distance _pojazd) > 50)) then {
            deleteVehicle _pojazd;
            ["location", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
            kartel_1 setvariable["kasztura_pojazdDEV", objNull, true];
            _pos = Drug_EV_NPC_END getvariable["_startpos", [0, 0, 0]];
            Drug_EV_NPC_END setpos _pos;
        };
        hint "";
    };
}];
[(getmarkerpos _marker_spawn), "Transport narkotykowy", "Location"] spawn life_fnc_ikonkiimarkery;
Drug_EV_NPC_END setpos(getmarkerpos _endmarker);