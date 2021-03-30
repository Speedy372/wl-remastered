#include "script_macros.hpp"
private["_dialog", "_item", "_craftSites", "_site", "_vehicle", "_itemInfo", "_oldItem", "_newItem", "_upp", "_itemName", "_ui", "_progress", "_pgText", "_cP", "_allMaterial", "_matsNeed", "_invSize", "_handledItem", "_itemFilter", "_backpackOldItems", "_weight", "_nearCar", "_vehicleCheck", "_trunkCar", "_trunk", "_vehCheck", "_invAmount", "_weight"];
disableSerialization;
_dialog = findDisplay 666;
if (! ((player distance(getMarkerPos "CraftingArea1") < 50) OR(player distance(getMarkerPos "CraftingArea2") < 50) OR(player distance(getMarkerPos "CraftingArea3") < 50))) exitWith {
    hint "Jak mogę to zrobić bez odpowiednich narzędzi? Przejdź do strefy Kraftu";
};
if ((lbCurSel 669) isEqualTo - 1) exitWith {
    hint localize "STR_ISTR_SelectItemFirst";
};
_item = lbData[669, (lbCurSel 669)];
_nearCar = nearestobject[player, "LandVehicle"];
_vehicleCheck = false;
_craftSites = ["craft_1", "craft_2", "craft_3"]; {
    if (player distance(getmarkerpos _x) < 50) then {
        _site = _x;
    };
}
foreach _craftSites;
if (_nearcar iskindof "LandVehicle") then {
    if (_nearCar in life_ogVehicles) then {
        _vehicleCheck = true;
        _trunkCar = _nearCar getvariable "Trunk";
        _trunk = _trunkCar select 0;
    };
};
_allMaterial = true;
_itemFilter = lbData[673, (lbCurSel 673)];
_matsNeed = 0;
_config = [_itemFilter] call life_fnc_craftCfg; {
    if (_item isEqualTo(_x select 0)) then {
        _matsNeed = _x select 1;
        _invSize = count _matsNeed;
        for [{
            _i = 0
        },
        {
            _i < _invSize - 1
        },
        {
            _i = _i + 2
        }] do {
            _matsNum = _matsNeed select _i + 1;
            _str = ITEM_VARNAME(_matsNeed select _i);
            if ((GVAR_MNS _str) < _matsNum) then {
                if (!_vehicleCheck) exitwith {
                    _allMaterial = false;
                };
                if (! (([_trunk, _matsNeed select _i, _matsNum] call life_fnc_itemInVeh) select 0)) exitWith {
                    _allMaterial = false;
                };
            };
        };
    };
}
foreach _config;
if (!_allMaterial) exitWith {
    hint localize "STR_PM_NoMaterial";
};
if ((count _matsNeed) isEqualTo 0) exitWith {
    hint "Nie masz potrzebnych materiałów.";
};
if (_itemFilter isEqualTo "backpack" && backpack player != "") exitWith {
    hint localize "STR_CRAFT_AR_Backpack";
};
if (_itemFilter isEqualTo "uniform" && uniform player != "") exitWith {
    hint localize "STR_CRAFT_AR_Uniform";
};
if (_itemFilter isEqualTo "ammo" && !(player canadd _item)) exitwith {
    hint "Kompletny asortyment";
};
if (_itemFilter isEqualTo "attach" && !(player canadd _item)) exitwith {
    hint "Kompletny asortyment";
};
if (_itemFilter isEqualTo "vest" && vest player != "") exitwith {
    hint "Nosisz kamizelkę. NIe można mieć 2.";
};
if (_itemFilter isEqualTo "vehicle") then {
    if (count nearestObjects[getmarkerpos _site, ["Car", "Air", "Ship"], 10] > 0) exitwith {
        hint "Poszukaj na mapie";
    };
};
if (_itemFilter isEqualTo "item") then {
    _weight = M_CONFIG(getNumber, "VirtualItems", _item, "weight");
    if (life_carryWeight + _weight > life_maxWeight) exitWith {
        hint localize "STR_NOTF_NoRoom";
    };
};
if (_itemFilter isEqualTo "weapon" && !(player canAdd _item) && (currentWeapon player != "")) exitWith {
    hint localize "STR_NOTF_NoRoom";
};
_oldItem = _matsNeed;
_newItem = _item;
if (_itemFilter isEqualTo "item") then {
    _itemName = localize(ITEM_NAME(_newitem));
} else {
    _itemInfo = [_newItem] call life_fnc_fetchCfgDetails;
    _itemName = _itemInfo select 1;
};
_upp = format["Construction %1", _itemName];
closeDialog 0;
5 cutRsc["life_progress", "PLAIN"];
_ui = uiNameSpace GVAR "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...", "%", _upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
_removeItemSuccess = true;
_invSize = count _oldItem;
for [{
    _i = 0
},
{
    _i < _invSize - 1
},
{
    _i = _i + 2
}] do {
    _handledItem = M_CONFIG(getText, "VirtualItems", _oldItem select _i, "variable");
    if (! ([false, _oldItem select _i, _oldItem select(_i + 1)] call life_fnc_handleInv)) then {
        if (!_vehicleCheck) exitwith {
            _removeItemSuccess = false;
        };
        _vehCheck = [_trunk, _oldItem select _i, _oldItem select(_i + 1), true] call life_fnc_itemInVeh;
        if (! (_vehCheck select 0)) exitWith {
            _removeItemSuccess = false;
        };
        _invAmount = _trunk select(_vehcheck select 1) select 1;
        _weight = ([_oldItem select _i] call life_fnc_itemWeight) * (_oldItem select(_i + 1));
        if ((_oldItem select(_i + 1)) isEqualTo _invAmount) then {
            _trunk set[(_vehCheck select 1), -1];
            _trunk = _trunk - [-1];
        } else {
            _trunk set[(_vehCheck select 1), [(_oldItem select _i), (_invAmount - (_oldItem select(_i + 1)))]];
        };
        _nearCar setvariable["Trunk", [_trunk, (_oldItem select(_i + 1)) - _weight], true];
    };
}; if (!_removeItemSuccess) exitWith {
    hint "Nie udało się usunąć elementu";
    life_is_processing = false;
};
[] call life_fnc_p_updateMenu;
life_is_processing = true;
while {
    true
}
do {
    sleep 0.3;
    _cP = _cP + 0.01;
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format["%3 (%1%2)...", round(_cP * 100), "%", _upp];
    if (_cP >= 1) exitWith {};
}; if (_itemFilter isEqualTo "backpack") then {
    if (backpack player isEqualTo "") then {
        player addBackpack _newItem;
    } else {
        hint localize "STR_CRAFT_AR_Backpack";
        life_is_processing = false;
    };
};
if (_itemFilter isEqualTo "vest") then {
    if (vest player isEqualTo "") then {
        player addVest _newItem;
    } else {
        hint "Nosisz kamizelkę. NIe można mieć 2.";
        life_is_processing = false;
    };
};
if (_itemFilter isEqualTo "ammo") then {
    if (player canAdd _newItem) then {
        player addMagazine _newitem;
    } else {
        hint "Kompletny asortyment";
    };
};
if (_itemFilter isEqualTo "attach") then {
    if (player canAdd _newItem) then {
        player addItem _newitem;
    } else {
        hint "Kompletny asortyment";
    };
};
if (_itemFilter isEqualTo "item") then {
    _handledItem = M_CONFIG(getText, "VirtualItems", _newitem, "variable");
    if (_newitem isEqualTo "plastic") then {
        [true, _handledItem, 3] call life_fnc_handleInv;
    } else {
        [true, _handledItem, 1] call life_fnc_handleInv;
    };
};
if (_itemFilter isEqualTo "uniform") then {
    if (uniform player isEqualTo "") then {
        player addUniform _newItem;
    } else {
        hint localize "STR_CRAFT_AR_Uniform";
        life_is_processing = false;
    };
};
if (_itemFilter isEqualTo "vehicle") then {
    _vehicle = createVehicle[_item, (getMarkerPos _site), [], 0, "NONE"];
    waitUntil { ! isNil "_vehicle"
    };
    _vehicle allowDamage false;
    _vehicle lock 2;
    _vehicle setVectorUp(surfaceNormal(getMarkerPos _site));
    _vehicle setDir(markerDir _site);
    _vehicle setPos(getMarkerPos _site);
    [_vehicle, 0] remoteExecCall["life_fnc_colorVehicle", 0];
    [_vehicle] call life_fnc_clearVehicleAmmo;
    [_vehicle, "trunk_in_use", false, true] remoteExecCall["TON_fnc_setObjVar", 2];
    [_vehicle, "vehicle_info_owners", [[getPlayerUID player, profileName]], true] remoteExecCall["TON_fnc_setObjVar", 2];
    _vehicle disableTIEquipment false;
    [_vehicle, "vehicle_side", "civ", true] remoteExecCall["TON_fnc_setObjVar", 2];
    _vehicle allowDamage true;
    life_ogVehicles pushBack _vehicle;
    [getPlayerUID player, playerSide, _vehicle, 1] remoteExecCall["TON_fnc_keyManagement", 2];
    [(getPlayerUID player), playerSide, _vehicle, 0, 0] remoteExecCall["TON_fnc_vehicleCreate", 2];
};
if (_itemFilter isEqualTo "weapon") then {
    if (player canAdd _newItem) then {
        player addItem _newItem;
    } else {
        if (currentWeapon player isEqualTo "") then {
            player addWeapon _newItem;
        } else {
            5 cutText["", "PLAIN"];
            hint "Zostało anulowane ...";
            for [{
                _i = 0
            },
            {
                _i < _invSize - 1
            },
            {
                _i = _i + 2
            }] do {
                _handledItem = M_CONFIG(getText, "VirtualItems", _oldItem select _i, "variable");
                [true, _handledItem, _oldItem select _i + 1] call life_fnc_handleInv;
            }; life_is_processing = false;
        };
    };
};
5 cutText["", "PLAIN"];
titleText[format[localize "STR_CRAFT_Process", _itemName], "PLAIN"];
life_is_processing = false;