#include "script_macros.hpp"#define ctrlSelData(ctrl)(lbData[##ctrl, (lbCurSel##ctrl)])
private["_ctrl", "_num", "_totalWeight", "_itemWeight", "_veh_data", "_inv", "_index", "_val"];
disableSerialization;
_ctrl = param[0, ""];
_num = param[1, 0];
life_trunk_vehicle = param[2, objNull];
if (_num < 1) exitWith {
    hint localize "STR_MISC_Under1";
};
_totalWeight = [life_trunk_vehicle] call life_fnc_vehicleWeight;
_itemWeight = ([_ctrl] call life_fnc_itemWeight) * _num;
_veh_data = life_trunk_vehicle getVariable["Trunk", [[], 0]];
_inv = _veh_data select 0;
if (_ctrl == "goldbar" && { ! (life_trunk_vehicle isKindOf "LandVehicle")
}) exitWith {
    hint localize "STR_NOTF_canOnlyStoreInLandVeh";
};
if (_ctrl == "dokument" && { ! (life_trunk_vehicle isKindOf "LandVehicle")
}) exitWith {
    hint localize "STR_NOTF_canOnlyStoreInLandVeh";
};
if (_ctrl == "uran_niep" && { ! (life_trunk_vehicle isKindOf "LandVehicle")
}) exitWith {
    hint localize "STR_NOTF_canOnlyStoreInLandVeh";
};
if (_ctrl == "uran_ocz" && { ! (life_trunk_vehicle isKindOf "LandVehicle")
}) exitWith {
    hint localize "STR_NOTF_canOnlyStoreInLandVeh";
};
if (_ctrl == "uran_przetw" && { ! (life_trunk_vehicle isKindOf "LandVehicle")
}) exitWith {
    hint localize "STR_NOTF_canOnlyStoreInLandVeh";
};
if (_ctrl == "uran_wzb" && { ! (life_trunk_vehicle isKindOf "LandVehicle")
}) exitWith {
    hint localize "STR_NOTF_canOnlyStoreInLandVeh";
};
if (_ctrl == "uran_pret" && { ! (life_trunk_vehicle isKindOf "LandVehicle")
}) exitWith {
    hint localize "STR_NOTF_canOnlyStoreInLandVeh";
};
if (_ctrl == "uran_brud" && { ! (life_trunk_vehicle isKindOf "LandVehicle")
}) exitWith {
    hint localize "STR_NOTF_canOnlyStoreInLandVeh";
};
if (_ctrl == "money") then {
    _index = [_ctrl, _inv] call TON_fnc_index;
    if (CASH < _num) exitWith {
        hint localize "STR_NOTF_notEnoughCashToStoreInVeh";
    };
    if (_index isEqualTo - 1) then {
        _inv pushBack[_ctrl, _num];
    } else {
        _val = _inv select _index select 1;
        _inv set[_index, [_ctrl, _val + _num]];
    };
    CASH = CASH - _num;
    [0] call SOCK_fnc_updatePartial;
    life_trunk_vehicle setVariable["Trunk", [_inv, (_veh_data select 1) + _itemWeight], true];
    [life_trunk_vehicle] call life_fnc_vehInventory;
} else {
    if (((_totalWeight select 1) + _itemWeight) > (_totalWeight select 0)) exitWith {
        hint localize "STR_NOTF_VehicleFullOrInsufCap";
    };
    _index = [_ctrl, _inv] call TON_fnc_index;
    if (_index isEqualTo - 1) then {
        _inv pushBack[_ctrl, _num];
    } else {
        _val = _inv select _index select 1;
        _inv set[_index, [_ctrl, _val + _num]];
    };
    life_trunk_vehicle setVariable["Trunk", [_inv, (_veh_data select 1) + _itemWeight], true];
};
life_trunk_vehicle = objNull;