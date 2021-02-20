#include "script_macros.hpp"
private["_robber", "_shop", "_ui", "_progress", "_pgText", "_cP", "_rip", "_pos", "_amount"];
_shop = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;
_robber = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_param;
_action = [_this, 2] call BIS_fnc_param;
if (side _robber != civilian) exitWith {
    hint "Nie możesz tego zrobić!"
};
if (_robber distance _shop > 30) exitWith {
    hint "Nie mozesz byc dalej niz 30 m!"
};
if (vehicle player != _robber) exitWith {
    hint "Musisz wyjsc z pojazdu!"
};
_cops = (west countSide playableUnits);
if (_cops < 4) exitWith {
    hint "Napad jest mozliwy od 4 policjantow online!";
};
if ! (alive _robber) exitWith {};
if (_rip) exitWith {
    hint "Rabowanie w toku!"
};
_rip = true;
_shop removeAction _action;
[[1, 2], "STR_ISTR_Bolt_AlertSmall", true, []] remoteExecCall["life_fnc_broadcast", RCLIENT];
["dbank", false] remoteExec["life_fnc_dispatch", west];
disableSerialization;
5 cutRsc["life_progress", "PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Rabujesz bank pozostan w poblizu! (30m) (1%1)...", "%"];
_progress progressSetPosition 0.01;
_cP = 0.0001;
if (_rip) then {
    while {
        true
    }
    do {
        sleep 7;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["Rabujesz bank pozostan w poblizu! (30m) (%1%2)...", round(_cP * 100), "%"];
        _Pos = position player;
        _marker = createMarker["Marker300", _Pos];
        "Marker300"
        setMarkerColor "ColorRed";
        "Marker300"
        setMarkerText "!UWAGA! napad !UWAGA!";
        "Marker300"
        setMarkerType "mil_warning";
        if (_cP >= 1) exitWith {};
        if (_robber distance _shop > 30.5) exitWith {};
        if ! (alive _robber) exitWith {};
    }; if ! (alive _robber) exitWith {
        _rip = false;
        _action = _shop addAction["Obrabuj", life_fnc_robSmallBank];
        deleteMarker "Marker300";
        5 cutText["", "PLAIN"];
    };
    if (_robber distance _shop > 30.5) exitWith {
        deleteMarker "Marker300";
        hint "Odszedłeś za daleko i sejf zamknął się na dobre...";
        5 cutText["", "PLAIN"];
        _rip = false;
    };
    5 cutText["", "PLAIN"];
    _amount = (round(random 4)) + 2;
    titleText[format["Ukradles %1 sztabek, teraz uciekaj!", [_amount] call life_fnc_numberText], "PLAIN"];
    deleteMarker "Marker300";
    [true, "goldbar", _amount] call life_fnc_handleInv;
    _rip = false;
    life_use_atm = false;
    sleep(30 + random(180));
    life_use_atm = true;
    if ! (alive _robber) exitWith {};
    [getPlayerUID _robber, name _robber, "312"] remoteExec["life_fnc_wantedAdd", 2];
};