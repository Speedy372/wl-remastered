#define THIS_FUNC FUNC(sendMessage)#include "cau\extendedchat\functions\_defines.inc"
SWITCH_SYS_PARAMS;
_params params[["_message", "", [""]], ["_sender", objNull, [objNull]], ["_channelID", -1, [0]], ["_setting", "", [""]], ["_messageTemplate", [-1], [[]]]];
if (_message == "") exitWith {};
if (_setting != "" && { ! (["get", _setting] call FUNC(settings))
}) exitWith {};
if (_messageTemplate #0>-1) then{private _localization= ["str_killed_friendly", "str_killed", "str_killed_by_friendly", "str_killed_by"] param[_messageTemplate #0,""];if(_localization!= "") then {
    _message = ["stringConvert%sToFormat", [localize _localization]] call FUNC(commonTask);
    _message = format([_message] + _messageTemplate #1);};};switch(tolower _mode) do{case"systemchat":{systemChat _message};case"globalchat":{_sender globalChat _message};case"sidechat":{_sender sideChat _message};case"commandchat":{_sender commandChat _message};case"groupchat":{_sender groupChat _message};case"vehiclechat":{_sender vehicleChat _message};case"customchat":{_sender customChat[_channelID,_message]};};nil
