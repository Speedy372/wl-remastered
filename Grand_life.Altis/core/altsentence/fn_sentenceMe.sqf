#include "script_macros.hpp"
private["_time", "_bail", "_esc", "_countDown"];
params[["_ret", [], [[]]], ["_bad", false, [false]], ["_time", 15, [0]]];
_time = time + (_time * 60);
if (count _ret > 0) then {
    life_bail_amount = SEL(_ret, 2);
} else {
    life_bail_amount = 1500;
};
_esc = false;
_bail = false;
if (_time <= 0) then {
    _time = time + (15 * 60);
    hint "Napisz do Admina: JAIL_FALLBACK_15, czas jest zero!";
};
[_bad, _time] spawn {
    life_canpay_bail = false;
    life_bail_amount = life_bail_amount * 5;
    if (_this select 0) then {
        sleep((_this select 1) * 0.5);
    } else {
        sleep((_this select 1) * 0.2);
    };
    life_canpay_bail = nil;
};
for "_i"
from 0 to 1 step 0 do {
    if ((round(_time - time)) > 0) then {
        _countDown =
        if (round(_time - time) > 60) then {
            format["%1 minut(y)", round(round(_time - time) / 60)]
        } else {
            format["%1 sekund(y)", round(_time - time)]
        };
        hint format["Pozostały Czas:\n %1\n", _countDown];
    };
    if (player distance(getMarkerPos "altsentence") > 350) exitWith {
        _esc = true;
    };
    if ((round(_time - time)) < 1) exitWith {
        hint ""
    };
    if (!alive player && ((round(_time - time)) > 0)) exitWith {};
    sleep 1;
}; switch (true) do {
case(_esc):
    {
        hint "Uciekłeś z prac społecznych";
        [0, "%1 uciekł z prac społecznych!", true, [profileName]] remoteExecCall["life_fnc_broadcast", RCLIENT];
        if (life_HC_isActive) then {
            [getPlayerUID player, profileName, "902"] remoteExecCall["HC_fnc_wantedAdd", HC_Life];
        } else {
            [getPlayerUID player, profileName, "902"] remoteExecCall["life_fnc_wantedAdd", RSERV];
        };
        [] call life_fnc_deleteGarbage;
        removeVest player;
        player setVariable["inJob", false, true];
        [5] call SOCK_fnc_updatePartial;
    };
case(alive player && !_esc):
    {
        hint "Skończyłeś przymusowe prace społeczne.";
        if (life_HC_isActive) then {
            [getPlayerUID player] remoteExecCall["HC_fnc_wantedRemove", HC_Life];
        } else {
            [getPlayerUID player] remoteExecCall["life_fnc_wantedRemove", RSERV];
        };
        player setPos(getMarkerPos "jail_release");
        [] call life_fnc_endJob;
        [5] call SOCK_fnc_updatePartial;
    };
};