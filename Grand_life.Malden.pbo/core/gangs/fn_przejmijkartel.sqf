_obdzekt = param[0, objnull];
_cypyplus = 0.0015;
_cyferka = (str _obdzekt) select[7, 1];
_marker = format["marker_kartel_%1", _cyferka];
_exit2 = false;
if (west countSide playableUnits < 3) exitWith {
    ["kartel jest aktywny kiedy jest 4 lub wiecej policjantow online", false] spawn domsg;
};
switch (side player) do {
case civilian:
    {
        if (isNil {
            group player getVariable "gang_name"
        }) exitWith {
            titleText[localize "STR_GNOTF_CreateGang", "PLAIN"];
        };
        if ! (isNull(_obdzekt getVariable["gangOwner", grpNull])) then {
            if ((_obdzekt getVariable["gangOwner", grpNull]) isequalto(group player)) then {
                _exit2 = true
            }
        };
        if (_exit2) exitWith {
            hint "Już kontrolujesz ten kartel"
        };
        if ((_obdzekt getVariable["inCapture", false])) exitWith {
            hint localize "STR_GNOTF_onePersonAtATime";
        };
        disableSerialization;
        "progressBar"
        cutRsc["life_progress", "PLAIN"];
        _ui = uiNamespace getVariable "life_progress";
        _progress = _ui displayCtrl 38201;
        _pgText = _ui displayCtrl 38202;
        _pgText ctrlSetText format["Przejmowanie (1%1)...", "%"];
        _progress progressSetPosition 0.01;
        _cP = 0.01;
        _exit = false;
        _obdzekt setVariable["inCapture", true, true];
        _myUnits = units group player;
        _tablica = allplayers; {
            _huj = _tablica find _x;
            _tablica deleteAt _huj;
        }
        forEach _myUnits;
        [_obdzekt, (group player) getVariable "gang_name", _tablica] spawn {
            _obdzekt = _this#0;
            _gang = _this#1;
            _tablica = _this#2;
            while {
                _obdzekt getVariable["inCapture", false]
            }
            do {
                uisleep 30;
                ["Kartel Narkotykowy", format["Gang %1 przejmuje kontrolę nad Kartelem", _gang], "Wiadomości"] remoteExec['life_fnc_AAN', _tablica];
                uiSleep 30;
            };
        };
        for "_i"
        from 0 to 1 step 0 do {
            uiSleep 0.5;
            _cP = _cP + _cypyplus;
            _progress progressSetPosition _cP;
            _pgText ctrlSetText format["Przejmowanie (%1%2)...", round(_cP * 100), "%"];
            if (player distance _obdzekt > 10) exitWith {
                _exit = true
            };
            if (!alive player) exitWith {
                _exit = true
            };
            if (life_istazed) exitWith {
                _exit = true
            };
            if (life_isknocked) exitWith {
                _exit = true
            };
            if (life_interrupted) exitWith {
                _exit = true
            };
            if (_cP >= 1) exitWith {};
        }; if (_exit) exitWith {
            hint "No gdzie leziesz ?";
            "progressBar"
            cutText["", "PLAIN"];
            _obdzekt setVariable["inCapture", false, true];
            life_is_processing = false;
            life_action_inUse = false
        };
        "progressBar"
        cutText["", "PLAIN"];
        life_is_processing = false;
        life_action_inUse = false;
        _obdzekt setVariable["gangOwner", group player, true];
        _marker setMarkerText format["Kartel Narkotykowy: %1", (group player) getVariable "gang_name"];
        ["Kartel Narkotykowy", format["Gang %1 przejął kontrolę nad Kartelem", (group player) getVariable "gang_name"], "Wiadomości"] remoteExec['life_fnc_AAN', -2];
        _obdzekt setVariable["inCapture", false, true];
        hint "Kartel Przjęty !";
    };
case west:
    {
        if (isNull(_obdzekt getVariable["gangOwner", grpNull])) exitWith {
            titleText["Karel nie jest przejęty", "PLAIN"]
        };
        if ((_obdzekt getVariable["inCapture", false])) exitWith {
            hint localize "STR_GNOTF_onePersonAtATime"
        };
        disableSerialization;
        "progressBar"
        cutRsc["life_progress", "PLAIN"];
        _ui = uiNamespace getVariable "life_progress";
        _progress = _ui displayCtrl 38201;
        _pgText = _ui displayCtrl 38202;
        _pgText ctrlSetText format["Przejmowanie (1%1)...", "%"];
        _progress progressSetPosition 0.01;
        _cP = 0.01;
        _exit = false;
        _obdzekt setVariable["inCapture", true, true];
        _gang = _obdzekt getVariable["gangOwner", grpNull];
        _myUnits = units _gang;
        [_obdzekt, _myUnits] spawn {
            _obdzekt = _this#0;
            _myUnits = _this#1;
            while {
                _obdzekt getVariable["inCapture", false]
            }
            do {
                uisleep 30;
                ["Kartel Narkotykowy", "Policja rozpoczęła walkę z Kartelem", "Wiadomości"] remoteExec['life_fnc_AAN', _myUnits];
                uiSleep 30;
            };
        };
        for "_i"
        from 0 to 1 step 0 do {
            uiSleep 0.5;
            _cP = _cP + _cypyplus;
            _progress progressSetPosition _cP;
            _pgText ctrlSetText format["Przejmowanie (%1%2)...", round(_cP * 100), "%"];
            if (player distance _obdzekt > 10) exitWith {
                _exit = true
            };
            if (!alive player) exitWith {
                _exit = true
            };
            if (life_istazed) exitWith {
                _exit = true
            };
            if (life_isknocked) exitWith {
                _exit = true
            };
            if (life_interrupted) exitWith {
                _exit = true
            };
            if (_cP >= 1) exitWith {};
        }; if (_exit) exitWith {
            hint "No gdzie leziesz ?";
            "progressBar"
            cutText["", "PLAIN"];
            _obdzekt setVariable["inCapture", false, true]
        };
        "progressBar"
        cutText["", "PLAIN"];
        life_is_processing = false;
        life_action_inUse = false;
        _obdzekt setVariable["gangOwner", grpNull, true];
        hint "Kartel Przjęty !";
        _marker setMarkerText "Kartel Narkotykowy";
        ["Kartel Narkotykowy", "Policja rozbiła Kartel Narkotykowy", "Wiadomości"] remoteExec['life_fnc_AAN', -2];
        _obdzekt setVariable["inCapture", false, true];
    };
default {};
};