private["_textMessage", "_textHeader", "_textOK", "_textCancel", "_parent", "_useParentBox", "_isPause", "_display", "_ctrlRscMessageBox", "_ctrlBcgCommonTop", "_ctrlBcgCommon", "_ctrlText", "_ctrlBackgroundButtonOK", "_ctrlBackgroundButtonMiddle", "_ctrlBackgroundButtonCancel", "_ctrlButtonOK", "_ctrlButtonCancel", "_allControls", "_positions", "_ctrlButtonOKPos", "_ctrlBcgCommonPos", "_bottomSpaceY", "_marginX", "_marginY", "_ctrlTextPosH", "_bottomPosY", "_ctrlRscMessageBoxPos", "_ctrlRscMessageBoxPosH", "_focus", "_ehKeyDown", "_status"];#define DISPLAY_DEFAULT(uinamespace getvariable "RscDisplayCommonMessage_display")
disableserialization;
_textMessage = _this param[0, "", ["", parsetext "", []]];
_textHeader = _this param[1, "", [""]];
_textOK = _this param[2, true, ["", false]];
_textCancel = _this param[3, false, ["", false]];
_parent = _this param[4, [] call bis_fnc_displayMission, [displaynull]];
_useParentBox = _this param[5, false, [false]];
_isPause = _this param[6, true, [false]];
_canDelete = false;
if ! (_useParentBox) then {
    _displayClass =
    if (_isPause) then {
        "RscDisplayCommonMessagePause"
    } else {
        "RscDisplayCommonMessage"
    };
    _parent createdisplay _displayClass;
};
if (!_useParentBox && isnil {
    DISPLAY_DEFAULT
}) exitwith {
    ["Unable to create message box"] call bis_fnc_error;
    false
};
if (!_useParentBox && isnull(DISPLAY_DEFAULT)) exitwith {
    ["Unable to create message box."] call bis_fnc_error;
    false
};
if (_useParentBox && isnull(_parent)) exitwith {
    ["Parent display does not exist."] call bis_fnc_error;
    false
};
if (_useParentBox && isnull(_parent displayctrl 2351)) then {
    _parent ctrlcreate["RscMessageBox", 2351];
    _canDelete = true;
};
if (typename _textMessage == typename "") then {
    _textMessage = parsetext _textMessage;
};
_display =
if (_useParentBox) then {
    _parent
} else {
    DISPLAY_DEFAULT;
};
_ctrlRscMessageBox = _display displayctrl 2351;
_ctrlBcgCommonTop = _display displayctrl 235100;
_ctrlBcgCommon = _display displayctrl 235101;
_ctrlText = _display displayctrl 235102;
_ctrlBackgroundButtonOK = _display displayctrl 235103;
_ctrlBackgroundButtonMiddle = _display displayctrl 235104;
_ctrlBackgroundButtonCancel = _display displayctrl 235105;
_ctrlButtonOK = _display displayctrl 235106;
_ctrlButtonCancel = _display displayctrl 235107;
_allControls = [_ctrlBcgCommonTop, _ctrlBcgCommon, _ctrlText, _ctrlBackgroundButtonOK, _ctrlBackgroundButtonMiddle, _ctrlBackgroundButtonCancel, _ctrlButtonOK, _ctrlButtonCancel];
if (_useParentBox) then {
    _positions = uinamespace getvariable "BIS_fnc_guiMessage_defaultPositions";
    if (isnil "_positions") then {
        _positions = []; {
            _xPos = ctrlposition _x;
            _positions set[count _positions, _xPos];
        }
        foreach _allControls;
        uinamespace setvariable["BIS_fnc_guiMessage_defaultPositions", _positions];
        _display displayaddeventhandler["unload", "uinamespace setvariable ['BIS_fnc_guiMessage_defaultPositions',nil];"];
    } else {
        {
            _x ctrlsetposition(_positions select _foreachindex);
            _x ctrlcommit 0;
        }
        foreach _allControls;
    };
};
_ctrlBcgCommonTop ctrlsettext _textHeader;
_ctrlButtonOKPos = ctrlposition _ctrlButtonOK;
_ctrlBcgCommonPos = ctrlposition _ctrlBcgCommon;
_bottomSpaceY = (_ctrlButtonOKPos select 1) - ((_ctrlBcgCommonPos select 1) + (_ctrlBcgCommonPos select 3));
_ctrlTextPos = ctrlposition _ctrlText;
_marginX = (_ctrlTextPos select 0) - (_ctrlBcgCommonPos select 0);
_marginY = (_ctrlTextPos select 1) - (_ctrlBcgCommonPos select 1);
_ctrlText ctrlsetstructuredtext _textMessage;
_ctrlTextPosH = ctrltextheight _ctrlText;
_ctrlBcgCommon ctrlsetposition[(_ctrlBcgCommonPos select 0), (_ctrlBcgCommonPos select 1), (_ctrlBcgCommonPos select 2), _ctrlTextPosH + (_marginY * 2)];
_ctrlBcgCommon ctrlcommit 0;
_ctrlText ctrlsetposition[(_ctrlBcgCommonPos select 0) + _marginX, (_ctrlBcgCommonPos select 1) + _marginY, (_ctrlBcgCommonPos select 2) - _marginX * 2, _ctrlTextPosH];
_ctrlText ctrlcommit 0;
_bottomPosY = (_ctrlBcgCommonPos select 1) + _ctrlTextPosH + (_marginY * 2) + _bottomSpaceY; {
    _xPos = ctrlposition _x;
    _xPos set[1, _bottomPosY];
    _x ctrlsetposition _xPos;
    _x ctrlcommit 0;
}
foreach[_ctrlBackgroundButtonOK, _ctrlBackgroundButtonMiddle, _ctrlBackgroundButtonCancel, _ctrlButtonOK, _ctrlButtonCancel];
_ctrlRscMessageBoxPos = ctrlposition _ctrlRscMessageBox;
_ctrlRscMessageBoxPosH = _bottomPosY + (_ctrlButtonOKPos select 3);
_ctrlRscMessageBox ctrlsetposition[0.5 - (_ctrlBcgCommonPos select 2) / 2, 0.5 - _ctrlRscMessageBoxPosH / 2, (_ctrlBcgCommonPos select 2) + 0.5, _ctrlRscMessageBoxPosH];
_ctrlRscMessageBox ctrlenable true;
_ctrlRscMessageBox ctrlcommit 0;
if (_useParentBox) then {
    _ctrlRscMessageBoxPos = ctrlPosition _ctrlRscMessageBox;
    _ctrlRscMessageBoxPos = [(_ctrlRscMessageBoxPos select 0) - 2, (_ctrlRscMessageBoxPos select 1) - 2, (_ctrlRscMessageBoxPos select 2) + 4, (_ctrlRscMessageBoxPos select 3) + 4];
    _ctrlRscMessageBox ctrlsetposition _ctrlRscMessageBoxPos;
    _ctrlRscMessageBox ctrlcommit 0; {
        _xPos = ctrlposition _x;
        _xPos set[0, (_xPos select 0) + 2];
        _xPos set[1, (_xPos select 1) + 2];
        _x ctrlsetposition _xPos;
        _x ctrlcommit 0;
    }
    foreach _allCOntrols;
};
_focus = _ctrlButtonOK;
_ctrlButtonOK ctrlenable false;
_ctrlButtonOK ctrlsetfade 0;
_ctrlButtonOK ctrlsettext localize "STR_DISP_OK";
if (typename _textOK == typename false) then {
    if ! (_textOK) then {
        _ctrlButtonOK ctrlenable false;
        _ctrlButtonOK ctrlsetfade 1;
        _focus = _ctrlButtonCancel;
    };
} else {
    _ctrlButtonOK ctrlsettext _textOK;
};
_ctrlButtonOK ctrlcommit 0;
_ctrlButtonCancel ctrlenable false;
_ctrlButtonCancel ctrlsetfade 0;
_ctrlButtonCancel ctrlsettext localize "STR_DISP_CANCEL";
if (typename _textCancel == typename false) then {
    if ! (_textCancel) then {
        _ctrlButtonCancel ctrlenable false;
        _ctrlButtonCancel ctrlsetfade 1;
    };
} else {
    _ctrlButtonCancel ctrlsettext _textCancel;
};
_ctrlButtonCancel ctrlcommit 0;
ctrlsetfocus _focus;
guiMessage_status = "neutral";
_ctrlButtonOK ctrlenable true;
_ctrlButtonCancel ctrlenable true;
_ctrlButtonOK ctrlseteventhandler["buttonclick", "guiMessage_status = true; true"];
_ctrlButtonCancel ctrlseteventhandler["buttonclick", "guiMessage_status = false; true"];
_display displayaddeventhandler["unload", "[] spawn {uisleep 0.4;guiMessage_status = 'neutral'};"];
_ehKeyDown = _display displayaddeventhandler["keydown", "if ((_this select 1) == 1) then { guiMessage_status = 'neutral'; true} else {false}"];
waitUntil { ! (typeName guiMessage_status isequalto "STRING")
};
_ctrlButtonOK ctrlenable false;
_ctrlButtonCancel ctrlenable false;
uiSleep 1;
_display displayremoveeventhandler["keydown", _ehKeyDown];
if (_useParentBox) then {
    _ctrlRscMessageBox ctrlenable false;
    _ctrlRscMessageBox ctrlsetposition[0, 0, 0, 0];
    _ctrlRscMessageBox ctrlcommit 0;
    if (_canDelete) then {
        ctrldelete _ctrlRscMessageBox;
    };
} else {
    _display closedisplay 2;
};