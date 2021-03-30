#include "script_macros.hpp"
private["_crew"];
_crew = crew cursorObject; {
    _x setVariable["transporting", false, true];
    _x setVariable["Escorting", false, true];
    [_x] remoteExecCall["life_fnc_pulloutVeh", _x];
}
forEach _crew;