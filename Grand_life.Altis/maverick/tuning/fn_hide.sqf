scriptName "fn_hide";#define __filename "fn_hide.sqf"
_veh = param[0, objNull, [objNull]];
_show = param[1, false, [false]];
if (isNull _veh) exitWith {};
if (_show) exitWith {
    _veh hideObjectGlobal false; {
        _x hideObjectGlobal false;
    }
    forEach(crew _veh);
    _veh allowDamage true;
};
_veh hideObjectGlobal true; {
    _x hideObjectGlobal true;
}
forEach(crew _veh);
_veh allowDamage false;