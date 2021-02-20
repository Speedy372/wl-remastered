if ((player distance _this#1) > 4) exitWith {
    hint "Jesteś za daleko"
};
_param = param[0, 0];
switch (_param) do {
case 1:
    {
        _nazwa = localize(getText(missionConfigFile >> "VirtualItems" >> ((Kasztura_Skup_Item#0)#0) >> "displayName"));
        _cena = getNumber(missionConfigFile >> "VirtualItems" >> ((Kasztura_Skup_Item#0)#0) >> "sellPrice");
        _nazwa2 = localize(getText(missionConfigFile >> "VirtualItems" >> ((Kasztura_Skup_Item#1)#0) >> "displayName"));
        _cena2 = getNumber(missionConfigFile >> "VirtualItems" >> ((Kasztura_Skup_Item#1)#0) >> "sellPrice");
        _nazwa_sklepu = getText(missionConfigFile >> "kasztura_config" >> "Skup_Nazwa");
        hint parseText format["<t color='#a924ad' shadow='0' size='1.2'> %7 </t><br/>
								<t color='#ffffff' shadow='0' size='1'>%1: </t><t color='#29c429' shadow='0' size='1'>%2/%3</t><br/>
								<t color='#ffffff' shadow='0' size='1'>%4: </t><t color='#29c429' shadow='0' size='1'>%5/%6</t>", _nazwa, ((Kasztura_Skup_Item#0)#2), ((Kasztura_Skup_Item#0)#1), _nazwa2, ((Kasztura_Skup_Item#1)#2), ((Kasztura_Skup_Item#1)#1), _nazwa_sklepu];
    };
case 2:
    {
        _ludki = nearestObjects[player, ["man"], 6];
        _ludki2 = []; {
            if (isplayer _x) then {
                _ludki2 pushBack _x
            };
        }
        forEach _ludki;
        if ((count _ludki2) > 1) exitwith {
            hint "Pojedyńczo proszę."
        };
        _nazwa_sklepu = getText(missionConfigFile >> "kasztura_config" >> "Skup_Nazwa");
        _ile_sprzedali_1 = ((Kasztura_Skup_Item#0)#2);
        _ile_sprzedali_2 = ((Kasztura_Skup_Item#1)#2);
        _ile_max = getNumber(missionConfigFile >> "kasztura_config" >> "Skup_Ilosc");
        if ((_ile_sprzedali_1 >= _ile_max) && (_ile_sprzedali_2 >= _ile_max)) exitWith {
            hint format["Firma %1 już nic dziś nie skupuje.", _nazwa_sklepu]
        };
        life_shop_type = "skup_materialow";
        life_shop_npc = _this#2;
        createDialog "shops_menu";
        [] call life_fnc_virt_update;
    };
default {
        hint format["ERROR: Zgłoś to admnowi: _param = %1", _param]
    };
};