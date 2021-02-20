#include "script_macros.hpp"
private["_dp", "_dis", "_price"];
_dp = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
life_delivery_in_progress = false;
life_dp_point = nil;
_dis = round((getPos life_dp_start) distance(getPos _dp));
_price = round(1.7 * _dis);
["DeliverySucceeded", [format[(localize "STR_NOTF_Earned_1"), [_price] call life_fnc_numberText]]] call bis_fnc_showNotification;
life_cur_task setTaskState "Succeeded";
player removeSimpleTask life_cur_task;
_grp = group player;
if (! ((_grp getVariable["gang_id", -1]) isEqualTo - 1)) then {
    _permissions = _grp getVariable["gang_permissions", []];
    _playerpermission = []; {
        if ((_x select 0) isEqualTo(life_gangData select 1)) exitWith {
            _playerpermission = _x;
        };
    }
    forEach _permissions;
    _playerpermission = _playerpermission select 2;
    _tax = _grp getVariable["gang_tax", 0];
    if (! (_tax isEquaLTo 0) && {
        "PAYTAX" in _playerpermission
    }) then {
        _taxsum = _grp getVariable["gang_tax_sum", 0];
        _val = _price * (_tax / 100);
        _grp setVariable["gang_tax_sum", _taxsum + _val, true];
        if (life_hc_isActive) then {
            [15, _grp] remoteExecCall["hc_fnc_gang_update", HC_life];
        } else {
            [15, _grp] remoteExecCall["ton_fnc_gang_update", 2];
        };
        _price = _price - _val;
    };
};
CASH = CASH + _price;
[0] call SOCK_fnc_updatePartial;