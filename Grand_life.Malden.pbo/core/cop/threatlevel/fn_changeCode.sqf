_code = _this select 0;
switch (_code) do {
case "0":
    {
        titleText["<t color='#969696' size='3'>KOD ZAGROŻENIA ZOSTAŁ ZMIENIONY NA: </t><br/><t color='#07fc03' size='4'>ZIELONY</t>", "PLAIN", -1, true, true];
        hint parseText "<t color='#03b5fc' size='2.0'>POLICJA</t><br/><t color='#969696' size='1.0'>Sytuacje na wyspie jest względnie bezpieczna a działalność przestępcza jest znikoma. Policja posiada odpowiednie siły i środki do egzekwowania przestrzegania prawa.</t>";
        player setVariable["threatlevel", 1, true];
    }; case "1": {
        titleText["<t color='#969696' size='3'>KOD ZAGROŻENIA ZOSTAŁ ZMIENIONY NA: </t><br/><t color='#ff7b00' size='4'>POMARAŃCZOWY</t>", "PLAIN", -1, true, true];
        hint parseText "<t color='#03b5fc' size='2.0'>POLICJA</t><br/><t color='#969696' size='1.0'>Sytuacja na wyspie nie jest bezpieczna a działalność przestępcza jest wzmożona. Policja nie posiada odpowiednich sił i środków do egzekwowania przestrzegania prawa i utrzymania porządku na terenie całej wyspy. Policja podczas tego kodu może przeprowadzać wyrywkowe, nie zapowiedziane kontrole osobiste i przeszukania pojazdów.</t>";
        player setVariable["threatlevel", 2, true];
    };
case "2":
    {
        titleText["<t color='#969696' size='3'>KOD ZAGROŻENIA ZOSTAŁ ZMIENIONY NA: </t><br/><t color='#ff0000' size='4'>CZERWONY</t>", "PLAIN", -1, true, true];
        hint parseText "<t color='#03b5fc' size='2.0'>POLICJA</t><br/><t color='#969696' size='1.0'>Sytuacja na wyspie jest niebezpieczna a działalność zorganizowanych grup przestępczych wymknęła się spod kontroli policji. Policja może korzystać z całego wyposażenia (w tym z broni o kalibrze 7.62mm). Podczas tego kodu policja ma prawo do kontroli osobistych wszystkich obywateli i przeszukań pojazdów do nich należących. Każdy obywatel, który nie zastosuje się do poleceń policji w trakcie kodu czerwonego traktowany jest jako osoba poszukiwana. Rozpoczyna to jednostronnie interakcję policji wobec gracza.</t>";
        player setVariable["threatlevel", 3, true];
    };
case "3":
    {
        titleText["<t color='#969696' size='3'>KOD ZAGROŻENIA ZOSTAŁ ZMIENIONY NA: </t><br/><t color='#1f1e1e' size='4'>CZARNY</t>", "PLAIN", -1, true, true];
        hint parseText "<t color='#03b5fc' size='2.0'>POLICJA</t><br/><t color='#969696' size='1.0'>Wszystkie siły policji biorą udział w zorganizowanej operacji (napad na bank, napad na wyspę Rubiova, porwanie), dlatego funkcjonariusze nie będą odpowiadali w tym czasie na inne wezwania. W trakcie tego kodu obywatele mają zakaz napadania na stacje benzynowe.</t>";
        player setVariable["threatlevel", 4, true];
    }
}