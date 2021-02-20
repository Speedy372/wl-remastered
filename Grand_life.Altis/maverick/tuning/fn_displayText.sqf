scriptName "fn_displayText";#define __filename "fn_displayText.sqf"
disableSerialization;
4999 cutRsc["maverick_dialog_tuning_text", "PLAIN"];
_display = uiNamespace getVariable["maverick_dialog_tuning_text", displayNull];
_ctrl = _display displayCtrl 0;
_ctrl ctrlSetStructuredText parseText(param[0, "", [""]]);