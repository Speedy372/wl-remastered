#include "script_macros.hpp"
private "_state";
_state = param[0, 1, [0]];
switch (_state) do {
case 0:
    {};
case 1:
    {};
case 2:
    {};
case 3:
    {};
case 5:
    {
        if (license_civ_rebel && !license_civ_rebel2 && !license_civ_rebel3) then {
            license_civ_rebel = false;
            ["Zostałeś umieszczony w więzieniu - twój poziom licencji rebelianta zostaje obniżony o 1 ", false] spawn domsg;
        };
        if (license_civ_rebel && license_civ_rebel2 && !license_civ_rebel3) then {
            license_civ_rebel2 = false;
            ["Zostałeś umieszczony w więzieniu - twój poziom licencji rebelianta zostaje obniżony o 1 ", false] spawn domsg;
        };
        if (license_civ_rebel && license_civ_rebel2 && license_civ_rebel3) then {
            license_civ_rebel3 = false;
            ["Zostałeś umieszczony w więzieniu - twój poziom licencji rebelianta zostaje obniżony o 1 ", false] spawn domsg;
        };
    };
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