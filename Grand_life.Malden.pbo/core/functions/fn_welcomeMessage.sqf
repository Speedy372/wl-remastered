_onScreenTime = 7;
[] spawn {
    sleep 20;
};
_role1 = "Witaj na serwerze Grand-Life!";
_role1names = ["Największym serwerze role-play w Polsce!"];
_role2 = "Cieszymy się, że postanowiłeś do nas dołączyć.";
_role2names = ["Mamy nadzieję, że miło spędzisz swój czas i zostaniesz na dłużej!"];
_role3 = "Skład zarządu naszego hostingu:";
_role3names = ["DonPedroTV, Krzysiu"];
_role4 = "Skład zarządu naszego serwera:";
_role4names = ["VinxteR, Cordis"];
_role5 = "Administratorzy naszego serwera:";
_role5names = ["Mariusz, Flimson, Clefu, Reniok, EDZ"];
_role6 = "Developerzy naszego serwera:";
_role6names = ["DonPedroTV, Kasztura, Joker73, Kamil Wielki, RagnaRock3"];
_role7 = "To właśnie ten zespół stworzył serwer pełen pasji.";
_role7names = ["Założenie było proste: 'Stwórzmy serwer od graczy dla graczy' "];
_role8 = "Chcesz zostać policjantem? A może chcesz pomagać innym jako medyk?";
_role8names = ["Odzwiedź nasze forum: grandlife.pl - poznasz tam więcej szczegółów"];
_role9 = "Nasz serwer restartuje się 4 razy dziennie:";
_role9names = ["00:00, 06:00, 12:00, 18:00"];
_role10 = "Miłej gry i niezapomnianych chwil!";
_role10names = ["Życzy cały zespół Grand-Life"]; {
    sleep 5;
    _memberFunction = _x select 0;
    _memberNames = _x select 1;
    _finalText = format["<t size='0.70' color='#ffee00' align='right'>%1<br /></t>", _memberFunction];
    _finalText = _finalText + "<t size='0.80' color='#FFFFFF' align='right'>"; {
        _finalText = _finalText + format["%1<br />", _x]
    }
    forEach _memberNames;
    _finalText = _finalText + "</t>";
    _onScreenTime + (((count _memberNames) - 1) * 0.9);
    [_finalText, [safezoneX + safezoneW - 0.8, 0.50], [safezoneY + safezoneH - 0.8, 0.7], _onScreenTime, 0.5] spawn BIS_fnc_dynamicText;
    sleep(_onScreenTime);
}
forEach[[_role1, _role1names], [_role2, _role2names], [_role3, _role3names], [_role9, _role9names], [_role4, _role4names], [_role5, _role5names], [_role6, _role6names], [_role7, _role7names], [_role8, _role8names], [_role9, _role9names], [_role10, _role10names]];