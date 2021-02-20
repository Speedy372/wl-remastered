#include "script_macros.hpp" [] spawn {
    private["_garbage", "_physical", "_virtual", "_cash", "_reward", "_item", "_give", "_amount", "_chance", "_badDistance", "_type"];
    _garbage = cursorObject;
    if ! (player getVariable["inJob", false]) exitWith {};
    _title = "Zbieranie śmieci";
    disableSerialization;
    5 cutRsc["life_progress", "PLAIN"];
    _ui = uiNamespace getVariable "life_progress";
    _progressBar = _ui displayCtrl 38201;
    _titleText = _ui displayCtrl 38202;
    _titleText ctrlSetText format["%2 (1%1)...", "%", _title];
    _progressBar progressSetPosition 0.01;
    _cP = 0.01;
    for "_i"
    from 0 to 1 step 0 do {
        if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
            [player, "AinvPknlMstpSnonWnonDnon_medic_1", true] remoteExecCall["life_fnc_animSync", RCLIENT];
            player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
            player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
        };
        sleep 0.26;
        if (isNull _ui) then {
            5 cutRsc["life_progress", "PLAIN"];
            _ui = uiNamespace getVariable "life_progress";
            _progressBar = _ui displayCtrl 38201;
            _titleText = _ui displayCtrl 38202;
        };
        _cP = _cP + 0.04;
        _progressBar progressSetPosition _cP;
        _titleText ctrlSetText format["%3 (%1%2)...", round(_cP * 100), "%", _title];
        if (_cP >= 1 OR ! alive player) exitWith {};
        if (life_istazed) exitWith {};
        if (life_isknocked) exitWith {};
        if (life_interrupted) exitWith {};
        if ((player getVariable["restrained", false])) exitWith {};
        if (player distance _garbage > 10) exitWith {
            _badDistance = true;
        };
    }; 5 cutText["", "PLAIN"];
    player playActionNow "stop";
    if (!alive player OR life_istazed OR life_isknocked) exitWith {
        life_action_inUse = false;
    };
    if ((player getVariable["restrained", false])) exitWith {
        life_action_inUse = false;
    };
    if (!isNil "_badDistance") exitWith {
        titleText[localize "STR_ISTR_Lock_TooFar", "PLAIN"];
        life_action_inUse = false;
    };
    if (life_interrupted) exitWith {
        life_interrupted = false;
        titleText[localize "STR_NOTF_ActionCancel", "PLAIN"];
        life_action_inUse = false;
    };
    life_action_inUse = false;
    _physical = ["16Rnd_9x21_yellow_Mag"];
    _virtual = ["lockpick", "copper_refined", "piwo", "copper_refined", "wodka"];
    _chance = round(random(100));
    _type = selectRandom[1, 2];
    if (_chance > 75) then {
        switch (_type) do {
        case 1:
            {
                _give = selectRandom _virtual;
                _amount = (round(random 4)) + 1;
                [true, _give, _amount] call life_fnc_handleInv;
                ["Zbierając śmieci znalazłeś pare rzeczy"] spawn life_fnc_notificationSystem;
            };
        case 2:
            {
                _amount = round(random[500, 2200, 6000]);
                CASH = CASH + _amount;
                [format["Zbierając śmieci znalazłeś %1$", _amount]] spawn life_fnc_notificationSystem;
            };
        };
    };
    deleteVehicle _garbage;
};