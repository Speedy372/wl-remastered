#include "script_macros.hpp"
if (isNil "life_adminlevel") exitWith {};
if (isServer && { ! hasInterface
}) exitWith {};
if (FETCH_CONST(life_adminlevel) < 1) exitWith {};
hint parseText format[localize "STR_SpyDetect_CheaterFlagged", (_this select 0), (_this select 1)];