#include "script_macros.hpp"
if (FETCH_CONST(life_adminlevel) < 6) exitWith {
    closeDialog 0;
    hint localize "STR_NOTF_adminDebugCon";
};
life_admin_debug = true;
createDialog "RscDisplayDebugPublic";
[0, format[localize "STR_NOTF_adminHasOpenedDebug", profileName]] remoteExecCall["life_fnc_broadcast", RCLIENT];