#include "script_macros.hpp"
private["_gang_id", "_gName", "_group", "_area", "_nil", "_pos", "_xname", "_text", "_action", "_cpRate", "_cP", "_nearUnits", "_areaContested", "_progressBar", "_title", "_titleText", "_ui"];
_area = getpos player nearestObject "Flag_Red_F";
_group = _area getVariable["gang_owner", grpNull];
_xname = "";
_nearUnits = _area nearEntities["Man", 500];
_areaContested = false;
if ((player distance _area) > 10) exitWith {
    hint "Musisz podejśc bliżej!";
};
if (playerside isEqualTo west) exitWith {
    if (!isNull _group) then {
        _cpRate = 0.0045;
    } else {
        _cpRate = 0.0075;
    }; {
        if ((isPlayer _x) && (_x != player) && (side _x == west)) then {
            _areaContested = false;
        };
        if ((isPlayer _x) && (_x != player) && (side _x == civilian)) then {
            _areaContested = true;
            _xname = "Rebels";
        };
        if (_areaContested && _xname isEqualTo "Rebels") then {
            hint "Rebelianci są w pobliżu!\nMusisz się nimi zająć!";
        };
    }
    forEach _nearUnits;
    if (_areaContested) exitWith {};
    disableSerialization;
    _title = localize "STR_GNOTF_CapturingArea";
    5 cutRsc["life_progress", "PLAIN"];
    _ui = uiNamespace getVariable "life_progress";
    _progressBar = _ui displayCtrl 38201;
    _titleText = _ui displayCtrl 38202;
    _titleText ctrlSetText format["%2 (1%1)...", "%", _title];
    _progressBar progressSetPosition 0.01;
    _cP = 0.01;
    if (! (_areaContested)) then {
        for "_i"
        from 0 to 1 step 0 do {
            sleep 1;
            _cP = _cP + _cpRate;
            _progressBar progressSetPosition _cP;
            _titleText ctrlSetText format["%3 (%1%2)...", round(_cP * 100), "%", _title];
            _area setVariable["inCapture", true, true];
            if (_cP >= 1 || !alive player) exitWith {
                _area setVariable["inCapture", false, true];
            };
            if (player distance _area > 100) exitWith {
                _area setVariable["inCapture", false, true];
            };
            if (_areaContested) exitWith {
                hint "Strefa sporna";
            };
            if (life_istazed) exitWith {
                _area setVariable["inCapture", false, true];
            };
            if (life_isknocked) exitWith {
                _area setVariable["inCapture", false, true];
            };
            if (life_interrupted) exitWith {
                _area setVariable["inCapture", false, true];
            };
        }; if (player distance _area > 100) exitWith {
            _area setVariable["inCapture", false, true];
        };
    };
    5 cutText["", "PLAIN"];
    if (player distance _area > 100) exitWith {
        _area setVariable["inCapture", false, true];
    };
    if (!alive player || life_istazed || life_isknocked) exitWith {
        life_action_inUse = false;
        _area setVariable["inCapture", false, true];
    };
    if (player getVariable["restrained", false]) exitWith {
        life_action_inUse = false;
        _area setVariable["inCapture", false, true];
    };
    if (life_interrupted) exitWith {
        life_interrupted = false;
        titleText[localize "STR_GNOTF_CaptureCancel", "PLAIN"];
        life_action_inUse = false;
        _area setVariable["inCapture", false, true];
    };
    life_action_inUse = false;
    titleText[localize "STR_GNOTF_CapturedArea", "PLAIN"];
    _gang_id = _area getVariable["gang_id", ""];
    _gName = group player getVariable "gang_name";
    _pText = format["Zneutralizowana strefa"];
    if (_gang_id == "Gang_Area_1") then {
        "gang_cap_1"
        setMarkerText _pText;
    };
    if (_gang_id == "Gang_Area_2") then {
        "gang_cap_2"
        setMarkerText _pText;
    };
    if (_gang_id == "Gang_Area_3") then {
        "gang_cap_3"
        setMarkerText _pText;
    };
    _area setVariable["inCapture", false, true];
    _area setVariable["gang_owner", group player, true];
};
_area = getpos player nearestObject "Flag_Red_F";
_group = _area getVariable["gang_owner", grpNull];
_xname = "";
_nearUnits = _area nearEntities["Man", 500];
if (isNil {
    group player getVariable "gang_name"
}) exitWith {
    hint "You must be in a gang to capture a gang area!";
};
if (_group isEqualTo group player) exitWith {
    hint "Your gang already has control over this area!";
};
if ((_area getVariable["inCapture", FALSE])) exitWith {
    hint "Only one person shall capture at once!";
};
if (!isNull _group) then {
    _gangName = _group getVariable["gang_name", ""];
    _action = [format[localize "STR_GNOTF_AlreadygangControlled", _gangName], localize "STR_Gang_captuerr", localize "STR_Global_Yes", localize "STR_Global_No"] call BIS_fnc_guiMessage;
    _cpRate = 0.0045;
} else {
    _cpRate = 0.0075;
}; {
    if ((isPlayer _x) && (_x != player) && (side _x == civilian) && (group _x == group player)) then {
        _areaContested = false;
    };
    if ((isPlayer _x) && (_x != player) && (side _x == civilian) && (!(group _x == group player))) then {
        _areaContested = true;
    };
    if ((isPlayer _x) && (_x != player) && (side _x == west)) then {
        _areaContested = true;
        _xname = "Police Force";
    };
    if (_areaContested) exitWith {
        if (_xname isEqualTo "Police Force") then {
            hint "Policja w pobliżu!\nMusisz się nimi zająć!";
        } else {
            hint "Rebelianci w pobliżu!\nMusisz się nimi zająć!";
        };
    };
}
forEach _nearUnits;
if (_areaContested) exitWith {};
disableSerialization;
_title = localize "STR_GNOTF_CapturingArea";
5 cutRsc["life_progress", "PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...", "%", _title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;
if (! (_areaContested)) then {
    for "_i"
    from 0 to 1 step 0 do {
        sleep 1;
        _cP = _cP + _cpRate;
        _progressBar progressSetPosition _cP;
        _titleText ctrlSetText format["%3 (%1%2)...", round(_cP * 100), "%", _title];
        _area setVariable["inCapture", true, true];
        if (_cP >= 1 || !alive player) exitWith {
            _area setVariable["inCapture", false, true];
        };
        if (player distance _area > 100) exitWith {
            _area setVariable["inCapture", false, true];
        };
        if (_areaContested) exitWith {
            hint "Strefa sporna";
        };
        if (life_istazed) exitWith {
            _area setVariable["inCapture", false, true];
        };
        if (life_isknocked) exitWith {
            _area setVariable["inCapture", false, true];
        };
        if (life_interrupted) exitWith {
            _area setVariable["inCapture", false, true];
        };
    }; if (player distance _area > 100) exitWith {
        _area setVariable["inCapture", false, true];
    };
};
5 cutText["", "PLAIN"];
if (player distance _area > 100) exitWith {
    _area setVariable["inCapture", false, true];
};
if (!alive player || life_istazed || life_isknocked) exitWith {
    life_action_inUse = false;
    _area setVariable["inCapture", false, true];
};
if (player getVariable["restrained", false]) exitWith {
    life_action_inUse = false;
    _area setVariable["inCapture", false, true];
};
if (life_interrupted) exitWith {
    life_interrupted = false;
    titleText[localize "STR_GNOTF_CaptureCancel", "PLAIN"];
    life_action_inUse = false;
    _area setVariable["inCapture", false, true];
};
life_action_inUse = false;
titleText[localize "STR_GNOTF_CapturedArea", "PLAIN"];
_gang_id = _area getVariable["gang_id", ""];
_gName = group player getVariable "gang_name";
_Text = format["Strefa kontrolowana przez %1", _gName];
if (_gang_id == "Gang_Area_1") then {
    "gang_cap_1"
    setMarkerText _text;
};
if (_gang_id == "Gang_Area_2") then {
    "gang_cap_2"
    setMarkerText _text;
};
if (_gang_id == "Gang_Area_3") then {
    "gang_cap_3"
    setMarkerText _text;
};
[[0, 1], "STR_GNOTF_CaptureAreaSuccess", true, [name player, (group player) getVariable "gang_name"]] remoteExecCall["life_fnc_broadcast", RCLIENT];
["dgang", false] remoteExec["life_fnc_dispatch", west];
_area setVariable["inCapture", false, true];
_area setVariable["gang_owner", group player, true];