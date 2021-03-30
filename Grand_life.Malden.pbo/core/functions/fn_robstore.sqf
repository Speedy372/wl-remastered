private["_robber", "_shop", "_kassa", "_ui", "_progress", "_pgText", "_cP", "_rip", "_pos"];
_shop = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;
_robber = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_param;
_action = [_this, 2] call BIS_fnc_param;
if (side _robber != civilian) exitWith {
    hint "Nie mozesz napasc na ta stacje!"
};
if (_robber distance _shop > 5) exitWith {
    hint "Nie mozesz byc dalej niz 5 m!"
};
if (vehicle player != _robber) exitWith {
    hint "Musisz wyjsc z pojazdu!"
};
if ! (alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith {
    hint "Potrzebujesz broni aby napasc na stacje"
};
if (currentWeapon _robber == "Binocular") exitWith {
    hint "Prosimy nie napadac stacji bez uzycia broni (wykorzystujac skrypt)"
};
if (_rip) exitWith {
    hint "Rabowanie w toku!"
};
_cops = (west countSide playableUnits);
if (_cops < 3) exitWith {
    hint "Napad jest mozliwy od 3 policjantow online!";
};
_rip = true;
_kassa = 50000 + round(random 10000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if (_chance >= 10) then {
    [1, format["ALARM! - Stacja benzynowa: %1 jest rabowana!", _shop]] remoteExec["life_fnc_broadcast", west];
};
["dbank", false] remoteExec["life_fnc_dispatch", west];
disableSerialization;
5 cutRsc["life_progress", "PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Rabujesz stacje pozostan w poblizu! (10m) (1%1)...", "%"];
_progress progressSetPosition 0.01;
_cP = 0.0001;
if (_rip) then {
    while {
        true
    }
    do {
        sleep 2;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["Rabujesz stacje pozostan w poblizu! (10m) (%1%2)...", round(_cP * 100), "%"];
        _Pos = position player;
        _marker = createMarker["Marker100", _Pos];
        "Marker100"
        setMarkerColor "ColorRed";
        "Marker100"
        setMarkerText "!UWAGA! napad !UWAGA!";
        "Marker100"
        setMarkerType "mil_warning";
        if (_cP >= 1) exitWith {};
        if (_robber distance _shop > 10.5) exitWith {};
        if ! (alive _robber) exitWith {};
    }; if ! (alive _robber) exitWith {
        _rip = false;
    };
    if (_robber distance _shop > 10.5) exitWith {
        deleteMarker "Marker100";
        _shop switchMove "";
        hint "Musisz stac obok miejsca rabunku (10m)";
        5 cutText["", "PLAIN"];
        _rip = false;
    };
    5 cutText["", "PLAIN"];
    titleText[format["Ukradles $%1, teraz uciekaj!", [_kassa] call life_fnc_numberText], "PLAIN"];
    deleteMarker "Marker100";
    gl_money_cash = gl_money_cash + _kassa;
    _rip = false;
    life_use_atm = false;
    sleep(30 + random(180));
    life_use_atm = true;
    if ! (alive _robber) exitWith {};
    [getPlayerUID _robber, name _robber, "312"] remoteExec["life_fnc_wantedAdd", 2];
};
sleep 300;
_action = _shop addAction["Napadnij na stacje", life_fnc_robstore];
_shop switchMove "";