#include "script_macros.hpp"
private["_veh"];
_veh = vehicle player;
[_veh] remoteExec["life_fnc_yelpmed2", RCLIENT];