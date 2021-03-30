#include "script_macros.hpp"
private["_vehicle", "_veh"];
_vehicle = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
if (isNull _vehicle) exitWith {};
_veh = typeOf _vehicle;
if (_veh isEqualTo "B_Boat_Armed_01_minigun_F") then {
    _vehicle removeMagazinesTurret["200Rnd_40mm_G_belt", [0]];
};
if (_veh isEqualTo "B_APC_Wheeled_01_cannon_F") then {
    _vehicle removeMagazinesTurret["60Rnd_40mm_GPR_Tracer_Red_shells", [0]];
    _vehicle removeMagazinesTurret["40Rnd_40mm_APFSDS_Tracer_Red_shells", [0]];
};
if (_veh isEqualTo "O_Heli_Attack_02_black_F") then {
    _vehicle removeMagazinesTurret["250Rnd_30mm_APDS_shells", [0]];
    _vehicle removeMagazinesTurret["8Rnd_LG_scalpel", [0]];
    _vehicle removeMagazinesTurret["38Rnd_80mm_rockets", [0]];
};
if (_veh isEqualTo "B_Heli_Attack_01_F") then {
    _vehicle removeMagazinesTurret["1000Rnd_20mm_shells", [0]];
    _vehicle removeMagazinesTurret["4Rnd_AAA_missiles", [0]];
    _vehicle removeMagazinesTurret["24Rnd_PG_missiles", [0]];
};
if (_veh isEqualTo "I_Heli_light_03_dynamicLoadout_F") then {
    {
        _vehicle removeWeapon _x
    }
    forEach weapons _vehicle; {
        _vehicle removeMagazine _x
    }
    forEach magazines _vehicle;
};
clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;