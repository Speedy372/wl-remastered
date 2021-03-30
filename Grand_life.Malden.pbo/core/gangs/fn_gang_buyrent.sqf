scriptName "fn_gang_buyrent";
_type = param[0, -1, [0]];
if (_type isEqualTo - 1) exitWIth {};
_name = ctrlText 220072;
if (_name isEqualTo "") exitWith {
    hint localize "STR_aapps_gang_noname"
};
if ((count _name) < 4) exitWith {
    hint localize "STR_aapps_gang_name4chars"
};
if (life_gangname_check) exitWith {
    hint localize "STR_aapps_gang_wait"
};
life_gangname_check = true;
if (_type isEqualTo 0) then {
    if (life_HC_isActive) then {
        [_name] remoteExecCall["hc_fnc_gang_checkname", hc_life];
    } else {
        [_name] remoteExecCall["TON_fnc_gang_checkname", 2];
    };
} else {
    _result = false;
    _price = 0;
    if (_type isEqualTo 1) then {
        _price = getNumber(missionConfigFile >> "gang_config" >> "temp_gang_price");
        _result = [format[localize "STR_aapps_gang_rent_question", [_price] call life_fnc_numberText], "Gangsystem", true, true] call BIS_fnc_guiMessage;
    } else {
        _price = getNumber(missionConfigFile >> "gang_config" >> "perm_gang_price");
        _result = [format[localize "STR_aapps_gang_buy_question", [_price] call life_fnc_numberText], "Gangsystem", true, true] call BIS_fnc_guiMessage;
    };
    if (!_result) exitWith {};
    if (_price > gl_money_bank) exitWith {
        hint localize "STR_NOTF_NotEnoughMoney"
    };
    gl_money_bank = gl_money_bank - _price;
    [1] call SOCK_fnc_updatePartial;
    if (life_HC_isActive) then {
        [_type - 1, _name, player] remoteExec["hc_fnc_gang_buy", hc_life];
    } else {
        [_type - 1, _name, player] remoteExec["TON_fnc_gang_buy", 2];
    };
};
sleep 4;
life_gangname_check = false;