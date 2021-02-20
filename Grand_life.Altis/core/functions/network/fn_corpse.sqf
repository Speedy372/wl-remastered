private["_corpse"];
_corpse = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
if (isNull _corpse) exitWith {};
if (alive _corpse) exitWith {};
deleteVehicle _corpse;