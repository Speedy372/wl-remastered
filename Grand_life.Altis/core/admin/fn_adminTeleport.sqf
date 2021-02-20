#include "script_macros.hpp"
if (FETCH_CONST(life_adminlevel) < 2) exitWith {
    closeDialog 0;
};
closeDialog 0;
openMap[true, false];
onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call life_fnc_teleport";
_log = format["%1, %2 uzyl teleportacji", name player, getPlayerUID player];
[_log, "admin"] remoteExecCall["A3Log", 2];