if (deadPlayer) exitwith {};
_injuryArray = ["head", "face_hub", "neck", "body", "spine1", "arms", "legs", "pelvis", "hands", "spine2", "spine3", "arms"];
_damage = param[0, 0];
_currentHitLocation = param[1, ""];
_source = param[2, objnull];
if (_currentHitLocation IN _injuryArray) then {
    _myInjuries = player getVariable "playerInjuries";
    _currentHitNumber = _injuryArray find _currentHitLocation;
    if (_currentHitNumber == 10) then {
        _currentHitNumber = 9
    };
    _mychance = round(random 2);
    _injuryLevel = (_myInjuries select _currentHitnumber) + _myChance;
    if (_injuryLevel > 4) then {
        _injuryLevel = 4;
    };
    _myInjuries set[_currentHitNumber, _injuryLevel];
    if (_currentHitLocation == "Body") then {
        _chance = round(random 50);
        if (_chance < 3) then {
            _organDamage = round(random 4);
            _myInjuries set[9, _organDamage];
        };
    };
    if (_currentHitLocation IN["head", "face_hub", "neck"] && _source != player) then {
        _dmg = damage player;
        _dmg = _dmg + 0.05;
        if (_dmg > 0.9) then {
            _dmg = 0.9
        };
        player setdamage _dmg;
    };
    if (_currentHitLocation IN["body", "spine1", "spine2", "spine3"] && _source != player) then {
        [9] spawn life_fnc_bleed;
    };
    if (_currentHitLocation IN["legs", "pelvis", "hands", "arms"] && _source != player) then {
        [3] spawn life_fnc_bleed;
    };
    player setVariable["playerInjuriesToUpdate", _myInjuries, false];
    if (myUpdate) then {
        [] spawn life_fnc_doInjuriesUpdate;
    };
};