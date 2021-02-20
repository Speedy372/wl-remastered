_onScreenTime = 7;
[] spawn {
    sleep 20;
};
_role1 = "Witamy na Serwerze Grand-Life:";
_role1names = ["Największym Altis-Life w Polsce!"];
_role2 = "Czas spędzony na naszej wyspie!";
_role2names = ["Liczymy że spędzisz go w miłej atmosferze i wrócisz na kolejny dzień!"];
_role3 = "Skład naszej Administracji";
_role3names = ["Colin Prudnikow, DonPedroTV, Joker, Tandro, Mariusz, John"];
_role4 = "Supporci naszego serwera";
_role4names = ["Clefu, Reniok, EDZ, Flimson "];
_role5 = "Developerzy naszego serwera";
_role5names = ["DonPedroTV, Kasztura, Joker"];
_role6 = "Serwer z pasji, doświadczenia oraz zaangażowania";
_role6names = ["Stworzyliśmy serwer od graczy dla graczy! Chcemy aby to WAM się podobało!"];
_role7 = "Masz problem, chcesz wnioskować o policjanta, medyka - wejdź na forum:";
_role7names = ["Link do naszego forum: grandlife.pl"];
_role8 = "Znalazłeś błąd na serwerze?";
_role8names = ["Skontaktuj się z nami! Wykorzystanie ich jest SUROWO karane!"];
_role9 = "Restarty serwera";
_role9names = ["00:00, 06:00, 12:00, 18:00"];
_role10 = "Miłej gry i spokojnego dnia!";
_role10names = ["Życzy cała administracja Grand-Life <3"]; {
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