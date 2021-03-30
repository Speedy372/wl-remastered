#include "script_macros.hpp"
if ((call life_donator) > 0 || (call life_adminlevel) > 0) then {
    license_civ_donatorgun = true;
    [] spawn {
        sleep 15;
        0 enableChannel[true, false];
    };
} else {
    license_civ_donatorgun = false;
};