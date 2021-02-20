private["_index", "_vehicle"];
disableSerialization;
if (!isNull(findDisplay 3494)) then {
    if (nn_empInUse) exitWith {
        hint "Pojazd zostal juz ostrzezony lub EMP musi sie naladowac!";
    };
    nn_empInUse = true;
    _index = lbCurSel(2902);
    _vehicle = nn_last_vehicles select _index;
    if (isNull _vehicle) exitWith {};
    (vehicle player) say3D "empacsound";
    [_vehicle] remoteExec["life_fnc_vehicleEmpd", crew _vehicle];
    sleep(3 * 60);
    nn_empInUse = false;
};
_log = format["%1 %2 dla %3 chce uzyc emp", name player, getPlayerUID player, typeOf(_vehicle)];
[_log, "emp"] remoteExecCall["A3Log", 2];