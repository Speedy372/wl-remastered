_newValue = param[0, "", [""]];
_oldValues = uiNamespace getVariable["compose_number", ""];
_newValues = _oldValues;
if (_newValue isEqualTo "") then {
    _newValues = _oldValues select[0, (count _oldValues) - 1];
    uiNamespace setVariable["compose_number", _newValues];
} else {
    _newValues = _oldValues + _newValue;
};
uiNamespace setVariable["compose_number", _newValues];
ctrlSetText[21001, _newValues];