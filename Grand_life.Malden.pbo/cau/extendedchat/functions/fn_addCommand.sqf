#define THIS_FUNC FUNC(addCommand)#include "cau\extendedchat\functions\_defines.inc"
params[["_command", "", [""]], ["_code", {},
[{}]], ["_preventOverwrite", true, [true]]];
private _success = false;
if (_command != "" && !(_code isEqualTo {})) then {
    private _commands = VAR_COMMANDS_ARRAY;
    private _index = _commands findIf {
        _x #0= =_command
    };
    if (_index > -1 && {
        _commands#_index #2}) exitWith{};if(_index= =-1) then {
            _index = count _commands
        }; _commands set[_index, [_command, _code, _preventOverwrite]]; _success = true;
    };
    _success