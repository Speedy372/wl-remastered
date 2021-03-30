#include "script_macros.hpp"
private["_uid", "_ret"];
_uid = [_this, 0, "", [""]] call BIS_fnc_param;
if (_uid isEqualTo "") exitWith {
    false
};
_ret = false; {
    if (isPlayer _x && {
        getPlayerUID _x isEqualTo _uid
    }) exitWith {
        _ret = true;
    };
}
forEach playableUnits;
_ret;