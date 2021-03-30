#include < core\archeology\macro.h > private["_type"];
_type = [_this, 0, "", [""]] call BIS_fnc_param;
switch (_type) do {
case "total":
    {
        if (count life_activeDigsites >= 1) then {
            {
                _task = _x select 2;
                _areaMarker = _x select 3;
                deleteMarkerLocal _areaMarker;
                player removeSimpleTask _task;
            }
            forEach life_activeDigsites;
        };
        life_availableDigsites = [];
        life_activeDigsites = [];
        life_usedDigsites = [];
        for "_i"
        from 1 to life_digsiteNumber do {
            life_availableDigsites pushBack format["archeology_%1", _i];
        };
    }; case "active": {
        if (count life_activeDigsites >= 1) then {
            {
                _task = _x select 2;
                _areaMarker = _x select 3;
                deleteMarkerLocal _areaMarker;
                player removeSimpleTask _task;
            }
            forEach life_activeDigsites;
        };
        life_activeDigsites = [];
    };
};