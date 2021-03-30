scriptName "fn_tuning_prepareString";#define __filename "fn_tuning_prepareString.sqf"
_toDatabase = param[0, false, [false]];
_string = param[1, "", [""]];
if (_string == "") then {
    ""
};
if (!isServer) exitWith {};
_stringArray = [];
if (_toDatabase) then {
    _stringArray = toArray _string;
    _newString = []; {
        switch (_x) do {
        case 34:
            {
                _newString pushBack 94;
            };
        case 92:
            {
                _newString pushBack 92;
                _newString pushBack 92;
            };
        default {
                _newString pushBack _x;
            };
        };
    }
    forEach _stringArray;
    _stringArray = _newString;
} else {
    _stringArray = toArray _string; {
        if (_x == 94) then {
            _stringArray set[_forEachIndex, 34];
        };
    }
    forEach _stringArray;
};
(toString _stringArray)