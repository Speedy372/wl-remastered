if (((getNumber(missionConfigFile >> "The_Programmer_Settings_Iphone" >> "enable_cellphone_animations")) isEqualTo 1) && !(player getVariable["in_call", false])) then {
    if ! ((currentWeapon player) isEqualTo "") exitWith {};
    if ! ((vehicle player) isEqualTo player) exitWith {};
    [] spawn {
        _phone = "The_Programmer_Iphone_Model"
        createVehicle(position player);
        _phone attachTo[player, [-0.034, 0.02, 0.075], "righthandmiddle1"];
        _phone setVectorDirAndUp[[0, 0.66, -0.33], [0, 0.33, 0.66]];
        player playAction "The_Programmer_Holdphone";
        waituntil {
            uisleep 1;
            ((isNull(findDisplay 542647)) && (isNull(findDisplay 542367)));
        };
        deleteVehicle _phone;
        player playAction "gesturenod";
    };
};
if (player getvariable["iphone_chargement_done", true]) then {
    [] call the_programmer_iphone_fnc_chargement;
} else {
    if (player getVariable["receiveCall", false]) exitWith {
        createDialog "The_Programmer_Iphone_Appel_Entrant_Menu";
    };
    if (player getVariable["in_call", false]) exitWith {
        createDialog "The_Programmer_Iphone_Appel_En_Cours_Menu";
        if ((getNumber(missionConfigFile >> "The_Programmer_Settings_Iphone" >> "enable_cellphone_animations")) isEqualTo 1) then {
            if ! ((currentWeapon player) isEqualTo "") exitWith {};
            if ! ((vehicle player) isEqualTo player) exitWith {};
            [] spawn {
                _phone = "The_Programmer_Iphone_Model"
                createVehicle(position player);
                _phone attachTo[player, [.03, 0.0, 0.04], "lefthandmiddle1"];
                _phone setVectorDirAndUp[[-1, -0.19, 0.4], [0, -1, 1]];
                while {
                    true
                }
                do {
                    player playAction "The_Programmer_incall";
                    if ! (player getVariable["in_call", false]) exitWith {
                        deleteVehicle _phone;
                        player playAction "gesturenod";
                    };
                    if ! ((vehicle player) isEqualTo player) then {
                        _phone setPos[0, 0, 0];
                    };
                    uiSleep 3;
                };
            };
        };
    };
    _type = param[0, 0, [0]];
    disableSerialization;
    if (_type isEqualTo 1) then {
        createDialog "The_Programmer_Iphone_Home_Menu";
    };
    _display = findDisplay 542647;
    if (isNull _display) exitWith {};
    if (playerSide != west) then {
        ctrlShow[2012, false];
        ctrlShow[1010, false];
    } else {
        if ((getNumber(missionConfigFile >> "The_Programmer_Settings_Iphone" >> "interpol_script_enable")) isEqualTo 1) then {
            (_display displayCtrl 2012) buttonSetAction "closeDialog 0; [0] remoteExec [""max_interpol_fnc_getInterpol"",2];";
        } else {
            (_display displayCtrl 2012) buttonSetAction "closeDialog 0; [] call life_fnc_wantedMenu;";
        };
    };
    if (playerSide == west) then {
        ctrlShow[2137, false];
        ctrlShow[2138, false];
        ctrlShow[2237, false];
        ctrlShow[2238, false];
        ctrlShow[2140, false];
        ctrlShow[2240, false];
    };
    if (playerSide == independent) then {
        ctrlShow[2137, false];
        ctrlShow[2138, false];
        ctrlShow[2237, false];
        ctrlShow[2238, false];
        ctrlShow[2139, false];
        ctrlShow[2239, false];
        ctrlShow[2141, false];
        ctrlShow[2241, false];
        ctrlShow[696969, false];
        ctrlShow[6969692, false];
    };
    if (playerSide == civilian) then {
        ctrlShow[2139, false];
        ctrlShow[2239, false];
        ctrlShow[2140, false];
        ctrlShow[2240, false];
        ctrlShow[2141, false];
        ctrlShow[2241, false];
        ctrlShow[696969, false];
        ctrlShow[6969692, false];
    };
    if (call life_adminlevel < 1) then {
        ctrlShow[2021, false];
        ctrlShow[1011, false];
    };
    if ! ((getNumber(missionConfigFile >> "The_Programmer_Settings_Iphone" >> "gps_script_enable")) isEqualTo 1) then {
        ctrlShow[2100, false];
        ctrlShow[2104, false];
    };
    if ! ((getNumber(missionConfigFile >> "The_Programmer_Settings_Iphone" >> "advenced_phone_script_enable")) isEqualTo 1) then {
        ctrlShow[2102, false];
        ctrlShow[2103, false];
    };
    if ((getNumber(missionConfigFile >> "The_Programmer_Settings_Iphone" >> "phone_numbers_script_enable")) isEqualTo 1) then {
        (_display displayCtrl 2014) buttonSetAction "createDialog ""The_Programmer_Iphone_Cell_Menu"";";
    } else {
        (_display displayCtrl 2014) buttonSetAction "[] call life_fnc_physicalPhone;";
    };
    if ! ((getNumber(missionConfigFile >> "The_Programmer_Settings_Iphone" >> "companies_script_enable")) isEqualTo 1) then {
        ctrlShow[2105, false];
        ctrlShow[2106, false];
    };
    if ! ((getNumber(missionConfigFile >> "The_Programmer_Settings_Iphone" >> "governement_script_enable")) isEqualTo 1) then {
        ctrlShow[2107, false];
        ctrlShow[2108, false];
    };
    if (((getNumber(missionConfigFile >> "The_Programmer_Settings_Iphone" >> "calls_management_script_enable")) isEqualTo 0) || (playerSide isEqualTo civilian)) then {
        ctrlShow[5060, false];
        ctrlShow[5061, false];
    };
    if ! ((getNumber(missionConfigFile >> "The_Programmer_Settings_Iphone" >> "bill_system_script_enable")) isEqualTo 1) then {
        ctrlShow[2109, false];
        ctrlShow[2110, false];
    };
    while { ! isNull _display
    }
    do {
        _heure = str(date select 3);
        _minutes = str(date select 4);
        if ((count _minutes) isEqualTo 1) then {
            _minutes = "0" + _minutes;
        };
        (_display displayCtrl 2101) ctrlSetStructuredText parseText format["<t align = 'center' shadow = '1' size='2.1' font='PuristaBold'>%1:%2</t>", _heure, _minutes];
        uiSleep 5;
        if (player getVariable["receiveCall", false]) exitWith {
            createDialog "The_Programmer_Iphone_Appel_Entrant_Menu";
        };
    };
};