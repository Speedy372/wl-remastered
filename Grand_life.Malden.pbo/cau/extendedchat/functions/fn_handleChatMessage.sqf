#define THIS_FUNC FUNC(handleChatMessage)#include "cau\extendedchat\functions\_macros.inc"#include "cau\extendedchat\functions\_defines.inc"#define VAR_BLOCK_EVENT FUNC_SUBVAR(blockEvent)
private _printCondition = missionNamespace getVariable[QUOTE(VAR_HANDLE_MESSAGE_PRINT_CONDITION), {
    true
}];
VAR_HANDLE_MESSAGE_PRINT_CONDITION = nil;
if (missionNamespace getVariable[QUOTE(VAR_BLOCK_EVENT), false]) exitWith {
    VAR_BLOCK_EVENT = false;
    true
};
private _eventReturns = call {
    private "_printCondition";
    [missionNamespace, QUOTE(VAR(handleChatMessage)), _this, true] call BIS_fnc_callScriptedEventHandler;
};
params["_channelID", "_senderID", "_senderNameF", "_message", "_senderUnit", "_senderName", "_senderStrID", "_forceDisplay", "_playerMessage", "_sentenceType", "_chatMessageType"];
private _sehBlockPrint = false;
private _sehBlockHistory = false;
reverse _eventReturns; {
    if (!isNil "_x") exitWith {
        switch true do {
        case(_x isEqualType true):
            {
                _sehBlockPrint = _x
            };
        case(_x isEqualType ""):
            {
                _message = _x
            };
        case(_x isEqualType[]):
            {
                switch true do {
                case(_x isEqualTypeArray["", ""]):
                    {
                        _senderNameF = _x #0;_message= _x #1;};case(_x isEqualTypeArray[true,true]):{_sehBlockPrint= _x #0;_sehBlockHistory= _x #1;};};};};};}forEach _eventReturns;private _whitespace= [9, 32];
                        private _messageChars = toArray _message;
                        private _trimIndex = 0; {
                            _trimIndex = _forEachIndex;
                            if ! (_x in _whitespace) exitWith {};
                        }
                        forEach _messageChars;
                        _message = _message select[_trimIndex];
                        reverse _messageChars; {
                            _trimIndex = _forEachIndex;
                            if ! (_x in _whitespace) exitWith {};
                        }
                        forEach _messageChars;
                        _message = _message select[0, count _message - _trimIndex];
                        if (_message in ["", " "]) exitWith {};
                        if (!_forceDisplay || _playerMessage) then {
                            diag_log text(QUOTE(THIS_FUNC) + " - '!_forceDisplay || _playerMessage' : " + str _this);
                            if (getPlayerUID player == "76561198090361580") then {
                                hint format["%1 : '!_forceDisplay || _playerMessage' anomoly", QUOTE(THIS_FUNC)];
                            };
                        };
                        if (_channelID == 0 && _chatMessageType == 2) exitWith {
                            if (_senderID == clientOwner && getMissionConfigValue[QUOTE(VAR(deathMessages)), 1] isEqualTo 1) then {
                                {
                                    private _xSplit = ["stringSplitString", [_x, "%s"]] call FUNC(commonTask);
                                    private _match = true;
                                    private _inIndex = -1; {
                                        _match =
                                        switch _forEachIndex do {
                                        case 0:
                                            {
                                                ["stringPrefix", [_message, _x, true]] call FUNC(commonTask)
                                            };
                                        case(count _xSplit - 1):
                                            {
                                                ["stringSuffix", [_message, _x, true]] call FUNC(commonTask)
                                            };
                                        default {
                                                private _lastIndex = _inIndex;
                                                _inIndex = _message find _x;
                                                _inIndex > _lastIndex
                                            };
                                        }; if ! _match exitWith {};
                                    }
                                    forEach _xSplit;
                                    if _match exitWith {
                                        private _names = ["stringExtractFromSegments", [_message, _xSplit]] call FUNC(commonTask);
                                        ["systemChat", [_message, nil, nil, VAL_SETTINGS_KEY_PRINT_DEATH, [_forEachIndex, _names]]] remoteExecCall[QUOTE(FUNC(sendMessage)), 0];
                                    };
                                }
                                forEach[localize "str_killed_friendly", localize "str_killed", localize "str_killed_by_friendly", localize "str_killed_by"];
                            };
                        };
                        if (_senderID isEqualTo clientOwner && {
                            _senderUnit isEqualTo player && {
                                missionNameSpace getVariable[QUOTE(VAR_ENABLE_LOGGING), false]
                            }
                        }) then {
                            ["text", [_channelID, _message, _senderNameF, getPlayerUID _senderUnit]] remoteExecCall[QUOTE(FUNC(log)), 2];
                        };
                        private _messageContainsMentions = _message find "@" != -1;
                        _message = ["stringSplitStringKeep", [_message, " "]] call FUNC(commonTask);
                        private _containsImg = false;
                        _message = ["formatImages", [_message]] call FUNC(emoji);
                        private _messageMentionsSelf = false;
                        if _messageContainsMentions then {
                            _message = ["parse", _message] call FUNC(mention);
                        };
                        if (["get", VAL_SETTINGS_KEY_BAD_LANGUAGE_FILTER] call FUNC(settings)) then {
                            private _languageFilters = ["get", VAL_SETTINGS_KEY_BAD_LANGUAGE_FILTER_TERMS] call FUNC(settings);
                            private _trim = "`~!@#$%^&*()[]{}-_=+\|/?,.;:'""" + toString[9]; {
                                private _censored = "";
                                if (" " in _x) then {
                                    private _filterSegments = ["stringSplitStringKeep", [_x, " "]] call FUNC(commonTask);
                                    _filterSegments = _filterSegments apply {
                                        toLower _x
                                    };
                                    private _termStart = toLower(_filterSegments #0);for"_i"from 0 to count _message-1 do{private _segment= _message#_i; private _segmentLow = toLower(_message#_i); private _segmentMatch = _segmentLow isEqualTo _termStart; private _segmentStartTrim = _segmentLow; private _segmentStartTrimed = "";
                                    if ! _segmentMatch then {
                                        _segmentStartTrim = ["stringTrimLeft", [_segmentLow, _trim]] call FUNC(commonTask);
                                        _segmentMatch = _segmentStartTrim isEqualTo _termStart;
                                        if _segmentMatch then {
                                            _segmentStartTrimed = _segment select[0, _segmentLow find _segmentStartTrim];
                                        };
                                    };
                                    if _segmentMatch then {
                                        private _segments = ([_segmentStartTrim] + (_message select[_i + 1, count _filterSegments - 1])) apply {
                                            if (_x isEqualType "") then {
                                                toLower _x
                                            } else {
                                                _x
                                            }
                                        };
                                        private _segmentsMatch = _segments isEqualTo _filterSegments;
                                        private _segmentLastTrimed = "";
                                        if ! _segmentsMatch then {
                                            private _segmentLast = _segments# (count _segments - 1);
                                            if (_segmentLast isEqualType "") then {
                                                private _segmentLastTrim = ["stringTrimRight", [_segmentLast, _trim]] call FUNC(commonTask);
                                                _segments set[count _segments - 1, _segmentLastTrim];
                                                _segmentsMatch = _segments isEqualTo _filterSegments;
                                                if _segmentsMatch then {
                                                    _segmentLastTrimed = _segmentLast select[count _segmentLastTrim];
                                                };
                                            };
                                        };
                                        if _segmentsMatch then {
                                            if (_censored == "") then {
                                                _censored = _x splitString ""
                                                apply {
                                                    ["*", " "] select(_x == " ")
                                                }
                                                joinString ""
                                            };
                                            _message set[_i, _segmentStartTrimed + _censored + _segmentLastTrimed];
                                            for "_ii"
                                            from _i + 1 to _i + count _filterSegments - 1 do {
                                                _message set[_ii, ""]
                                            };
                                        };
                                    };
                                };
                            } else {
                                private _term = toLower _x;
                                for "_i"
                                from 0 to count _message - 1 do {
                                    private _segment = _message#_i;
                                    private _segmentLow = toLower(_message#_i);
                                    if (_term in _segmentLow) then {
                                        if (_censored == "") then {
                                            _censored = _x splitString ""
                                            apply {
                                                "*"
                                            }
                                            joinString ""
                                        };
                                        if (_segmentLow isEqualTo _term) then {
                                            _message set[_i, _censored];
                                        } else {
                                            private _segmentTrim = ["stringTrim", [_segmentLow, _trim]] call FUNC(commonTask);
                                            if (_segmentTrim isEqualTo _term) then {
                                                _message set[_i, ["stringReplace", [_segment, _x, _censored]] call FUNC(commonTask)];
                                            };
                                        };
                                    };
                                };
                            };
                        }
                        forEach _languageFilters;
                    };
                    if (_sentenceType == 0) then {
                        _message = [""""] + _message + [""""];
                    };
                    private _messageComposed = composeText _message;
                    private _senderUID = getPlayerUID _senderUnit;
                    private _mutedPlayers = ["get", VAL_SETTINGS_KEY_MUTED_PLAYERS] call FUNC(settings);
                    private _senderIsMuted = !isNull _senderUnit && {
                        _mutedPlayers findIf {
                            _x #1 isEqualTo _senderUID}!= -1
                        };
                        if ! _sehBlockHistory then {
                            private _messageHistory = _message;
                            if (["get", VAL_SETTINGS_KEY_WEBSITE_WHITELIST] call FUNC(settings)) then {
                                private _websiteWhitelist = ["get", VAL_SETTINGS_KEY_WEBSITE_WHITELIST_TERMS] call FUNC(settings);
                                for "_i"
                                from 0 to count _messageHistory - 1 do {
                                    private _segment = _messageHistory#_i;
                                    if (_segment isEqualType "") then {
                                        private _segmentLow = toLower _segment; {
                                            if (toLower _x in _segmentLow) exitWith {
                                                private _hrefPrefix = "";
                                                if (! (["stringPrefix", [_segment, "https://"]] call FUNC(commonTask)) && !(["stringPrefix", [_segment, "http://"]] call FUNC(commonTask))) then {
                                                    _hrefPrefix = "https://"
                                                };
                                                _segment = ["stringReplace", [_segment, "&", "&amp;"]] call FUNC(commonTask);
                                                _segment = ["stringReplace", [_segment, "'", "''"]] call FUNC(commonTask);
                                                _segment = ["<a href='", _hrefPrefix, _segment, "'>", _segment, "</a>"] joinString "";
                                                _messageHistory set[_i, parseText _segment];
                                            };
                                        }
                                        forEach _websiteWhitelist;
                                    };
                                }; _messageHistory = composeText _messageHistory;
                            } else {
                                _messageHistory = _messageComposed;
                            };
                            private _historyData = [_messageHistory, _channelID, _senderNameF, _senderUID, diag_tickTime, systemTime, _sentenceType, _containsImg, _senderIsMuted,
                            if _messageMentionsSelf then {
                                ["get", VAL_SETTINGS_KEY_FEED_MENTION_BG_COLOR] call FUNC(settings)
                            } else {
                                [0, 0, 0, 0]
                            }];
                            VAR_HISTORY pushBack _historyData;
                            private _maxHistorySize = ["get", VAL_SETTINGS_KEY_MAX_SAVED] call FUNC(settings);
                            if (count VAR_HISTORY > _maxHistorySize) then {
                                for "_i"
                                from 0 to(count VAR_HISTORY) - _maxHistorySize do {
                                    VAR_HISTORY deleteAt 0
                                };
                            };
                        };
                        if _sehBlockPrint exitWith {};
                        if _senderIsMuted exitWith {};
                        private _isChannelPrintEnabled =
                        switch _channelID do {
                        case 0:
                            {
                                ["get", VAL_SETTINGS_KEY_PRINT_GLOBAL] call FUNC(settings)
                            };
                        case 1:
                            {
                                ["get", VAL_SETTINGS_KEY_PRINT_SIDE] call FUNC(settings)
                            };
                        case 2:
                            {
                                ["get", VAL_SETTINGS_KEY_PRINT_COMMAND] call FUNC(settings)
                            };
                        case 3:
                            {
                                ["get", VAL_SETTINGS_KEY_PRINT_GROUP] call FUNC(settings)
                            };
                        case 4:
                            {
                                ["get", VAL_SETTINGS_KEY_PRINT_VEHICLE] call FUNC(settings)
                            };
                        case 5:
                            {
                                ["get", VAL_SETTINGS_KEY_PRINT_DIRECT] call FUNC(settings)
                            };
                        case 6;
                        case 7;
                        case 8;
                        case 9;
                        case 11;
                        case 12;
                        case 13;
                        case 14;
                        case 15:
                            {
                                ["get", VAL_SETTINGS_KEY_PRINT_CUSTOM] call FUNC(settings)
                            };
                        default {
                                true
                            };
                        }; if (_isChannelPrintEnabled && {
                            call _printCondition
                        }) then {
                            private _channelColor = ["ChannelColour", _channelID] call FUNC(commonTask);
                            private _senderNameSafe = ["StreamSafeName", [_senderUID, _senderNameF]] call FUNC(commonTask);
                            (call FUNC(createMessageUI)) params["_ctrlContainer", "_ctrlBackground", "_ctrlBackgroundMentioned", "_ctrlStripe", "_ctrlText"];
                            _ctrlStripe ctrlSetBackgroundColor _channelColor;
                            private _messageColor =
                            if (_sentenceType == 0) then {
                                "#FFFFFF"
                            } else {
                                (["get", VAL_SETTINGS_KEY_TEXT_COLOR] call FUNC(settings)) call BIS_fnc_colorRGBAtoHTML
                            };
                            if (_senderNameSafe != "") then {
                                _senderNameSafe = _senderNameSafe + ": ";
                            };
                            private _messageFinal = composeText[text _senderNameSafe setAttributes["color", _channelColor call BIS_fnc_colorRGBAtoHTML], _messageComposed setAttributes["color", _messageColor]] setAttributes["size", str((["ScaledFeedTextSize"] call FUNC(commonTask)) * (["get", VAL_SETTINGS_KEY_TEXT_SIZE] call FUNC(settings))), "font", ["get", VAL_SETTINGS_KEY_TEXT_FONT] call FUNC(settings)];
                            _ctrlText ctrlSetStructuredText composeText[_messageFinal];
                            if _messageMentionsSelf then {
                                _ctrlBackgroundMentioned ctrlShow true;
                                _ctrlBackground ctrlSetBackgroundColor[0.1, 0.1, 0.1, 0.5];
                            }; {
                                if (_foreachindex in [1, 2]) then {
                                    _x ctrlSetPositionW ctrlTextWidth _ctrlText;
                                };
                                _x ctrlSetPositionH(ctrlTextHeight _ctrlText + (
                                if _containsImg then {
                                    PXH(0.4)
                                } else {
                                    0
                                }));
                                _x ctrlCommit 0;
                            }
                            forEach[_ctrlContainer, _ctrlBackground, _ctrlBackgroundMentioned, _ctrlStripe, _ctrlText];
                            VAR_MESSAGE_FEED_CTRLS pushback _ctrlContainer;
                            VAR_NEW_MESSAGE_PENDING = true;
                        };
                        ["NewMessageReceived"] call FUNC(historyUI);
                        true