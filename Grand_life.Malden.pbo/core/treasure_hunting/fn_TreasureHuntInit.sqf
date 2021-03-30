#include < core\treasure_hunting\macro.h > private["_random", "_selectedLocation", "_selectedLocationEstimate", "_wreckVeh", "_txt", "_pos", "_selectedWreck", "_searchAction", "_wreckLoot"];
if (playerSide == west) exitWith {
    hint "Policja nie może szukać skarbów.";
};
if (playerSide == east) exitWith {
    hint "Pomoc drogowa nie może szukać skarbów.";
};
if (playerSide == independent) exitWith {
    hint "Medycy nie mogą szukać skarbów.";
};
if (!isNull life_explorer_wreck) exitWith {
    hint format["Już zostało ci przydzielone zadanie, aby szukać w okolicy %1.", mapGridPosition life_explorer_wreck];
};
life_explorer_wrecks = [["Land_UWreck_FishingBoat_F", "Łódź Rybacka"], ["Land_UWreck_MV22_F", "MV-22"], ["Land_Wreck_Traw2_F", "Trawler"], ["Land_Wreck_Traw_F", "Trawler"], ["Land_Wreck_Plane_Transport_01_F", "C-192"], ["Land_HistoricalPlaneWreck_01_F", "A6M"], ["Land_HistoricalPlaneWreck_02_front_F", "A6M"], ["Land_HistoricalPlaneWreck_03_F", "B-25"], ["Land_Boat_06_wreck_F", "Łódź"], ["Land_Boat_05_wreck_F", "Łódź"], ["Land_Boat_04_wreck_F", "Łódź"]];
life_explorer_markers = [];
for "_i"
from 1 to 20 do {
    life_explorer_markers pushBack format["wreck_marker_%1", _i];
}; _selectedWreck = selectRandom life_explorer_wrecks;
_selectedLocation = getMarkerPos(selectRandom life_explorer_markers);
_selectedLocationEstimate = _selectedLocation;
while {
    true
}
do {
    _maxDistance = 150;
    _dist = floor random _maxDistance;
    _dir = floor random 360;
    _xpos = (_selectedLocation select 0) + (sin _dir) * _dist;
    _ypos = (_selectedLocation select 1) + (cos _dir) * _dist;
    _selectedLocation = [_xpos, _ypos];
    if (surfaceIsWater _selectedLocation) exitWith {};
}; _wreckVeh = (_selectedWreck select 0) createVehicle[0, 0, 0];
life_explorer_wreck = _wreckVeh;
life_explorer_wreck setDir(random 360);
life_explorer_wreck setPosASL[_selectedLocation select 0, _selectedLocation select 1, getTerrainHeightASL _selectedLocation];
life_explorer_wreck setVariable["searched", false, false];
_contents = round(random[1, 2, 3]);
_items = [["woodencontainer", 15], ["smallchest", 15], ["mediumchest", 10], ["leadbox", 7], ["largechest", 5], ["hugechest", 3]];
_wreckLoot = [];
for "_i"
from 1 to _contents do {
    _finding = [_items] call HL_SelectByChance;
    _wreckLoot pushBack _finding;
}; life_explorer_wreck setVariable["loot", _wreckLoot, false];
if (getMarkerColor "wreckAreaMarker" != "") then {
    deleteMarker "wreckAreaMarker"
};
_newMarker = createMarkerLocal["wreckAreaMarker", _selectedLocationEstimate];
_newMarker setMarkerShapeLocal "ELLIPSE";
_newMarker setMarkerSizeLocal[150, 150];
_newMarker setMarkerBrushLocal "SolidFull";
_newMarker setMarkerColorLocal "ColorBlack";
_newMarker setMarkerAlphaLocal 0.3;
_txt = format["Wrak %1 jest w okolicach %2. Znajdz ten wrak i przeszukaj go w celu znalezienia skarbu.", _selectedWreck select 1, mapGridPosition _selectedLocationEstimate];
life_explorer_task = player createSimpleTask["treasure_hunting"];
life_explorer_task setSimpleTaskDescription[_txt, "Poszukiwanie Skarbu", ""];
life_explorer_task setSimpleTaskDestination _selectedLocationEstimate;
hintC format["Wrak %1 był widziany w okolicy %2. Znajdz ten wrak i przeszukaj go w celu znalezienia skarbu.", _selectedWreck select 1, mapGridPosition _selectedLocationEstimate];
life_explorer_distance = 2 * (ceil((player distance life_explorer_wreck) / 1000));
if (life_explorer_distance < 2) then {
    life_explorer_distance = 2
};
waitUntil {
    player distance life_explorer_wreck < 15
};
_searchAction = life_explorer_wreck addAction["Przeszukaj wrak", {
    [] spawn life_fnc_searchWreck;
}];
["TaskSucceeded", ["Poszukiwanie Skarbu", "Znalazłeś wrak! Przeszukaj go!"]] call bis_fnc_showNotification;
if (getMarkerColor "wreckAreaMarker" != "") then {
    deleteMarker "wreckAreaMarker"
};
life_explorer_task setTaskState "Succeeded";
player removeSimpleTask life_explorer_task;