params[["_text", "", [""]], ["_notiftype", "success", ["", [], {}]], ["_speed", 5, [5]]];
if (isDedicated || !hasInterface) exitWith {};
if (isNil "current_notifications") then {
    current_notifications = [];
};
disableSerialization;
_display = findDisplay 46;
_TitleColour = "";
_alpha = 1;
switch (_notiftype) do {
case "info":
    {
        _TitleColour = [0.129, 0.588, 0.953, _alpha];
    }; case "error": {
        _TitleColour = [0.957, 0.263, 0.212, _alpha];
    };
case "warning":
    {
        _TitleColour = [1, 0.757, 0.027, _alpha];
    };
case "success":
    {
        _TitleColour = [0.298, 0.686, 0.314, _alpha];
    };
case "event":
    {
        _TitleColour = [0.7, 0, 0.7, _alpha];
    };
default {
        _TitleColour = [0.298, 0.686, 0.314, _alpha];
    };
}; if (_text isEqualType "") then {
    _text = parseText _text;
};
playSound "HintExpand";
private _Title = _display ctrlCreate["RscText", -1];
_Title ctrlSetPosition[0.8035 * safezoneW + safezoneX, 0.2 * safezoneH + safezoneY, 0.002 * safezoneW, 0.015 * safezoneH];
_Title ctrlSetBackgroundColor _TitleColour;
_Title ctrlSetFade 1;
_Title ctrlCommit 0;
_Title ctrlSetFade 0;
_Title ctrlCommit 0.4;
private _Message = _display ctrlCreate["RscStructuredText", -1];
_Message ctrlSetStructuredText _text;
_Message ctrlSetPosition[0.805 * safezoneW + safezoneX, 0.2 * safezoneH + safezoneY, 0.185 * safezoneW, 0.015 * safezoneH];
_Message ctrlCommit 0;
_Message ctrlSetPosition[0.805 * safezoneW + safezoneX, 0.2 * safezoneH + safezoneY, 0.185 * safezoneW, ((ctrlTextHeight _Message) + (0.005 * safezoneH))];
_Message ctrlCommit 0;
_Message ctrlSetBackgroundColor[0.129, 0.129, 0.129, 0.9];
_Message ctrlSetFade 1;
_Message ctrlCommit 0;
_Message ctrlSetFade 0;
_Message ctrlCommit 0.4;
_Title ctrlSetPosition[0.8035 * safezoneW + safezoneX, 0.2 * safezoneH + safezoneY, 0.002 * safezoneW, ((ctrlTextHeight _Message) + (0.005 * safezoneH))];
_Title ctrlCommit 0;
[_Message, _Title, _speed] spawn {
    disableSerialization;
    uiSleep(_this select 2);
    private _Message = _this select 0;
    private _Title = _this select 1;
    _Message ctrlSetFade 1;
    _Message ctrlCommit 0.3;
    _Title ctrlSetFade 1;
    _Title ctrlCommit 0.3;
    uiSleep 0.35;
    ctrlDelete _Message;
    ctrlDelete _Title;
};
private _posMessage = (ctrlPosition(_Message)) select 1;
private _posTitle = (ctrlPosition(_Title)) select 1;
private _messageHigh = (ctrlPosition(_Message)) select 3;
if (count current_notifications >= 1) then {
    private _activeNotifications = 0; {
        private _TitleCtrl = _x select 0;
        private _MessageCtrl = _x select 1;
        if (!isNull _TitleCtrl && !isNull _MessageCtrl) then {
            _TitleCtrl ctrlSetPosition[0.8035 * safezoneW + safezoneX, (_posTitle + _messageHigh + 1.5 * (0.011 * safezoneH))];
            _MessageCtrl ctrlSetPosition[0.805 * safezoneW + safezoneX, (_posMessage + _messageHigh + 1.5 * (0.011 * safezoneH))];
            _TitleCtrl ctrlCommit 0.3;
            _MessageCtrl ctrlCommit 0.3;
            _posMessage = (_posMessage + _messageHigh + 1.5 * (0.011 * safezoneH));
            _posTitle = (_posTitle + _messageHigh + 1.5 * (0.011 * safezoneH));
            _messageHigh = (ctrlPosition(_MessageCtrl)) select 3;
            if (_activeNotifications > 3) then {
                _TitleCtrl ctrlSetFade 1;
                _MessageCtrl ctrlSetFade 1;
                _TitleCtrl ctrlCommit 0.25;
                _MessageCtrl ctrlCommit 0.25;
            };
        };
        _activeNotifications = _activeNotifications + 1;
    }
    forEach current_notifications;
};
current_notifications = ([[_Title, _Message]] + current_notifications) select { ! isNull(_x select 0) && !isNull(_x select 1)
};