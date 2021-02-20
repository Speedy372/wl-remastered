#include "script_macros.hpp"#define ctrlSelData(ctrl)(lbData[##ctrl, (lbCurSel##ctrl)])
private["_ctrl", "_num", "_totalWeight", "_itemWeight", "_veh_data", "_inv", "_index", "_val"];
if (!DarfEinzahlen) exitWith {
    [localize "STR_NOTF_Trunk_Store_Stop", true, "fast", "orange", "Error"] spawn Life_fnc_msg;
};
if (DarfEinzahlen) then {
    DarfEinzahlen = false;
    [] spawn {
        sleep 1;
        DarfEinzahlen = true;
    };
};
disableSerialization;
_ctrl = ctrlSelData(3503);
if ((lbCurSel((findDisplay 3500) displayCtrl 3503)) isEqualTo - 1) exitWith {
    hint "Musisz cos wybrac!";
};
if (Life_trunk_vehicle isKindOf "House_F") then {
    _mWeight = 0; {
        _mWeight = _mWeight + ([(typeOf _x)] call Life_fnc_vehicleWeightCfg);
    }
    foreach(Life_trunk_vehicle getVariable["containers", []]);
    _totalWeight = [_mWeight, (Life_trunk_vehicle getVariable["Trunk", [[], 0]]) select 1];
} else {
    _totalWeight = [Life_trunk_vehicle] call Life_fnc_vehicleWeight;
};
_num2 = getNumber(missionConfigFile >> "VirtualItems" >> _ctrl >> "weight");
_num1 = (floor(((_totalWeight select 0) - (_totalWeight select 1)) / _num2));
_num =
if (_num1 <= (ITEM_VALUE(_ctrl))) then {
    _num1
} else {
    (ITEM_VALUE(_ctrl))
};
if (_num < 1) exitWith {
    hint localize "STR_MISC_Under1";
};
_itemWeight = ([_ctrl] call Life_fnc_itemWeight) * _num;
_veh_data = Life_trunk_vehicle getVariable["Trunk", [[], 0]];
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
    if (gl_cash < _num) exitWith {
        hint localize "STR_NOTF_notEnoughCashToStoreInVeh";
    };
    if (_index == -1) then {
        _inv pushBack[_ctrl, _num];
    } else {
        _val = _inv select _index select 1;
        _inv set[_index, [_ctrl, _val + _num]];
    };
    gl_cash = gl_cash - _num;
    Life_trunk_vehicle setVariable["Trunk", [_inv, (_veh_data select 1) + _itemWeight], true];
    [Life_trunk_vehicle] call Life_fnc_vehInventory;
} else {
    if (((_totalWeight select 1) + _itemWeight) > (_totalWeight select 0)) exitWith {
        hint localize "STR_NOTF_VehicleFullOrInsufCap";
    };
    if (! ([false, _ctrl, _num] call Life_fnc_handleInv)) exitWith {
        hint localize "STR_CouldNotRemoveItemsToPutInVeh";
    };
    _index = [_ctrl, _inv] call TON_fnc_index;
    if (_index isEqualTo - 1) then {
        _inv pushBack[_ctrl, _num];
    } else {
        _val = _inv select _index select 1;
        _inv set[_index, [_ctrl, _val + _num]];
    };
    Life_trunk_vehicle setVariable["Trunk", [_inv, (_veh_data select 1) + _itemWeight], true];
    [Life_trunk_vehicle] call Life_fnc_vehInventory;
};
_log = format["%1, %2 schowal %3 do bagaznika w ilosci %4", name player, getPlayerUID player, _ctrl, [_num] call life_fnc_numberText];
[_log, "bagaznikwezschowaj"] remoteExecCall["A3Log", 2];