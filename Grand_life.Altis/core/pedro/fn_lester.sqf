private["_robber", "_shop", "_kassa", "_ui", "_progress", "_pgText", "_cP", "_rip", "_pos"];
_shop = [_this, 0, ObjNull, [ObjNull]] call BIS_fnc_param;
_robber = [_this, 1, ObjNull, [ObjNull]] call BIS_fnc_param;
_action = [_this, 2] call BIS_fnc_param;
if (_rip) exitWith {
    hint "Nic ci nie dam złodzieju!"
};
if ! (alive _robber) exitWith {};
if (_robber distance _shop > 5) exitWith {
    hint "Nie mozesz byc dalej niz 5 m!"
};
if (vehicle player != _robber) exitWith {
    hint "Musisz wyjsc z pojazdu!"
};
_rip = true;
_shop removeAction _action;
_perk = [life_currentExpPerks, "lester_1"] call mav_ttm_fnc_hasPerk;
_itemy = ["plikmisji", "uran_niep", "jewellery", "goldcoins", "lizak", "redgull", "marijuana", "rock", "cocaine_processed", "heroin_processed", "srebro_p"];
_dice = random(100);
if (_dice < 85) then {
    if (!_perk) then {
        _item = selectRandom _itemy;
        hint "Masz i spier*laj";
        [true, _item, 1] call life_fnc_handleInv;
        _wiad = format["Otrzymales od lestera: %1", _item];
        [_wiad, "event", 15] call pedro_fnc_pow;
    } else {
        hint "Masz kolego :)";
        _item = selectRandom _itemy;
        _item2 = selectRandom _itemy;
        [true, _item, 1] call life_fnc_handleInv;
        [true, _item2, 1] call life_fnc_handleInv;
        _wiad2 = format["Otrzymales od lestera: %1 oraz %2", _item, _item2];
        [_wiad2, "event", 15] call pedro_fnc_pow;
    };
    ["rozmowalester"] spawn mav_ttm_fnc_addExp;
} else {
    hint "Ale zaraz ci wpierdole wpuszcze!";
    sleep 1;
    player setdamage 1;
};
sleep 600;
_rip = false;
_action = _shop addAction["Popros lestera o przedmiot", pedro_fnc_lester];