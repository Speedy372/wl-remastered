waitUntil { ! (isNull(findDisplay 46))
};
disableSerialization;
4 cutRsc["statusBar", "PLAIN"];
[] spawn {
    sleep 5;
    while {
        true
    }
    do {
        sleep 1;
        if (isNull((uiNamespace getVariable "statusBar") displayCtrl 1000)) then {
            diag_log "statusbar is null create";
            disableSerialization;
            4 cutRsc["statusBar", "PLAIN"];
        };
        _unit = _this select 0;
        _nakit = [gl_money_cash] call life_fnc_numberText;
        _bank = ([gl_money_bank] call life_fnc_numberText);
        _polis = (west countSide playableUnits);
        _doktor = (independent countSide playableUnits);
        _sivil = (civilian countSide playableUnits);
        _time = (round(360 - (serverTime) / 60));
        _hours = (floor(_time / 60));
        _minutes = (_time - (_hours * 60));
        _players = (count playableUnits);
        if (isNil {
            player getVariable "threatlevel"
        }) then {
            player setVariable["threatlevel", 1, true];
            diag_log "nice meme.";
        };
        _threat = "ZIELONY";
        _threatlevel = codeVar getVariable["threatlevel", 1];
        if (_threatlevel == 2) then {
            _threat = "POMARANCZOWY";
        };
        if (_threatlevel == 3) then {
            _threat = "CZERWONY";
        };
        if (_threatlevel == 4) then {
            _threat = "CZARNY";
        };
        switch (_minutes) do {
        case 9:
            {
                _minutes = "09"
            };
        case 8:
            {
                _minutes = "08"
            };
        case 7:
            {
                _minutes = "07"
            };
        case 6:
            {
                _minutes = "06"
            };
        case 5:
            {
                _minutes = "05"
            };
        case 4:
            {
                _minutes = "04"
            };
        case 3:
            {
                _minutes = "03"
            };
        case 2:
            {
                _minutes = "02"
            };
        case 1:
            {
                _minutes = "01"
            };
        case 0:
            {
                _minutes = "00"
            };
        };
        (( uiNamespace getVariable "statusBar") displayCtrl 1000) ctrlSetStructuredText parseText format["
			 GRACZE: %2 | POLICJA: %3 | CYWILE: %5 | MEDYCY: %4 | KOD: %11 | FORUM: GRANDLIFE.PL | DO RESTARTU: %8:%9", "%", _players, _polis, _doktor, _sivil, _nakit, round diag_fps, _hours, _minutes, _bank, _threat];
    };
};