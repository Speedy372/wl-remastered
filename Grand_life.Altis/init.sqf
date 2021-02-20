StartProgress = false;
[] execVM "scripts\Status_Bar\init_statusBar.sqf";
[] execVM "scripts\teargas.sqf";
[] execVM "scripts\teargas2.sqf";
[] execVM "welcomeMessage.sqf";
[] execVM "core\functions\fn_autoMessages.sqf";
[] execVM "IgiLoad\IgiLoadInit.sqf";
[] execVM "scripts\fog.sqf";
[] spawn life_fnc_speaking;
[] execVM "HL_FNC.sqf";
[] execVM "pedro\pedrogas.sqf";
[] execVM "removeFog.sqf";
[] execVM "disableTheral.sqf";
[] execVM "scripts\zlt_fastrope.sqf";
emergLight_vehicles = []; {
    emergLight_vehicles pushBack(configName _x);
}
forEach("true"
configClasses(missionConfigFile >> "emergLightVehicles"));
setTerrainGrid 40;
setViewDistance 1300;
setObjectViewDistance[900, 50];
disableRemoteSensors true;
enableSentences false;
StartProgress = true;
[] spawn {
    while {
        true
    }
    do {
        {
            private _group = _x;
            if (local _group && {
                count units _group <= 0
            }) then {
                deleteGroup _x;
            };
        } forEach allGroups;
    }; uiSleep 30;
};
systemChat "Grand-Life Scripts: Successfully loaded in.";