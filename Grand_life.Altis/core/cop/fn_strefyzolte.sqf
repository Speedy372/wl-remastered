if (playerSide != west) exitWith {
    hint "Musisz być policjantem!"
};
_markernumber = [_this, 0, 0] call BIS_fnc_param;
_close = [_this, 1, false] call BIS_fnc_param;
_promien = [_this, 2, 500] call BIS_fnc_param;
if (_markernumber == 0) exitWith {
    hint "Brak numerku markera";
};
if (_close) exitWith {
    _markernameZ1 = "Restricted_Area" + str _markernumber;
    _markernameZ2 = "Restricted_Area" + str _markernumber + "b";
    deleteMarker _markernameZ1;
    deleteMarker _markernameZ2;
    _msg = "!!!UWAGA!!! Porwanie zostało zakończone, zatem wszystko wraca do normy. Komenda Główna Policji Altis.";
    [1, format["%1", _msg]] remoteExec["life_fnc_broadcast", civilian];
    [1, format["%1", _msg]] remoteExec["life_fnc_broadcast", west];
};
closeDialog 0;
Marker = {
    _pos = [_this select 0, _this select 1, _this select 2];
    _markernumber = [_this, 3] call BIS_fnc_param;
    _promien = [_this, 4] call BIS_fnc_param;
    _markernameZ1 = "Restricted_Area" + str _markernumber;
    _markernameZ2 = "Restricted_Area" + str _markernumber + "b";
    _markerZ = createMarker[_markernameZ1, [(_pos select 0), (_pos select 1), 0]];
    _markerZ setMarkerShape "ELLIPSE";
    systemChat format["%1", _promien];
    _markerZ setMarkerSize[_promien, _promien];
    _markerZ setMarkerBrush "SOLID";
    _markerZ setMarkerColor "ColorYellow";
    _markerZ2 = createMarker[_markernameZ2, [(_pos select 0), (_pos select 1), 0]];
    _markerZ2 setMarkerColor "ColorBlack";
    _markerZ2 setMarkerType "mil_warning";
    _markerZ2 setMarkerShape "ICON";
    _markerZ2 setMarkerSize[1, 1];
    _markerZ2 setMarkerText "STREFA ZAMKNIĘTA - PORWANIE";
    onMapSingleClick "";
    openMap[false, false];
    _msg = "!!!UWAGA!!! Na wyspie trwa porwanie! Zabronione jest wykonywanie czynności wymagających kontroli i interwencji jednostek policji jak np. napady na stacje czy napad na bank itd. O dalszym przebiegu wydarzenia będziemy informować na bieżąco. Komenda Główna Policji Altis.";
    [1, format["%1", _msg]] remoteExec["life_fnc_broadcast", civilian];
    [1, format["%1", _msg]] remoteExec["life_fnc_broadcast", west];
};
openMap[true, false];
hint "Kliknij w punkt na mapie na którym ma się znaleźć środek tworzonej strefy";
[_markernumber, _promien] onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2, _this select 0, _this select 1] spawn Marker";