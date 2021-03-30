#define THIS_FUNC FUNC(processChatInput)#include "cau\extendedchat\functions\_defines.inc"
disableSerialization;
params["_ctrl"];
private _text = ctrlText _ctrl;
if (_text == "") exitWith {};
_text = ["formatCondition", _text] call FUNC(emoji);
_text = ["filterGroups", _text] call FUNC(mention);
private _pid = getPlayerUID player;
private _commandPrefix = ["get", VAL_SETTINGS_KEY_COMMAND_PREFIX] call FUNC(settings);
private _commandPrefixFound = ["stringPrefix", [_text, _commandPrefix]] call FUNC(commonTask);
private _vanillaPrefixFound = _text find "#" == 0;
if (_commandPrefixFound || _vanillaPrefixFound) exitWith {
    if (missionNameSpace getVariable[QUOTE(VAR_ENABLE_LOGGING), false]) then {
        ["text", [-2, _text, UNIT_NAME(player), _pid]] remoteExecCall[QUOTE(FUNC(log)), 2];
    };
    if _commandPrefixFound then {
        [_text] call FUNC(processCommand);
    };
    if (_vanillaPrefixFound && !_commandPrefixFound) then {
        private _index = _text find " ";
        if (_index != -1) then {
            _text = _text select[0, _index]
        };
        systemChat _text;
    };
    if ! _vanillaPrefixFound then {
        _ctrl ctrlSetText "";
    };
};
_ctrl ctrlSetText _text;