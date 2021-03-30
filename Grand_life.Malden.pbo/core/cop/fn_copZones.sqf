if (playerSide != west) exitWith {
    hint "Musisz być policjantem!"
};
_markernumber = [_this, 0, 0] call BIS_fnc_param;
_close = [_this, 1, false] call BIS_fnc_param;
_promien = [_this, 2, 300] call BIS_fnc_param;
_type = [_this, 3, 0] call BIS_fnc_param;
if (_markernumber == 0) exitWith {
    hint "Brak numerku markera";
};
if (_close) exitWith {
    _markername1 = "Restricted_Area" + str _markernumber;
    _markername2 = "Restricted_Area" + str _markernumber + "b";
    systemChat format["Usuwam: %1", _markername1];
    systemChat format["Usuwam: %1", _markername2];
    deleteMarker _markername1;
    deleteMarker _markername2;
    _msg = "Działania policji na niebieskiej strefie zostały zakończone. Wszystko wraca do normy!";
    [1, format["%1", _msg]] remoteExec["life_fnc_broadcast", civilian];
    [1, format["%1", _msg]] remoteExec["life_fnc_broadcast", west];
    _at = life_placedmarkers find str _markernumber;
    life_placedmarkers deleteAt _at;
};
closeDialog 0;
Marker = {
    _pos = [_this select 0, _this select 1, _this select 2];
    _markernumber = [_this, 3] call BIS_fnc_param;
    _promien = [_this, 4] call BIS_fnc_param;
    _type = [_this, 5] call BIS_fnc_param;
    _markername1 = "Restricted_Area" + str _markernumber;
    _markername2 = "Restricted_Area" + str _markernumber + "b";
    _marker = createMarker[_markername1, [(_pos select 0), (_pos select 1), 0]];
    _marker setMarkerShape "ELLIPSE";
    systemChat format["%1", _promien];
    _marker setMarkerSize[_promien, _promien];
    _marker setMarkerBrush "SOLID";
    _marker setMarkerColor "ColorWEST";
    if (_type == 1) then {
        _marker setMarkerBrush "Grid";
    };
    _marker2 = createMarker[_markername2, [(_pos select 0), (_pos select 1), 0]];
    _marker2 setMarkerColor "ColorBlack";
    _marker2 setMarkerType "mil_warning";
    _marker2 setMarkerShape "ICON";
    _marker2 setMarkerSize[1, 1];
    if (_type == 1) then {
        _marker2 setMarkerText "Punkt kontrolny otwarty!";
    } else {
        _marker2 setMarkerText "Strefa " + str _markernumber + " Zamknięta!";
    };
    onMapSingleClick "";
    openMap[false, false];
    life_placedmarkers pushBack(str _markernumber);
    if (_type == 1) then {
        _msg = "Policja utworzyła punkt kontrolny! Wszyscy obywatele przejeżdząjący przez jego teren mają obowiązek zatrzymać się do kontroli!";
        [1, format["%1", _msg]] remoteExec["life_fnc_broadcast", civilian];
        [1, format["%1", _msg]] remoteExec["life_fnc_broadcast", west];
    } else {
        _msg = "Policja zamknęła niebieską strefę. Cywile którzy nie chcą wchodzić w wrogą interakcję z policją a znaleźli się na jej terenie powinni niezwłocznie założyć ręce na głowę i oczekiwać na funkcjonariusza. Jeżeli nie popełnili żadnego przestępstwa po zakończeniu działań policji nie zostaną oni zatrzymani. Jakie kolwiek inne działania obywateli na terenie strefy zostaną potraktowane jako zagrożenie, a wobec napastników zostanie wykorzystana broń palna.";
        [1, format["%1", _msg]] remoteExec["life_fnc_broadcast", civilian];
        [1, format["%1", _msg]] remoteExec["life_fnc_broadcast", west];
    };
};
openMap[true, false];
hint "Kliknij w punkt na mapie na którym ma się znaleźć środek tworzonej strefy";
[_markernumber, _promien, _type] onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2, _this select 0, _this select 1,_this select 2] spawn Marker";