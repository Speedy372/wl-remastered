scriptName "fn_gang_initFunctions";
life_fnc_gang_toperm = compileFinal '
    _group = group player;
    _type = (_group getVariable ["gang_type",1]);
    if(_type isEqualTo 1) exitWith {hint localize "STR_aapps_gang_isperm"};
    _price = getNumber(missionConfigFile >> "gang_config" >> "perm_gang_price") - getNumber(missionConfigFile >> "gang_config" >> "temp_gang_price");
    _result = [format[localize "STR_aapps_gang_toperm",[_price] call life_fnc_numberText], "Gangsystem", true, true] call BIS_fnc_guiMessage;
    if(!_result) exitWith {};
    if(_price > gl_money_bank) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
    gl_money_bank = gl_money_bank - _price;
    [1] call SOCK_fnc_updatePartial;
    _group setVariable ["gang_type",1,true];
    _permissions = getArray(missionConfigFile >> "gang_config" >> "defaultpermission" >> "perm");
    _group setVariable ["gang_permissions",_permissions,true];
    if(life_HC_isActive) then {
        [6,_group] remoteExecCall ["hc_fnc_gang_update",hc_life];
        [9,_group] remoteExecCall ["hc_fnc_gang_update",hc_life];
    } else {
        [6,_group] remoteExecCall ["ton_fnc_gang_update",2];
        [9,_group] remoteExecCall ["ton_fnc_gang_update",2];
    };
    sleep 0.3;
    closeDialog 0;
    0 spawn life_fnc_gang_openDialog;
';
life_fnc_gang_bankupdate = compileFinal '
    _group = group player;
    _taxsum = (_group getVariable ["gang_tax_sum",0]);
    if(_taxsum isEqualTo 0) then {
        ctrlShow[220127,false];
    } else {
        ctrlSHow[220127,true];
    };
    ctrlSetText[220122,[_group getVariable ["gang_bank",0]] call life_fnc_numberText];
    _max = (_group getVariable ["gang_level",0]);
    _max = getNumber(missionConfigFile >> "gang_config" >> "upgrades" >> format["level%1",_max] >> "bank_limit");
    ctrlSetText[220123,format["/ %1,-",[_max] call life_fnc_numberText]];
    ctrlSetText[220124,[gl_money_bank] call life_fnc_numberText];
';
life_fnc_gang_bankaction = compileFinal '
    _deposit = param [0, false, [false]];
    _amount = ctrlText 220125;
    _amount = parseNumber _amount;
    _group = group player;

    sleep random(1);
	if(life_gang_atm) exitWith {};
	life_gang_atm = true;
	_currentuser = (_group getVariable ["dialog_gang_atm","[]"]);
	if(_currentuser isEqualTo "[]") exitWith {closeDialog 0; life_gang_atm = false};
	_currentuser = call compile _currentuser;
	if(!((_currentuser select 1) isEqualTo (getplayeruid player))) exitWith {hint "Nice try"; life_gang_atm = false};

    _val = (_group getVariable ["gang_bank",0]);
    if(_amount <= 0) exitWith {hint localize "STR_aapps_gang_novalue"; life_gang_atm = false};
    if(_amount > 999999) exitWith {hint localize "STR_aapps_gang_toohigh"; life_gang_atm = false};
    if(_deposit) then {
        if(_amount > gl_money_bank) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
        _val = _val + _amount;
        _max = (_group getVariable ["gang_level",0]);
        _max = getNumber(missionConfigFile >> "gang_config" >> "upgrades" >> format["level%1",_max] >> "bank_limit");
        if(_val > _max) exitWith {hint format[localize "STR_aapps_gang_banklimit",[_max] call life_fnc_numberText]};
        gl_money_bank = gl_money_bank - _amount;
        _group setVariable ["gang_bank",_val,true];
        hint format[localize "STR_aapps_gang_deposited",[_amount] call life_fnc_numberText];
    } else {
        if(_amount > _val) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
        gl_money_bank = gl_money_bank + _amount;
        _Val = _val - _amount;
        _group setVariable ["gang_bank",_val,true];
        hint format[localize "STR_aapps_gang_withdrawed",[_amount] call life_fnc_numberText];
    };
    0 call life_fnc_gang_bankupdate;
    [1] call SOCK_fnc_updatePartial;
    if(life_HC_isActive) then {
        [3,_group] remoteExecCall ["HC_fnc_gang_update",hc_life];
    } else {
        [3,_group] remoteExecCall ["TON_fnc_gang_update",2];
    };
	sleep 1;
	life_gang_atm = false;
';
life_fnc_gang_upgrade = compileFinal '
    _group = group player;
    _lvl = (_group getVariable ["gang_level",0]);
    _lvl = _lvl + 1;
    _temp = missionConfigFile >> "gang_config" >> "upgrades" >> format["level%1",_lvl];
    if(!(isClass(_temp))) exitWith {hint localize "STR_aapps_gang_maxlevel"};
    _price = getNumber(_temp >> "price");
    if(_price > gl_money_bank) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
    _result = [format[localize "STR_aapps_gang_upgradelvl",_lvl,[_price] call life_fnc_numberText], "Gangsystem", true, true] call BIS_fnc_guiMessage;
    if(!_result) exitWith {};
    gl_money_bank = gl_money_bank - _price;
    _group setVariable ["gang_level",_lvl,true];
    [1] call SOCK_fnc_updatePartial;
    if(life_HC_isActive) then {
        [2,_group] remoteExecCall ["hc_fnc_gang_update",hc_life];
    } else {
        [2,_group] remoteExecCall ["TON_fnc_gang_update",2];
    };
    _members =+ (_group getVariable ["gang_members",[]]);
	sleep 0.3;
    closeDialog 0;
	0 spawn life_fnc_gang_openDialog;
';