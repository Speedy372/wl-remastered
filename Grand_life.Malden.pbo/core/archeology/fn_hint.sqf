private["_messageType", "_message", "_messageTitle"];
_messageType = [_this, 0, 0, [0, []]] call BIS_fnc_param;
_message = [_this, 1, "", ["", []]] call BIS_fnc_param;
_messageTitle = [_this, 2, "", ["", []]] call BIS_fnc_param;
if (!hasInterface) exitWith {};
if (_message == "") exitWith {};
if (typeName _message != "ARRAY") then {
    _message = [_message]
};
_message = format _message;
if (typeName _messageTitle != "ARRAY") then {
    _messageTitle = [_messageTitle]
};
if (count _messageTitle > 0) then {
    private["_messageTitleText", "_messageTitleColor", "_messageTitleSize"];
    _messageTitleText = [_messageTitle, 0, "Wiadomość", [""]] call BIS_fnc_param;
    _messageTitleColor = [_messageTitle, 1, "#ffffff", [""]] call BIS_fnc_param;
    _messageTitleSize = [_messageTitle, 2, 1.5, [0]] call BIS_fnc_param;
    _messageTitle set[1, _messageTitleColor];
    _messageTitle set[2, _messageTitleSize];
};
(
switch _messageType) do {
case 1:
    {
        if (count _messageTitle > 0) then {
            if (count _messageTitle > 0) then {
                hint parseText format["<t color='%1' shadow='0' size='%2'>%3</t><br/>%4", _messageTitle select 1, _messageTitle select 2, _messageTitle select 0, _message];
            } else {
                hint format["%1", _message];
            };
        };
    };
case 2:
    {
        titleText[_message, "PLAIN"]
    };
};