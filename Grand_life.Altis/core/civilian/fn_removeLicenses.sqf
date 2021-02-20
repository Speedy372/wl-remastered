#include "script_macros.hpp"
private "_state";
_state = param[0, 1, [0]];
switch (_state) do {
case 0:
    {};
case 1:
    {
        missionNamespace setVariable[LICENSE_VARNAME("heroin", "civ"), false];
        missionNamespace setVariable[LICENSE_VARNAME("marijuana", "civ"), false];
        missionNamespace setVariable[LICENSE_VARNAME("cocaine", "civ"), false];
        missionNamespace setVariable[LICENSE_VARNAME("hajs", "civ"), false];
        missionNamespace setVariable[LICENSE_VARNAME("hooch", "civ"), false];
    };
case 2:
    {};
case 3:
    {};
case 4:
    {
        missionNamespace setVariable[LICENSE_VARNAME("driver", "civ"), false];
        missionNamespace setVariable[LICENSE_VARNAME("trucking", "civ"), false];
        hint localize "STR_Civ_LicenseRevoked";
    };
case 100:
    {
        missionNamespace setVariable[LICENSE_VARNAME("bountyH", "civ"), true];
    };
};