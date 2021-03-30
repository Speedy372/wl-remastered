#include "script_macros.hpp"
params["_dostaniesz"];
if (life_inv_glticket > 0) then {
    [false, "glticket", 1] call life_fnc_handleInv;
    [true, _dostaniesz, 1] call life_fnc_handleInv;
    ["Wymiana dokonana!", "sucess", 15] call pedro_fnc_pow;
} else {
    ["Nie masz wymaganych przedmiotow!", "error", 15] call pedro_fnc_pow;
};