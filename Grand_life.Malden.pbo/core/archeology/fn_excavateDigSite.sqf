#include < core\archeology\macro.h > private["_index", "_availableAnimations", "_dropFragment", "_loot", "_type", "_chance", "_toolbox", "_shovel"];
_dropFragment = 0;
_toolbox = missionNamespace getVariable["life_inv_basictools", 0];
_shovel = missionNamespace getVariable["life_inv_shovel", 0];
if ((_toolbox < 1) || (_shovel < 1)) exitWith {
    hint "Potrzebujesz łopaty i narzędzi archeologicznych aby wykopać i oczyścić znaleziska."
};
if (count life_activeDigsites < 1) exitWith {
    hint "Nie masz żadnych aktywnych wykopalisk."
};
_index = -1; {
    if (player distance(getMarkerPos(_x select 5)) < 15) exitWith {
        _index = _forEachIndex
    };
}
forEach life_activeDigsites;
if (_index isEqualTo - 1) exitWith {
    hint "Nie jesteś blisko strefy którą możesz przekopać."
};
_siteData = life_activeDigsites select _index;
_selectedSiteMarker = _siteData select 0;
_type = _siteData select 1;
_task = _siteData select 2;
_areaMarker = _siteData select 3;
_loot = _siteData select 4;
_digMarker = _siteData select 5;
_availableAnimations = ["ainvpknlmstpsnonwnondnon_medic3", "ainvpknlmstpsnonwnondnon_medic4", "ainvpknlmstpsnonwnondnon_medic5"];
life_action_inUse = true;
disableSerialization;
5 cutRsc["life_progress", "PLAIN"];
_ui = GVAR_UINS "life_progress";
_upp = "Wykopywanie..";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...", "%", _upp];
_progress progressSetPosition 0.009;
_cpRate = 0.01;
_cP = 0.01;
for "_i"
from 0 to 1 step 0 do {
    if ! (animationState player in _availableAnimations) then {
        _selectedAnimation = selectRandom _availableAnimations;
        [player, _selectedAnimation, true] remoteExecCall["life_fnc_animSync", RCLIENT];
        player switchMove _selectedAnimation;
        player playMoveNow _selectedAnimation;
    };
    sleep 0.1;
    _cP = _cP + _cpRate;
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format["%3 (%1%2)...", round(_cP * 100), "%", _upp];
    if (_cP >= 1) exitWith {};
    if (!alive player) exitWith {};
    if (player != vehicle player) exitWith {};
    if (life_interrupted) exitWith {};
}; 5 cutText["", "PLAIN"];
player playActionNow "stop";
if (!alive player) exitWith {
    life_action_inUse = false;
};
if (dialog) exitWith {
    life_action_inUse = false;
};
if (player != vehicle player) exitWith {
    life_action_inUse = false;
};
if (life_interrupted) exitWith {
    life_interrupted = false;
    player playActionNow "stop";
    titleText["Kopanie anulowane ", "PLAIN"];
    life_action_inUse = false;
};
5 cutRsc["life_progress", "PLAIN"];
_ui = GVAR_UINS "life_progress";
_upp = "Czyszczenie znalezisk..";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...", "%", _upp];
_progress progressSetPosition 0.009;
_cpRate = 0.01;
_cP = 0.01;
while {
    true
}
do {
    if ! (animationState player in _availableAnimations) then {
        _selectedAnimation = selectRandom _availableAnimations;
        [player, _selectedAnimation, true] remoteExecCall["life_fnc_animSync", RCLIENT];
        player switchMove _selectedAnimation;
        player playMoveNow _selectedAnimation;
    };
    sleep 0.1;
    _cP = _cP + _cpRate;
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format["%3 (%1%2)...", round(_cP * 100), "%", _upp];
    if (_cP >= 1) exitWith {};
    if (!alive player) exitWith {};
    if (player != vehicle player) exitWith {};
    if (life_interrupted) exitWith {};
    if (dialog) exitWith {};
}; life_action_inUse = false;
5 cutText["", "PLAIN"];
player playActionNow "stop";
if (!alive player) exitWith {
    life_action_inUse = false;
};
if (dialog) exitWith {
    life_action_inUse = false;
};
if (player != vehicle player) exitWith {
    life_action_inUse = false;
};
if (life_interrupted) exitWith {
    life_interrupted = false;
    player playActionNow "stop";
    titleText["Czyszczenie anulowane ", "PLAIN"];
    life_action_inUse = false;
};
_combinedWeight = 0; {
    _weight = M_CONFIG(getNumber, "VirtualItems", _x, "weight");
    _combinedWeight = _combinedWeight + _weight;
}
forEach _loot;
if (_combinedWeight > (life_maxWeight - life_carryWeight)) then {
    hint "Nie masz wystarczająco miejsca w ekwipunku!";
} else {
    {
        [true, _x, 1] call life_fnc_handleInv;
    }
    forEach _loot;
};
["TaskSucceeded", ["Wykopaliska Archeologiczne", "Udało ci się wykopać przedmioty w tej strefie!"]] call bis_fnc_showNotification;
deleteMarker _areaMarker;
deleteMarker _digMarker;
_task setTaskState "Succeeded";
player removeSimpleTask _task;
life_activeDigsites deleteAt _index;