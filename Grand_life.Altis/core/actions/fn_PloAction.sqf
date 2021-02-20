if (syrena_var) exitWith {
    hint "Musisz chwile poczekac zanim znowu tego użyjesz!";
};
syrena_var = true;
if ((call life_coplevel) > 0 || (call life_adminlevel) > 0) then {
    [vehicle player] remoteExec["life_fnc_syrena", -2];
};
[] spawn {
    sleep 5;
    syrena_var = false;
};