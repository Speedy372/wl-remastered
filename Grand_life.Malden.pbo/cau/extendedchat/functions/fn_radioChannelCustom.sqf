#define THIS_FUNC FUNC(radioChannelCustom)#include "cau\extendedchat\functions\_defines.inc"
SWITCH_SYS_PARAMS;
switch (tolower _mode) do {
case "radiochannelcreate":
    {
        if ! isServer exitWith { - 1
        };
        _params params[["_colour", [1, 1, 1, 1], [[]], 4], ["_label", "", [""]], ["_callSign", "", [""]], ["_units", [], [[]]]];
        if (_callSign == "") then {
            _callSign = "(%UNIT_GRP_NAME) %UNIT_NAME"
        };
        private _id = radioChannelCreate[_colour, _label, _callSign, [], false];
        if (_label == "") then {
            _label = format["Radio Channel %1", _id];
            ["radioChannelSetLabel", [_id, _label]] call THIS_FUNC;
        };
        ["radioChannelAdd", [_id, _units]] call THIS_FUNC;
        _id
    }; case "radiochanneladd": {
        if ! isServer exitWith {};
        _params params[["_id", -1, [0]], ["_units", [], [[]]]];
        if (_id < 1) exitWith {};
        _id radioChannelAdd _units;
    };
case "radiochannelremove":
    {
        if ! isServer exitWith {};
        _params params[["_id", -1, [0]], ["_units", [], [[]]]];
        if (_id < 1) exitWith {};
        _id radioChannelRemove _units;
    };
case "radiochannelsetlabel":
    {
        if ! isServer exitWith {};
        _params params[["_id", -1, [0]], ["_label", "", [""]]];
        if (_id < 1 || _label == "") exitWith {};
        _id radioChannelSetLabel _label;
    };
case "radiochannelsetcallsign":
    {
        if ! isServer exitWith {};
        _params params[["_id", -1, [0]], ["_callSign", "", [""]]];
        if (_id < 1 || _callSign == "") exitWith {};
        _id radioChannelSetCallSign _callSign;
    };
case "get":
    {
        _params params[["_id", -1, [0]], ["_index", -1, [0]]];
        if (-1 in [_id, _index]) exitWith {};
        (radioChannelInfo _id)#_index;
    };
};