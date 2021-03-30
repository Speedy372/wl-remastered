#include "script_macros.hpp"
private["_busDepotName", "_huj"];
if ((lbCurSel 1500) isEqualTo - 1) exitWith {
    hint "Nie wybrano miejsca docelowego";
};
private _error = false;
private _niemakasy = false;
busTo = lbData[1500, (lbCurSel 1500)];
busToMarker = getMarkerPos busTo;
disableSerialization;
closeDialog 0;
private _side =
switch (playerSide) do {
case west:
    {
        "Cop"
    };
case independent:
    {
        "Medic"
    };
default {
        "Civilian"
    };
}; private _dis = round(busToMarker distance(getPos player));
private _multiplyer = getNumber(missionConfigFile >> "Toxic_Bus_Config" >> _side >> "multipler");
private _tripTotal = 2500;
private _busStops = getArray(missionConfigFile >> "Toxic_Bus_Config" >> _side >> "stops");
private _payment = getText(missionConfigFile >> "Toxic_Bus_Config" >> "payment");
private _type = getNumber(missionConfigFile >> "Toxic_Bus_Config" >> "bus_3d"); {
    if (busTo isEqualTo(_x select 1)) then {
        _busDepotName = _x select 0;
    };
}
forEach _busStops;
if ! (typeName guiMessage_status isequalto "STRING") exitwith {
    hint "ERROR: typeName guiMessage_status != string"
};
_huj = false;
if ((call life_donator > 0) || (_side isEqualTo "Cop") || (_side isEqualTo "Medic")) then {
    [format["Czy na pewno chcesz podróżować Do %1?", _busDepotName], "Bus", "Tak", "Nie"] spawn life_fnc_guiMsg;
    _huj = true;
} else {
    [format["Czy na pewno chcesz podróżować Do %1? Będzie cię kosztować $%2", _busDepotName, _tripTotal], "Bus", "Tak", "Nie"] spawn life_fnc_guiMsg;
};
waitUntil { ! (typeName guiMessage_status isequalto "STRING")
};
if ! (guiMessage_status) exitWith {
    hint "Użytkownik zdecydował się na anulowanie swoich planów podróży";
};
switch (_payment) do {
case "BANK":
    {
        if ! (_huj) then {
            if (BANK < _tripTotal) then {
                hint "Nie masz dość pieniędzy, aby jechać Busem";
            } else {
                BANK = BANK - _tripTotal;
            };
        };
    }; case "CASH": {
        if ! (_huj) then {
            if (CASH < _tripTotal) then {
                _niemakasy = true;
            } else {
                CASH = CASH - _tripTotal;
            };
        };
    };
default {
        _error = true;
    };
}; if (_niemakasy) exitWith {
    hint "nie masz pieniedzy";
};
if (_error) exitWith {
    hint "ERROR: Payment Config Not Setup!"
};
[6] call SOCK_fnc_updatePartial;
hint "Enjoy You're Trip";
if (_type isEqualTo 1) then {
    showCinemaBorder true;
    player allowDamage false;
    _cam = "camera"
    camCreate(player modelToWorldVisual[-5, 0, 1.85]);
    _cam cameraEffect["internal", "back"];
    _cam camSetFov 9;
    _cam camSetTarget busToMarker;
    _cam camSetRelPos[(((getPosATL player) select 0) - ((getMarkerPos busTo) select 0)), (((getPosATL player) select 1) - ((getMarkerPos busTo) select 1)), (((getPosATL player) select 2) + 250)];
    _cam camCommit 3;
    waitUntil {
        camCommitted _cam
    };
    player setPos busToMarker;
    _cam camSetFov 9;
    _cam camSetTarget vehicle player;
    _cam camCommit 0;
    waitUntil {
        camCommitted _cam
    };
    _cam camSetRelPos[0, 0, 250];
    _cam camCommit 5;
    waitUntil {
        camCommitted _cam
    };
    _cam camSetFOV 9;
    _cam camCommit 0;
    waitUntil {
        camCommitted _cam
    };
    _cam camSetTarget vehicle player;
    _cam camSetRelPos[0, 0, 2];
    _cam camCommit 3;
    waitUntil {
        camCommitted _cam
    };
    _cam cameraEffect["terminate", "back"];
    showCinemaBorder false;
    hint "Przybyłeś do swojego miejsca docelowego";
    camDestroy _cam;
    player allowDamage true;
} else {
    showCinemaBorder true;
    player allowDamage false;
    _cam = "camera"
    camCreate(player modelToWorldVisual[-5, 0, 1.85]);
    _cam cameraEffect["internal", "back"];
    _cam camSetFov 9;
    _cam camSetTarget busToMarker;
    _cam camSetRelPos[(((getPosATL player) select 0) - ((getMarkerPos busTo) select 0)), (((getPosATL player) select 1) - ((getMarkerPos busTo) select 1)), (((getPosATL player) select 2) + 250)];
    _cam camCommit 3;
    waitUntil {
        camCommitted _cam
    };
    camDestroy _cam;
    _cam cameraEffect["terminate", "back"];
    showCinemaBorder true;
    createDialog "Toxic_Bus_Menu";
    _display = uiNamespace getVariable "Toxic_Bus_Menu";
    ctrlShow[1000, false];
    ctrlShow[1001, false];
    ctrlShow[2200, false];
    ctrlShow[1500, false];
    ctrlShow[2400, false];
    _map = _display displayCtrl 1919;
    sleep 0.5;
    player setPos busToMarker;
    _map ctrlMapAnimAdd[5, 0.1, player];
    ctrlMapAnimCommit _map;
    sleep 5;
    showCinemaBorder true;
    closeDialog 0;
    _cam = "camera"
    camCreate(player modelToWorldVisual[0, 0, 250]);
    _cam cameraEffect["internal", "back"];
    _cam camSetFOV 9;
    _cam camCommit 0;
    waitUntil {
        camCommitted _cam
    };
    _cam camSetTarget vehicle player;
    _cam camSetRelPos[0, 0, 2];
    _cam camCommit 3;
    waitUntil {
        camCommitted _cam
    };
    _cam cameraEffect["terminate", "back"];
    showCinemaBorder false;
    hint "Przybyłeś do swojego miejsca docelowego";
    camDestroy _cam;
    player allowDamage true;
};