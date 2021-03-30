private "_vehicle";
_vehicle = param[0, objNull, [objNull]];
if (! (_vehicle in life_vehicles)) then {
    life_vehicles pushBack _vehicle;
};