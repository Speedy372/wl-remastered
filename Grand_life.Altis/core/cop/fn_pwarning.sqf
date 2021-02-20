#include "script_macros.hpp"
private["_veh"];
_veh = vehicle player;
if (syrena_var) exitWith {
    hint "Musisz chwile poczekac zanim znowu tego użyjesz!";
};
syrena_var = true;
if ((call life_coplevel) > 0 || (call life_adminlevel) > 0) then {
    [_veh] remoteExec["life_fnc_pwarning2", RCLIENT];
};
[] spawn {
    sleep 1;
    syrena_var = false;
};