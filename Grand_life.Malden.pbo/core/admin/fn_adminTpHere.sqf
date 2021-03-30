#include "script_macros.hpp"
if (FETCH_CONST(life_adminlevel) < 2) exitWith {
    closeDialog 0;
};
private _target = lbData[2902, lbCurSel(2902)];
_target = call compile format["%1", _target];
if (isNil "_target" || isNull _target) exitWith {};
if (_target == player) exitWith {
    hint localize "STR_ANOTF_Error";
};
if (! (vehicle _target isEqualTo _target)) exitWith {
    hint localize "STR_Admin_CannotTpHere"
};
_target setPos(getPos player);
hint format[localize "STR_NOTF_haveTPedToYou", _target getVariable["realname", name _target]];
_log = format["%1, %2 teleportowal gracza %3 %4", name player, getPlayerUID player, name _target, getPlayerUID _target];
[_log, "admin"] remoteExecCall["A3Log", 2];