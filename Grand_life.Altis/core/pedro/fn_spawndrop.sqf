private["_robber", "_shop", "_kassa", "_ui", "_progress", "_pgText", "_cP", "_rip", "_pos"];
_shop = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;
_robber = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_param;
_action = [_this, 2] call BIS_fnc_param;
if (_rip) exitWith {
    hint "Czekaj chlopaki narazie maja przerwe"
};
if ! (alive _robber) exitWith {};
if (_robber distance _shop > 5) exitWith {
    hint "Nie mozesz byc dalej niz 5 m!"
};
if (vehicle player != _robber) exitWith {
    hint "Musisz wyjsc z pojazdu!"
};
_rip = true;
_shop removeAction _action;
[] spawn pedro_fnc_initdrop;
hint "Dobra chlopaki zaraz zrobia zrzut";
[[1, 2], "STR_ISTR_Bolt_AlertDrop", true, []] remoteExecCall["life_fnc_broadcast", RCLIENT];
sleep 600;
_rip = false;
_action = _shop addAction["Wezwij chlopakow z jednostki", pedro_fnc_spawndrop];