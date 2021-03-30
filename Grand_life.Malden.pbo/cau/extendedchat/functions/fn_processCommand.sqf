#define THIS_FUNC FUNC(processChatCommand)#include "cau\extendedchat\functions\_defines.inc"
params["_text"];
private _split = _text splitString " ";
systemChat(_split #0);private _prefix= ["get", VAL_SETTINGS_KEY_COMMAND_PREFIX] call FUNC(settings); private _command = _split #0 select[count _prefix];
private _index= VAR_COMMANDS_ARRAY findIf {
    _x #0= =_command
};
if (_index != -1) then {
    private _arguments = _split select[1, count _split];
    private _argumentsRaw = _text select[count(_split #0)+1];_arguments call(VAR_COMMANDS_ARRAY# _index #1);};nil
