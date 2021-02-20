#include "script_macros.hpp"#define SPY_SETTINGS(TYPE, SETTING) TYPE(missionConfigFile >> "SpyGlass" >> SETTING)
private["_BIS_Functions", "_LIFE_Functions", "_SERVER_Functions", "_SOCK_Functions", "_DB_Functions", "_allowedVariables", "_checkFunction", "_BIS_UI_Functions", "_allowedVariables_UI", "_profileCount"];
_BIS_Functions = SPY_SETTINGS(getArray, "BIS_Functions");
_BIS_UI_Functions = SPY_SETTINGS(getArray, "BIS_UI_Functions");
_LIFE_Functions = SPY_SETTINGS(getArray, "LIFE_Functions");
_SERVER_Functions = SPY_SETTINGS(getArray, "SERVER_Functions");
_SOCK_Functions = SPY_SETTINGS(getArray, "SOCK_Functions");
_DB_Functions = SPY_SETTINGS(getArray, "DB_Functions");
_SPY_Functions = SPY_SETTINGS(getArray, "SPY_Functions");
_allowedVariables = SPY_SETTINGS(getArray, "allowedVariables");
_allowedVariables_UI = SPY_SETTINGS(getArray, "allowedVariables_UI");
_profileCount = count allVariables profileNameSpace;
for "_i"
from 1 to 125 do {
    if (_i <= SPY_SETTINGS(getNumber, "civSlotNumber")) then {
        _allowedVariables pushBack[format["civ_%1", _i], "OBJECT"]
    };
    if (_i <= SPY_SETTINGS(getNumber, "copSlotNumber")) then {
        _allowedVariables pushBack[format["cop_%1", _i], "OBJECT"]
    };
    if (_i <= SPY_SETTINGS(getNumber, "medSlotNumber")) then {
        _allowedVariables pushBack[format["medic_%1", _i], "OBJECT"]
    };
}; { if (!isNil _x) then {
        if (! (_x in _BIS_Functions)) then {
            if (! (_x in _LIFE_Functions)) then {
                if (! (_x in _SERVER_Functions)) then {
                    if (! (_x in _SOCK_Functions)) then {
                        if (! (_x in _DB_Functions)) then {
                            if (! (_x in _BIS_UI_Functions)) then {
                                if (! (_x in _SPY_Functions)) then {
                                    _varType = typeName(uiNamespace getVariable _x);
                                    _find = _allowedVariables find[_x, _varType];
                                    if (_find isEqualTo - 1) then {
                                        uiNamespace setVariable[_x, nil];
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
    };
}
forEach(allVariables uiNamespace);
_checkFunction = {
    {
        if (!isNil _x) then {
            if (! (_x in _BIS_Functions)) then {
                if (! (_x in _LIFE_Functions)) then {
                    if (! (_x in _SERVER_Functions)) then {
                        if (! (_x in _SOCK_Functions)) then {
                            if (! (_x in _DB_Functions)) then {
                                if (! (_x in _SPY_Functions)) then {
                                    _varType = typeName(missionNamespace getVariable _x);
                                    _find = _allowedVariables find[_x, _varType];
                                    if (_find isEqualTo - 1) then {
                                        diag_log format[localize "STR_SpyDetect_Variable_MN", _x, _varType];
                                        failMission "SpyGlass";
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
    }
    forEach allVariables missionNamespace;
};
_uiCheckFunction = {
    {
        if (!isNil _x) then {
            if (! (_x in _BIS_UI_Functions)) then {
                _varType = typeName(uiNamespace getVariable _x);
                _find = _allowedVariables_UI find[_x, _varType];
                if (_find isEqualTo - 1) then {
                    diag_log format[localize "STR_SpyDetect_Variable_UI", _x, _varType];
                    failMission "SpyGlass";
                };
            };
        };
    }
    forEach allVariables uiNamespace;
};
for "_i"
from 0 to 1 step 0 do {
    objNull call _checkFunction;
    uiSleep 10;
    objNull call _uiCheckFunction;
    if ! ((count allVariables profileNameSpace) isEqualTo _profileCount) then {
        failMission "SpyGlass";
    };
    if ! ((count allVariables parsingNamespace) isEqualTo 0) then {
        {
            if ! (_x in ["bis_rscdebugconsoleexpressionresultctrl", "bis_rscdebugconsoleexpressionresulthistory"]) then {
                failMission "SpyGlass";
            };
            true;
        }
        count(allVariables parsingNamespace);
    };
    uiSleep(5 * 60);
};