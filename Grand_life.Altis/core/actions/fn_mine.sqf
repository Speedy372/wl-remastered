#include "script_macros.hpp"
private["_maxGather", "_resource", "_amount", "_requiredItem", "_mined"];
if (life_action_inUse) exitWith {};
if ! (isNull objectParent player) exitWith {};
if (player getVariable "restrained") exitWith {
    ["Jesteś skuty", "error", 5] call pedro_fnc_pow;
};
_exit = false;
if (player getVariable "playerSurrender") exitWith {
    ["Nie można tego robić podczas poddania się", "error", 5] call pedro_fnc_pow;
};
life_action_inUse = true;
_zone = "";
_requiredItem = "";
_resourceCfg = missionConfigFile >> "CfgGather" >> "Minerals";
_percent = (floor random 100) + 1;
for "_i"
from 0 to count(_resourceCfg) - 1 do {
    _curConfig = _resourceCfg select _i;
    _resources = getArray(_curConfig >> "mined");
    _maxGather = getNumber(_curConfig >> "amount");
    _zoneSize = getNumber(_curConfig >> "zoneSize");
    _resourceZones = getArray(_curConfig >> "zones");
    _requiredItem = getText(_curConfig >> "item");
    _mined = "";
    if (_resources isEqualTo[]) exitWith {};
    for "_i"
    from 0 to count(_resources) do {
        if (count _resources isEqualTo 1) exitWith {
            if (! ((_resources select 0) isEqualType[])) then {
                _mined = _resources select 0;
            } else {
                _mined = (_resources select 0) select 0;
            };
        };
        _resource = (_resources select _i) select 0;
        _prob = (_resources select _i) select 1;
        _probdiff = (_resources select _i) select 2;
        if ((_percent >= _prob) && (_percent <= _probdiff)) exitWith {
            _mined = _resource;
        };
    }; { if ((player distance(getMarkerPos _x)) < _zoneSize) exitWith {
            _zone = _x;
        };
    }
    forEach _resourceZones;
    if (_zone != "") exitWith {};
}; if (_zone isEqualTo "") exitWith {
    life_action_inUse = false;
};
if (_requiredItem != "") then {
    _valItem = missionNamespace getVariable "life_inv_" + _requiredItem;
    if (_valItem < 1) exitWith {
        _requiredItem_1 = M_CONFIG(getText, "VirtualItems", _requiredItem, "displayName");
        [format["Potrzebujesz: %1", (localize _requiredItem_1)], "error", 5] call pedro_fnc_pow;
        life_action_inUse = false;
        _exit = true;
    };
};
if (_exit) exitWith {
    life_action_inUse = false;
};
_amount = round(random(_maxGather)) + 1;
_diff = [_mined, _amount, life_carryWeight, life_maxWeight] call life_fnc_calWeightDiff;
if (_diff isEqualTo 0) exitWith {
    ["Nie masz miejsca w ekwipunku", "error", 5] call pedro_fnc_pow;
    life_action_inUse = false;
};
[player, "mining", 35, 1] remoteExecCall["life_fnc_say3D", RCLIENT];
for "_i"
from 0 to 4 do {
    player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    waitUntil {
        animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    };
    sleep 0.5;
}; if (([true, _mined, _diff] call life_fnc_handleInv)) then {
    _itemName = M_CONFIG(getText, "VirtualItems", _mined, "displayName");
    ["Zebrałeś surowce", "", 5] call pedro_fnc_pow;
    _log = format["%1, %2 zebral %3 w ilosci %4", name player, getPlayerUID player, (localize _itemName), _diff];
    [_log, "kopanie"] remoteExecCall["A3Log", 2];
};
sleep 2.5;
life_action_inUse = false;