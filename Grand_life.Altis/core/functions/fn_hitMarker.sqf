#include "script_macros.hpp"
private["_target", "_shooter"];
_target = _this select 0;
_shooter = _this select 3;
_player = player;
if (!isNull _shooter) then {
    if (_shooter != _target) then {
        if (_shooter == _player || ((_player == gunner vehicle _player) && {
            vehicle _player == _shooter
        })) then {
            disableSerialization;
            "someLayer"
            cutRsc["Life_hitmarker", "PLAIN"];
            _display = uiNamespace getVariable "Life_hitmarker";
        };
    };
};