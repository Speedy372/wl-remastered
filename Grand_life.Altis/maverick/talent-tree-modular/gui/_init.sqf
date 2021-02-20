scriptName "_init";#define __filename "_init.sqf"#include "maverick\talent-tree-modular\gui\_config.sqf"
disableSerialization;
private _configs = (format["((configName _x) find '%1' == 0)", _dialogPrefix]) configClasses missionConfigFile;
_configs append((format["((configName _x) find '%1' == 0)", _dialogPrefix]) configClasses(missionConfigFile >> "RscTitles"));
missionNamespace setVariable[format["%1_master_script", _dialogPrefix], compile preprocessFileLineNumbers "maverick\talent-tree-modular\gui\_master.sqf"]; {
    try {
        private _scriptLocation = getText(_x >> "scriptPath");
        if (_scriptLocation == "") throw format["Dialog %1 does not implement scriptPath", configName _x];
        private _dialogScriptAsString = preprocessFileLineNumbers _scriptLocation;
        missionNamespace setVariable[format["%1_script", configName _x], compileFinal _dialogScriptAsString];
        [format["[%1] %2", __filename, "GUI script registered on variable " + format["%1_script", configName _x]]] call BIS_fnc_log;
    } catch {
        [format["[%1] %2", __filename, _exception]] call BIS_fnc_error;
    };
}
forEach _configs; {
    try {
        _functionLocation = _x select 0;
        _functionName = _x select 1;
        private _functionText = preprocessFileLineNumbers _functionLocation;
        missionNamespace setVariable[_functionName, compile _functionText];
    } catch {
        [format["[%1] %2", __filename, _exception]] call BIS_fnc_error;
    };
}
forEach _functionsPrecompiled;