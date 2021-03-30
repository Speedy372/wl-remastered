private["_unit"];
_unit = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;
if (isNull _unit) exitWith {};
if (! (_unit isKindOf "AllVehicles")) exitWith {
    hint "Nie możesz tego zrobić!"
};
if (player distance _unit > 7) exitWith {
    hint "Musisz podejść bliżej!"
};
if (! ([false, "gpstracker", 1] call life_fnc_handleInv)) exitWith {};
closeDialog 0;
life_action_inUse = true;
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 4;
life_action_inUse = false;
if (player distance _unit > 7) exitWith {
    titleText["Nie możesz tego zrobić!", "PLAIN"];
};
titleText["Podłożyłeś nadajnik GPS!", "PLAIN"];
[_unit] spawn {
    _veh = _this select 0;
    _markerName = format["%1_gpstracker", _veh];
    _marker = createMarkerLocal[_markerName, visiblePosition _veh];
    _marker setMarkerColorLocal "ColorBlue";
    _marker setMarkerTypeLocal "mil_destroy";
    _marker setMarkerTextLocal "Nadajnik GPS | " + getText(configFile >> "CfgVehicles" >> typeof _veh >> "displayName");
    _marker setMarkerPosLocal getPos _veh;
    while {
        true
    }
    do {
        if (not alive _veh) exitWith {
            deleteMarkerLocal _markerName;
        };
        _marker setMarkerPosLocal getPos _veh;
        sleep 0.5;
    };
};