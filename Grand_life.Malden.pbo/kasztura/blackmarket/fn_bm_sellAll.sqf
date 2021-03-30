#include "script_macros.hpp"
private["_type", "_index", "_price", "_amount", "_name"];
if ((lbCurSel 2402) isEqualTo - 1) exitWith {};
_type = lbData[2402, (lbCurSel 2402)];
_price = getNumber(missionConfigFile >> "kasztura_config" >> "Cena_zlota_BTC");
if (_price isEqualTo - 1) exitWith {
    hint "Nie możesz sprzedać tego przedmiotu"
};
_amount = ITEM_VALUE(_type);
if ((time - life_action_delay) < 0.2) exitWith {
    hint localize "STR_NOTF_ActionDelay";
};
life_action_delay = time;
_price = (_price * _amount);
_name = M_CONFIG(getText, "VirtualItems", _type, "displayName");
if ([false, _type, _amount] call life_fnc_handleInv) then {
    BTC = BTC + _price;
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
hint format["Sprzedałeś %1 - %2 za %3 BTC", _amount, (localize _name), [_price] call life_fnc_numberText];
[3] call SOCK_fnc_updatePartial;
_log = format["%1, %2 sprzedal %3 za %4 BTC w ilosci %5", name player, getPlayerUID player, _name, [_price] call life_fnc_numberText, [_amount] call life_fnc_numberText];
[_log, "wymiana BTC"] remoteExecCall["A3Log", 2];