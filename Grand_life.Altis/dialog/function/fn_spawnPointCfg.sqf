#include "script_macros.hpp"
params[["_side", civilian, [civilian]]];
_side =
switch (_side) do {
case west:
    {
        "Cop"
    };
case independent:
    {
        "Medic"
    };
default {
        "Civilian"
    };
}; private _return = [];
private _spawnCfg = missionConfigFile >> "CfgSpawnPoints" >> worldName >> _side;
for "_i"
from 0 to count(_spawnCfg) - 1 do {
    private _tempConfig = [];
    private _curConfig = (_spawnCfg select _i);
    private _conditions = getText(_curConfig >> "conditions");
    private _flag = [_conditions] call life_fnc_levelCheck;
    if (_flag) then {
        _tempConfig pushBack getText(_curConfig >> "spawnMarker");
        _tempConfig pushBack getText(_curConfig >> "displayName");
        _tempConfig pushBack getText(_curConfig >> "icon");
        _return pushBack _tempConfig;
    };
}; if (playerSide isEqualTo civilian) then {
    _grp = group player;
    _hq = _grp getVariable["gang_hq", objNull];
    if (! (isNull _hq)) then {
        _permission = life_gangdata select 1;
        _playerpermission = [];
        _permissions = _grp getVariable["gang_permissions", []]; {
            if ((_x select 0) isEqualTo _permission) exitWith {
                _playerpermission = _x;
            };
        }
        forEach _permissions;
        _playerpermission = _playerpermission select 2;
        if ("HQSPAWN" in _playerpermission) then {
            _atlpos = getposAtl _hq;
            _badtonicpos = [str _atlpos];
            if (! (_badtonicpos in life_houses)) then {
                if ((markerColor "gang_hq") isEqualTo "") then {
                    createMarkerLocal["gang_hq", _atlpos];
                    "gang_hq"
                    setMarkerColorLocal "ColorBlue";
                    "gang_hq"
                    setMarkerTypeLocal "mil_flag";
                    "gang_hq"
                    setMarkerTextLocal " Gang HQ";
                    life_vehicles pushBackUnique _hq;
                };
                _return pushBack["gang_hq", "Gang HQ", "\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
            };
        };
    };
    if (count life_houses > 0) then {
        {
            _pos = call compile format["%1", (_x select 0)];
            _house = nearestObject[_pos, "House"];
            _houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
            _return pushBack[format["house_%1", _house getVariable "uid"], _houseName, "\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
            true
        }
        count life_houses;
    };
};
_return;