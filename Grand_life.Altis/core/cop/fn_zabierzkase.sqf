#include "script_macros.hpp"
params[["_robber", objNull, [objNull]]];
if (isNull _robber) exitWith {};
if (CASH > 0) then {
    [CASH, player, _robber] remoteExecCall["life_fnc_dodajkase", _robber];
    CASH = 0;
    hint "Policjant zabral ci pieniadze!";
} else {
    [2, "STR_NOTF_RobFail_cop", true, [profileName]] remoteExecCall["life_fnc_broadcast", _robber];
};
[0] call SOCK_fnc_updatePartial;