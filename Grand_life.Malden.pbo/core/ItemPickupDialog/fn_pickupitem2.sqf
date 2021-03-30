#include "script_macros.hpp"
private["_obj", "_itemInfo", "_itemName", "_illegal", "_diff", "_duped"];
if ((time - life_action_delay) < 1) exitWith {
    hint "Robisz to za szybko!"
};
if (vehicle player != player) exitWith {
    ["<t size='3.2' color='#E50000'>Nie możesz tego zrobić, gdy jesteś w pojeździe</t>"] call life_fnc_alerttwo;
};
if (life_istazed) exitWith {};
if (life_isknocked) exitWith {};
if (life_interrupted) exitWith {};
if ((player getVariable["restrained", false])) exitWith {};
if (isNull(findDisplay 1520)) then {
    _obj = life_cursorTarget;
} else {
    _obj = objNull;
    if ((lbCurSel 1521) > -1) then {
        _obj = life_pickup_item_array select(lbCurSel 1521);
    };
};
if (isNil "_obj"
OR isNull _obj OR isPlayer _obj) exitWith {};
_itemInfo = _obj getVariable "item";
if (count(player nearEntities["Man", 10]) > 1) exitWith {
    hint "Gracze są zbyt blisko ciebie, aby użyć menu do podnoszenia rzeczy. Użyj przycisku WINDOWS.";
};
if ((_itemInfo select 0) == "money") exitWith {
    hint "Nie możesz podnosić gotówki w tym menu. Użyj przycisku WINDOWS."
};
_itemName = [([_itemInfo select 0, 0] call life_fnc_varHandle)] call life_fnc_varToStr;
life_action_delay = time;
_diff = [_itemInfo select 0, _itemInfo select 1, life_carryWeight, life_maxWeight] call life_fnc_calWeightDiff;
if (_diff <= 0) exitWith {
    hint "Brak miejsca w plecaku."
};
if (_diff != _itemInfo select 1) then {
    if (([true, _itemInfo select 0, _diff] call life_fnc_pickupitemshandleinv)) then {
        player playmove "AinvPknlMstpSlayWrflDnon";
        uiSleep 0.5;
        _obj setVariable["item", [_itemInfo select 0, ((_itemInfo select 1) - _diff)], true];
        titleText[format["Podniosłeś %1 %2", _diff, _itemName], "PLAIN"];
    };
} else {
    if (([true, _itemInfo select 0, _itemInfo select 1] call life_fnc_pickupitemshandleinv)) then {
        deleteVehicle _obj;
        player playmove "AinvPknlMstpSlayWrflDnon";
        titleText[format["Podniosłeś %1 %2", _diff, _itemName], "PLAIN"];
    };
};
_log = format["%1, %2 podniósł %3 %4", name player, getPlayerUID player, _diff, _itemName];
[_log, "podnies"] remoteExecCall["A3Log", 2];
if (LIFE_SETTINGS(getNumber, "player_advancedLog") isEqualTo 1) then {
    if (LIFE_SETTINGS(getNumber, "battlEye_friendlyLogging") isEqualTo 1) then {
        advanced_log = format["picked up %1 %2", _diff, localize _itemName];
    } else {
        advanced_log = format["%1 - %2 picked up %3 %4", profileName, (getPlayerUID player), _diff, localize _itemName];
    };
    publicVariableServer "advanced_log";
};