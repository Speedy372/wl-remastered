#include "script_macros.hpp"
private["_item"];
_item = _this select 2;
_log = format["%1 %2 schowal %3", name player, getPlayerUID player, _item];
[_log, "ibagaznik"] remoteExecCall["A3Log", 2];