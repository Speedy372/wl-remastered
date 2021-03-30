#include "script_macros.hpp"
private["_type", "_index", "_price", "_amount", "_name"];
if ((lbCurSel 2402) isEqualTo - 1) exitWith {};
_type = lbData[2402, (lbCurSel 2402)];
_price = M_CONFIG(getNumber, "VirtualItems", _type, "sellPrice");
if (_price isEqualTo - 1) exitWith {};
if ! (life_shop_type isEqualTo "skup_materialow") then {
    _dynekon = missionNamespace getVariable["DYN_EKON", []];
    _cenyup = _dynekon#0;
    _cenydown = _dynekon#1;
    _procup = -1;
    _procdown = -1; {
        if (_type isEqualTo _x#0) exitWith {
            _procup = _x#1
        };
    }
    forEach _cenyup; {
        if (_type isEqualTo _x#0) exitWith {
            _procdown = _x#1
        };
    }
    forEach _cenydown;
    if (_procup != -1) then {
        _price = round(_price + (_price * _procup))
    };
    if (_procdown != -1) then {
        _price = round(_price - (_price * _procdown))
    };
};
_amount = ITEM_VALUE(_type);
if ((time - life_action_delay) < 0.2) exitWith {
    hint localize "STR_NOTF_ActionDelay";
};
life_action_delay = time;
_price = (_price * _amount);
if (life_shop_type isEqualTo "skup_materialow") then {
    _mnoznik = getNumber(missionConfigFile >> "kasztura_config" >> "Skup_Mnoznik");
    _price = round(_price + (_price * _mnoznik));
    _idemN1 = ((Kasztura_Skup_Item#0)#0);
    _idemN2 = ((Kasztura_Skup_Item#1)#0);
    _idemS1 = ((Kasztura_Skup_Item#0)#2);
    _idemS2 = ((Kasztura_Skup_Item#1)#2);
    _ilosc_max = getNumber(missionConfigFile >> "kasztura_config" >> "Skup_Ilosc");
    if (_idemN1 isEqualTo _type) then {
        if (_idemS1 + _amount > _ilosc_max) then {
            _amount = _amount - (_amount - (_ilosc_max - _idemS1))
        };
    } else {
        if (_idemS2 + _amount > _ilosc_max) then {
            _amount = _amount - (_amount - (_ilosc_max - _idemS2))
        };
    };
};
if (life_shop_type isEqualTo "drugdealer") then {
    private["_array", "_ind", "_val"];
    _array = life_shop_npc getVariable["sellers", []];
    _ind = [getPlayerUID player, _array] call TON_fnc_index;
    if (! (_ind isEqualTo - 1)) then {
        _val = ((_array select _ind) select 2);
        _val = _val + _price;
        _array set[_ind, [getPlayerUID player, profileName, _val]];
        life_shop_npc setVariable["sellers", _array, true];
    } else {
        _array pushBack[getPlayerUID player, profileName, _price];
        life_shop_npc setVariable["sellers", _array, true];
    };
    if ! (isNull(life_shop_npc getvariable["gangOwner", grpNull])) then {
        if ((life_shop_npc getvariable["gangOwner", grpNull]) isEqualTo(group player)) then {
            if (west countSide playableUnits < 3) exitWith {
                ["kartel jest aktywny kiedy jest 4 lub wiecej policjantow online", false] spawn domsg;
            };
            _mnoznik = getNumber(missionConfigFile >> "kasztura_config" >> "Kartel_Mnoznik");
            _price = round(_price + (_price * _mnoznik));
            _ilejest = life_shop_npc getVariable["sprzedaneDragi", 0];
            _ilejest = _ilejest + _amount;
            life_shop_npc setVariable["sprzedaneDragi", _ilejest, true];
            if (_ilejest > _maxdragi) then {
                life_shop_npc setVariable["sprzedaneDragi", 0, true];
                [life_shop_npc] spawn life_fnc_drugevent
            };
        };
    };
};
_name = M_CONFIG(getText, "VirtualItems", _type, "displayName");
if ([false, _type, _amount] call life_fnc_handleInv) then {
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
    if ((call life_donator) > 1) then {
        if ((call life_donator) == 2) then {
            _donatorhajs = _price * 1.05;
            CASH = CASH + _donatorhajs;
        };
        if ((call life_donator) == 3) then {
            _donatorhajs = _price * 1.10;
            CASH = CASH + _donatorhajs;
        };
    } else {
        CASH = CASH + _price;
    };
    [0] call SOCK_fnc_updatePartial;
    [] call life_fnc_virt_update;
};
if (life_shop_type isEqualTo "gold" && (LIFE_SETTINGS(getNumber, "noatm_timer")) > 0) then {
    [] spawn {
        life_use_atm = false;
        sleep((LIFE_SETTINGS(getNumber, "noatm_timer")) * 60);
        life_use_atm = true;
    };
};
if (life_shop_type isEqualTo "skup_materialow") then {
    _idemN1 = ((Kasztura_Skup_Item#0)#0);
    _idemN2 = ((Kasztura_Skup_Item#1)#0);
    switch (_type) do {
    case _idemN1:
        {
            _ilosc = getNumber(missionConfigFile >> "kasztura_config" >> "Skup_Ilosc");
            _sel1 = (Kasztura_Skup_Item#0);
            _sel2 = (Kasztura_Skup_Item#1);
            _wartosc = ((Kasztura_Skup_Item#0)#2) + _amount;
            if (_wartosc > _ilosc) then {
                _wartosc = _ilosc
            };
            _sel1 set[2, _wartosc];
            Kasztura_Skup_Item set[0, _sel1];
            publicVariable "Kasztura_Skup_Item";
        };
    case _idemN2:
        {
            _ilosc = getNumber(missionConfigFile >> "kasztura_config" >> "Skup_Ilosc");
            _sel1 = (Kasztura_Skup_Item#0);
            _sel2 = (Kasztura_Skup_Item#1);
            _wartosc = ((Kasztura_Skup_Item#1)#2) + _amount;
            if (_wartosc > _ilosc) then {
                _wartosc = _ilosc
            };
            _sel2 set[2, _wartosc];
            Kasztura_Skup_Item set[1, _sel2];
            publicVariable "Kasztura_Skup_Item";
        };
    default {
            hint "Coś się zjebało"
        };
    };
};
hint format[localize "STR_Shop_Virt_SellItem", _amount, (localize _name), [_price] call life_fnc_numberText];
[3] call SOCK_fnc_updatePartial;
_log = format["%1, %2 sprzedal %3 za %4 w ilosci %5", name player, getPlayerUID player, _name, [_price] call life_fnc_numberText, [_amount] call life_fnc_numberText];
[_log, "kupspmarket"] remoteExecCall["A3Log", 2];