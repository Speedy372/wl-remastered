scriptName "_master";#define __filename "_master.sqf"#include "maverick\talent-tree-modular\gui\_config.sqf"
disableSerialization;
try {
    params[["_parameters", [displayNull], [[]]], ["_mode", "", [""]]];
    if (count _parameters < 1) throw "Not enough parameters given";
    private _caller = _parameters select 0;
    private _display = displayNull;
    switch (typeName _caller) do {
    case "DISPLAY":
        {
            ["Control was DISPLAY"] call BIS_fnc_log;
            _display = _caller;
        }; case "CONTROL": {
            ["Control was CONTROL"] call BIS_fnc_log;
            _display = ctrlParent _caller;
        };
    default {
            throw "Caller isn't display or control";
        };
    }; if (_display == displayNull) throw "Assosiated display cannot be found";
    private _iddString = [str _display, ((str _display) find "#") + 1] call BIS_fnc_trimString;
    private _configsOfDialogs = (format["((configName _x) find '%1' == 0)", _dialogPrefix]) configClasses missionConfigFile;
    _configsOfDialogs append((format["((configName _x) find '%1' == 0)", _dialogPrefix]) configClasses(missionConfigFile >> "RscTitles"));
    private _configName = ""; {
        if (str(getNumber(_x >> "IDD")) == _iddString) then {
            _configName = configName _x;
        };
    }
    forEach _configsOfDialogs;
    if (_configName == "") throw "Config name of display could not be found";
    ["GUI event request found to be executed in config " + _configName + " with IDD " + _iddString + " in dialog master script file " + format["%1_script", _configName]] call BIS_fnc_log;
    [_mode, _parameters, _display] spawn(missionNamespace getVariable[format["%1_script", _configName], {}]);
} catch {
    [format["[%1] %2", __filename, _exception]] call BIS_fnc_error;
};