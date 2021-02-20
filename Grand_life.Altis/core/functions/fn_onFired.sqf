#include "script_macros.hpp"
private["_ammoType", "_projectile", "_player", "_weap", "_ammo"];
_ammoType = _this select 4;
_projectile = _this select 6;
_player = _this select 0;
_weap = currentWeapon _player;
_ammo = _player ammo _weap;
if (_ammoType isEqualTo "GrenadeHand_stone") then {
    _projectile spawn {
        private "_position";
        while { ! isNull _this
        }
        do {
            _position = ASLtoATL(visiblePositionASL _this);
            sleep 0.1;
        };
        [ _position ] remoteExec["life_fnc_flashbang", RCLIENT];
    };
};
if (_weap == "hgun_P07_snds_F" || _weap == "hgun_P07_F") then {
    if (_ammo < 13) then {
        _player setAmmo[_weap, 0];
    };
};