_type = _this#2;
if (_type == "Location") exitwith {
    myposition = _this select 0;
    mytext = _this select 1;
    _markername = format["location%1", getPlayerUID player];
    deletemarkerlocal _markername;
    _marker = createMarkerlocal[_markername, myposition];
    _marker setMarkerShapelocal "ICON";
    _marker setMarkerTypelocal "hd_dot";
    _marker setMarkerColorlocal "ColorOrange";
    _marker setMarkerTextlocal format["%1", mytext];
    ["location", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
    ["location", "onEachFrame", {
        mydistance = floor(getpos player distance myposition);
        mydistance = format["%1 | %2m", mytext, mydistance];
        drawIcon3D["\A3\ui_f\data\map\mapcontrol\taskIcon_ca.paa", [1, 1, 1, 1], myposition, 2, 2, 5, mydistance, 1, 0.036, "PuristaLight"];
        if (player distance myposition < 10) exitwith {
            ["location", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
            player say "mining";
            deletemarkerlocal format["location%1", getPlayerUID player];
        };
    }] call BIS_fnc_addStackedEventHandler;
};
if (_type == "Job") exitwith {
    mypositionJob = _this select 0;
    mytextJob = _this select 1;
    ["Job", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
    ["Job", "onEachFrame", {
        mydistanceJob = floor(getpos player distance mypositionJob);
        mydistanceJob = format["%1 | %2m", mytextJob, mydistanceJob];
        drawIcon3D["\A3\ui_f\data\map\mapcontrol\taskIcon_ca.paa", [1, 1, 1, 1], mypositionJob, 2, 2, 5, mydistanceJob, 1, 0.036, "PuristaLight"];
        if (player distance mypositionjob < 20) exitwith {
            ["Job", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
            player say "mining";
        };
    }] call BIS_fnc_addStackedEventHandler;
};