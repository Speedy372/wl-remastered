#include "script_macros.hpp"
_unit = player;
life_gopro = 5400;
[] call life_fnc_hudUpdate;
while {
    life_gopro > 0
}
do {
    if (deadPlayer) exitWith {
        life_gopro = 0;
    };
};
["Gopro się wyłączyło", "info", 5 ] call pedro_fnc_pow;
[] call life_fnc_hudUpdate;
life_smoking = false;