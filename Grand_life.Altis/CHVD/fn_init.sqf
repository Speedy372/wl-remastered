[] spawn {
    if (!hasInterface) exitWith {};
    waitUntil {
        time > 0
    };
    CHVD_allowNoGrass =
    if (isNil "CHVD_allowNoGrass") then {
        true
    } else {
        CHVD_allowNoGrass
    };
    CHVD_maxView =
    if (isNil "CHVD_maxView") then {
        12000
    } else {
        CHVD_maxView
    };
    CHVD_maxObj =
    if (isNil "CHVD_maxObj") then {
        12000
    } else {
        CHVD_maxObj
    };
    CHVD_footSyncMode = profileNamespace getVariable["CHVD_footSyncMode", 0];
    CHVD_footSyncPercentage = profileNamespace getVariable["CHVD_footSyncPercentage", 0.8];
    CHVD_carSyncMode = profileNamespace getVariable["CHVD_carSyncMode", 0];
    CHVD_carSyncPercentage = profileNamespace getVariable["CHVD_carSyncPercentage", 0.8];
    CHVD_airSyncMode = profileNamespace getVariable["CHVD_airSyncMode", 0];
    CHVD_airSyncPercentage = profileNamespace getVariable["CHVD_airSyncPercentage", 0.8];
    CHVD_foot = (profileNamespace getVariable["CHVD_foot", viewDistance]) min CHVD_maxView;
    CHVD_car = (profileNamespace getVariable["CHVD_car", viewDistance]) min CHVD_maxView;
    CHVD_air = (profileNamespace getVariable["CHVD_air", viewDistance]) min CHVD_maxView;
    CHVD_footObj = (profileNamespace getVariable["CHVD_footObj", viewDistance]) min CHVD_maxObj min CHVD_maxView;
    CHVD_footObj =
    if (CHVD_footSyncMode isEqualTo 1) then {
        CHVD_foot * CHVD_footSyncPercentage
    } else {
        CHVD_footObj
    };
    CHVD_carObj = (profileNamespace getVariable["CHVD_carObj", viewDistance]) min CHVD_maxObj min CHVD_maxView;
    CHVD_carObj =
    if (CHVD_carSyncMode isEqualTo 1) then {
        CHVD_car * CHVD_carSyncPercentage
    } else {
        CHVD_carObj
    };
    CHVD_airObj = (profileNamespace getVariable["CHVD_airObj", viewDistance]) min CHVD_maxObj min CHVD_maxView;
    CHVD_airObj =
    if (CHVD_airSyncMode isEqualTo 1) then {
        CHVD_air * CHVD_airSyncPercentage
    } else {
        CHVD_airObj
    };
    CHVD_footTerrain =
    if (CHVD_allowNoGrass) then {
        profileNamespace getVariable["CHVD_footTerrain", 25]
    } else {
        (profileNamespace getVariable["CHVD_footTerrain", 25]) min 48.99 max 3.125
    };
    CHVD_carTerrain =
    if (CHVD_allowNoGrass) then {
        profileNamespace getVariable["CHVD_carTerrain", 25]
    } else {
        (profileNamespace getVariable["CHVD_carTerrain", 25]) min 48.99 max 3.125
    };
    CHVD_airTerrain =
    if (CHVD_allowNoGrass) then {
        profileNamespace getVariable["CHVD_airTerrain", 25]
    } else {
        (profileNamespace getVariable["CHVD_airTerrain", 25]) min 48.99 max 3.125
    };
    CHVD_vehType = 0;
    waitUntil { ! isNull player
    };
    waitUntil { ! isNull findDisplay 46
    };
    (findDisplay 46) displayAddEventHandler["Unload", {
        call CHVD_fnc_updateSettings
    }];
    [] call CHVD_fnc_updateVehType;
    [] call CHVD_fnc_updateSettings;
    [] spawn {
        for "_i"
        from 0 to 1 step 0 do {
            _currentVehicle = vehicle player;
            waitUntil {
                _currentVehicle != vehicle player
            };
            [] call CHVD_fnc_updateVehType;
            if ((CHVD_vehType isEqualTo 0 && CHVD_footSyncMode isEqualTo 2) || (CHVD_vehType isEqualTo 1 && CHVD_carSyncMode isEqualTo 2) || (CHVD_vehType isEqualTo 2 && CHVD_airSyncMode isEqualTo 2)) then {
                [1] call CHVD_fnc_updateSettings;
                [] call CHVD_fnc_updateTerrain;
                [4] call CHVD_fnc_updateSettings
            } else {
                [] call CHVD_fnc_updateSettings;
            };
        };
    };
    [] spawn {
        for "_i"
        from 0 to 1 step 0 do {
            _UAVstatus = call CHVD_fnc_UAVstatus;
            waitUntil {
                _UAVstatus != call CHVD_fnc_UAVstatus
            };
            [] call CHVD_fnc_updateVehType;
            if ((CHVD_vehType isEqualTo 0 && CHVD_footSyncMode isEqualTo 2) || (CHVD_vehType isEqualTo 1 && CHVD_carSyncMode isEqualTo 2) || (CHVD_vehType isEqualTo 2 && CHVD_airSyncMode isEqualTo 2)) then {
                [1] call CHVD_fnc_updateSettings;
                [] call CHVD_fnc_updateTerrain;
                [4] call CHVD_fnc_updateSettings
            } else {
                [] call CHVD_fnc_updateSettings;
            };
        };
    };
    [] spawn {
        for "_i"
        from 0 to 1 step 0 do {
            _currentZoom = call CHVD_fnc_trueZoom;
            waitUntil {
                _currentZoom != call CHVD_fnc_trueZoom
            };
            if ((CHVD_vehType isEqualTo 0 && CHVD_footSyncMode isEqualTo 2) || (CHVD_vehType isEqualTo 1 && CHVD_carSyncMode isEqualTo 2) || (CHVD_vehType isEqualTo 2 && CHVD_airSyncMode isEqualTo 2)) then {
                [4] call CHVD_fnc_updateSettings
            };
        };
    };
};