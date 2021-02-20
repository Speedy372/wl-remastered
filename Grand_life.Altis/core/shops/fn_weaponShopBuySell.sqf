#include "script_macros.hpp"
disableSerialization;
private["_price", "_item", "_itemInfo", "_bad"];
if ((lbCurSel 38403) isEqualTo - 1) exitWith {
    hint localize "STR_Shop_Weapon_NoSelect"
};
_price = lbValue[38403, (lbCurSel 38403)];
if (isNil "_price") then {
    _price = 0;
};
_item = lbData[38403, (lbCurSel 38403)];
_itemInfo = [_item] call life_fnc_fetchCfgDetails;
_bad = "";
if ((_itemInfo select 6) != "CfgVehicles") then {
    if ((_itemInfo select 4) in [4096, 131072]) then {
        if (! (player canAdd _item) && (uiNamespace getVariable["Weapon_Shop_Filter", 0]) != 1) exitWith {
            _bad = (localize "STR_NOTF_NoRoom")
        };
    };
};
if (_bad != "") exitWith {
    hint _bad
};
if ((uiNamespace getVariable["Weapon_Shop_Filter", 0]) isEqualTo 1) then {
    _grp = group player;
    if (! ((_grp getVariable["gang_id", -1]) isEqualTo - 1)) then {
        _permissions = _grp getVariable["gang_permissions", []];
        _playerpermission = []; {
            if ((_x select 0) isEqualTo(life_gangData select 1)) exitWith {
                _playerpermission = _x;
            };
        }
        forEach _permissions;
        _playerpermission = _playerpermission select 2;
        _tax = _grp getVariable["gang_tax", 0];
        if (! (_tax isEquaLTo 0) && {
            "PAYTAX" in _playerpermission
        }) then {
            _taxsum = _grp getVariable["gang_tax_sum", 0];
            _val = _price * (_tax / 100);
            _grp setVariable["gang_tax_sum", _taxsum + _val, true];
            if (life_hc_isActive) then {
                [15, _grp] remoteExecCall["hc_fnc_gang_update", HC_life];
            } else {
                [15, _grp] remoteExecCall["ton_fnc_gang_update", 2];
            };
            _price = _price - _val;
        };
    };
    CASH = CASH + _price;
    [_item, false] call life_fnc_handleItem;
    hint parseText format[localize "STR_Shop_Weapon_Sold", _itemInfo select 1, [_price] call life_fnc_numberText];
    [nil, (uiNamespace getVariable["Weapon_Shop_Filter", 0])] call life_fnc_weaponShopFilter;
    _log = format["%1, %2 sprzedal %3 za %4", name player, getPlayerUID player, _item, [_price] call life_fnc_numberText];
    [_log, "kupspbron"] remoteExecCall["A3Log", 2];
} else {
    private _altisArray = ["Land_ConcreteWell_02_F"];
    private _tanoaArray = ["Land_School_01_F", "Land_Warehouse_03_F", "Land_House_Small_02_F"];
    private _hideoutObjs = [[["Altis", _altisArray], ["Tanoa", _tanoaArray]]] call TON_fnc_terrainSort;
    private _hideout = (nearestObjects[getPosATL player, _hideoutObjs, 25]) select 0;
    if (!isNil "_hideout" && { ! isNil {
            group player getVariable "gang_bank"
        }
    } && {
        (group player getVariable "gang_bank") >= _price
    }) then {
        [format[(localize "STR_Shop_Virt_Gang_FundsMSG") + "<br/><br/>" + (localize "STR_Shop_Virt_Gang_Funds") + " <t color='#8cff9b'>$%1</t><br/>" + (localize "STR_Shop_Virt_YourFunds") + " <t color='#8cff9b'>$%2</t>", [(group player getVariable "gang_bank")] call life_fnc_numberText, [CASH] call life_fnc_numberText], localize "STR_Shop_Virt_YourorGang", localize "STR_Shop_Virt_UI_GangFunds", localize "STR_Shop_Virt_UI_YourCash"] spawn life_fnc_guiMsg;
        waitUntil { ! (typeName guiMessage_status isequalto "STRING")
        };
        if (typeName guiMessage_status isequalto "STRING") exitwith {
            hint "ERROR: typeName guiMessage_status == string"
        };
        if (guiMessage_status) then {
            hint parseText format[localize "STR_Shop_Weapon_BoughtGang", _itemInfo select 1, [_price] call life_fnc_numberText];
            _funds = group player getVariable "gang_bank";
            _funds = _funds - _price;
            group player setVariable["gang_bank", _funds, true];
            [_item, true] call life_fnc_handleItem;
            _gengID = group player getVariable["gang_id", -1];
            if (_gengID == -1) exitwith {
                hint "Coś się zjebało: _gengID = -1 "
            };
            if (life_HC_isActive) then {
                [3, group player] remoteExecCall["HC_fnc_gang_update", HC_Life];
            } else {
                [3, group player] remoteExecCall["ton_fnc_gang_update", RSERV];
            };
        } else {
            if (_price > CASH) exitWith {
                hint localize "STR_NOTF_NotEnoughMoney"
            };
            hint parseText format[localize "STR_Shop_Weapon_BoughtItem", _itemInfo select 1, [_price] call life_fnc_numberText];
            CASH = CASH - _price;
            [_item, true] call life_fnc_handleItem;
        };
    } else {
        if (_price > CASH) exitWith {
            hint localize "STR_NOTF_NotEnoughMoney"
        };
        hint parseText format[localize "STR_Shop_Weapon_BoughtItem", _itemInfo select 1, [_price] call life_fnc_numberText];
        CASH = CASH - _price;
        [_item, true] call life_fnc_handleItem;
    };
};
[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;