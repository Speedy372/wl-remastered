if (klakson_var isEqualTo true) exitWith {
    hint "Musisz chwile poczekac zanim znowu tego użyjesz!";
};
klakson_var = true;
if ((call life_donator) > 0 || (call life_adminlevel) > 0) then {
    [vehicle player] remoteExec["life_fnc_klakson", -2];
};
sleep 5;
klakson_var = false;