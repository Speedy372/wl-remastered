#include "script_macros.hpp"
private["_inv", "_val", "_var", "_robber"];
params[["_cop", objNull, [objNull]]];
if (isNull _cop) exitWith {};
_inv = [];
_robber = false; {
    _var = configName(_x);
    _val = ITEM_VALUE(_var);
    if (_val > 0) then {
        _inv pushBack[_var, _val];
        [false, _var, _val] call life_fnc_handleInv;
    };
}
forEach("getNumber(_x >> 'illegal') isEqualTo 1"
configClasses(missionConfigFile >> "VirtualItems"));
if (!life_use_atm) then {
    CASH = 0;
    _robber = true;
};
[player, _inv, _robber] remoteExec["life_fnc_copSearch", _cop];