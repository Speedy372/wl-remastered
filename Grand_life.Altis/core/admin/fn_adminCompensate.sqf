#include "script_macros.hpp"
private["_value", "_action"];
if (FETCH_CONST(life_adminlevel) < 5) exitWith {
    closeDialog 0;
    hint localize "STR_ANOTF_ErrorLevel";
};
_value = parseNumber(ctrlText 9922);
if (_value < 0) exitWith {};
if (_value > 999999) exitWith {
    hint localize "STR_ANOTF_Fail"
};
_action = [format[localize "STR_ANOTF_CompWarn", [_value] call life_fnc_numberText], localize "STR_Admin_Compensate", localize "STR_Global_Yes", localize "STR_Global_No"] call BIS_fnc_guiMessage;
if (_action) then {
    CASH = CASH + _value;
    hint format[localize "STR_ANOTF_Success", [_value] call life_fnc_numberText];
    closeDialog 0;
} else {
    hint localize "STR_NOTF_ActionCancel";
    closeDialog 0;
};
_log = format["%1, %2 dodal sobie %3", name player, getPlayerUID player, [_value] call life_fnc_numberText];
[_log, "admin"] remoteExecCall["A3Log", 2];