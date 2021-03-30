#include "script_macros.hpp"
if (life_god) exitwith {
    0
};
if (deadPlayer) exitwith {
    0
};
private["_unit", "_damage", "_source", "_projectile", "_part", "_curWep", "_originalDamage", "_vehicle"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;
_originalDamage =
if (_part == "") then {
    damage _unit
} else {
    _unit getHit _part
};
if (!isNull _source) then {
    if (_source != _unit) then {
        _curWep = currentWeapon _source;
        if (_projectile in ["B_9x21_Ball"] && _curWep in ["hgun_P07_snds_F", "hgun_P07_F"]) then {
            private["_distance"];
            _distance =
            if (_projectile == "B_556x45_dual") then {
                100
            } else {
                35
            };
            _damage = _originalDamage;
            if (_unit distance _source < _distance) then {
                if (!life_istazed && !life_isknocked && !(_unit getVariable["restrained", false])) then {
                    if (vehicle player != player) then {
                        if (typeOf(vehicle player) == "B_Quadbike_01_F") then {
                            player action["Eject", vehicle player];
                            [_unit, _source] spawn life_fnc_tazed;
                        };
                        if (typeOf(vehicle player) == "C_Tractor_01_F") then {
                            player action["Eject", vehicle player];
                            [_unit, _source] spawn life_fnc_tazed;
                        };
                    } else {
                        [_unit, _source] spawn life_fnc_tazed;
                    };
                };
            };
            if (side _source isEqualTo west && (playerSide isEqualTo west || playerSide isEqualTo independent)) then {
                _damage = _originalDamage;
            };
        };
    };
};
if ((vehicle _unit) isKindOf "Car" && (isNull _source || _source isEqualTo _unit)) then {
    _damage =
    if (life_seatbelt) then {
        _damage / 2
    } else {
        _damage
    };
};
[] spawn life_fnc_hudUpdate;
_damage;