private["_foundAnimal", "_foundDistance", "_foundDirection"];
closeDialog 0;
_check_animals = ["Hen_Random_F", "Cock_Random_F", "Goat_Random_F", "Sheep_Random_F"];
_check_distance = 200;
if (vehicle player != player) exitWith {
    hint "Nie możesz tego zrobić z wnetrza pojazdu!"
};
_track = [typeof(nearestObjects[player, _check_animals, _check_distance] select 0), getpos player distance getpos(nearestObjects[player, _check_animals, _check_distance] select 0), player getreldir(nearestObjects[player, _check_animals, _check_distance] select 0)];
_foundAnimal = "Brak";
if (_track select 0 == "Hen_Random_F") then {
    _foundAnimal = "Kury";
};
if (_track select 0 == "Cock_Random_F") then {
    _foundAnimal = "Kogua";
};
if (_track select 0 == "Goat_Random_F") then {
    _foundAnimal = "Kozy";
};
if (_track select 0 == "Sheep_Random_F") then {
    _foundAnimal = "Owcy";
};
if (_track select 0 == "Rabbit_F") then {
    _foundAnimal = "Królika";
};
_foundDistance = "Stare";
if (_track select 1 <= 100) then {
    _foundDistance = "Świeże";
};
if (_track select 1 <= 50) then {
    _foundDistance = "Bardzo Świeże";
};
_foundDirection = "Do przodu";
if (_track select 2 >= 45 && _track select 2 < 135) then {
    _foundDirection = "W prawo";
};
if (_track select 2 >= 135 && _track select 2 < 225) then {
    _foundDirection = "Do tyłu";
};
if (_track select 2 >= 225 && _track select 2 < 315) then {
    _foundDirection = "W lewo";
};
if (_foundAnimal == "Brak") then {
    hint "Nie znaleziono żadnych śladów zwierząt";
} else {
    hint format["Tam są %1 ślady %2, które prowadzą %3.", _foundDistance, _foundAnimal, _foundDirection];
};