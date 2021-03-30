#define DISPLAY_NAME CAU_UserInputMenus_displayText#include "cau\userinputmenus\systems\_defines.inc"
params[["_parameters", [], [[]]], ["_title", "", [""]], ["_code", {},
[{}]], ["_button1", "", [""]], ["_button2", 0, [""]], ["_parentDisplay", displayNull, [displayNull]]];
_parameters params[["_multiLine", false, [true]], ["_startText", "", [""]]];
if (!isNull _parentDisplay) then {
    _parentDisplay createDisplay([QUOTE(DISPLAY_NAME), QUOTE(JOIN(DISPLAY_NAME, Multi))] select _multiLine);
} else {
    createDialog([QUOTE(DISPLAY_NAME), QUOTE(JOIN(DISPLAY_NAME, Multi))] select _multiLine);
};
private _return = {
    params["_display", "_confirmed"];
    USE_CTRL(_ctrlInput, IDC_INPUT);
    private _code = _display getVariable["code", {}];
    private _text = ["", ctrlText _ctrlInput] select _confirmed;
    _display closeDisplay 2;
    _code call {
        private["_display", "_ctrlInput", "_code"];
        [] call _this;
    };
};#include "cau\userinputmenus\systems\_common.inc"
_ctrlInput ctrlSetText _startText;
ctrlSetFocus _ctrlInput;