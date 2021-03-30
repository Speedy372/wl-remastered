private["_medicsOnline", "_medicsNear"];
disableSerialization;
playSound "wasted";
_medicsOnline = ((findDisplay 7300) displayCtrl 7304);
_medicsNear = ((findDisplay 7300) displayCtrl 7305);
waitUntil {
    _nearby = 99999; {
        if (side _x == independent && alive _x && _x != player) then {
            _distance = (getPosATL life_corpse) distance _x;
            if (_distance < _nearby) then {
                _nearby = _distance;
            };
        };
    }
    forEach playableUnits;
    _medicsOnline ctrlSetText format[localize "STR_Medic_Online", (independent countSide playableUnits)];
    if (_nearby == 99999) then {
        _medicsNear ctrlSetText format[localize "STR_Medic_NearbyNo", _nearby];
    } else {
        _medicsNear ctrlSetText format[localize "STR_Medic_Near", [(round _nearby)] call life_fnc_numberText];
    };
    sleep 1;
    (isNull(findDisplay 7300))
};