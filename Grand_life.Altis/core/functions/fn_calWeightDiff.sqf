#include "script_macros.hpp"
if ! (params[["_item", "", [""]], ["_value", -1, [0]], ["_cWeight", -1, [0]], ["_mWeight", -1, [0]]]) exitWith { - 1
};
private _iWeight = [_item] call life_fnc_itemWeight;
if (_iWeight isEqualTo 0) exitWith {
    _value
};
(floor((_mWeight - _cWeight) / _iWeight)) min _value;