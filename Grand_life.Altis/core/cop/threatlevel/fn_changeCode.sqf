_code = _this select 0;
switch (_code) do {
case "0":
    {
        titleText["<t color='#969696' size='3'>KOD ZOSTAL ZMIENIONY NA </t><br/><t color='#07fc03' size='4'>ZIELONY</t> <br/><t color='#03b5fc'> POZDRAWIA POLICJA </t>", "PLAIN", -1, true, true];
        hint parseText "<t color='#03b5fc' size='2.0'>POLICJA</t><br/><t color='#969696' size='1.0'>Policja wprowadza kod ZIELONY oznacza on iż na wyspie jest CAŁKOWICIE bezpiecznie. Policja panuję nad całą wyspą.</t>";
        player setVariable["threatlevel", 1, true];
    }; case "1": {
        titleText["<t color='#969696' size='3'>KOD ZOSTAL ZMIENIONY NA </t><br/><t color='#ff7b00' size='4'>POMARANCZOWY</t> <br/><t color='#03b5fc'> POZDRAWIA POLICJA </t>", "PLAIN", -1, true, true];
        hint parseText "<t color='#03b5fc' size='2.0'>POLICJA</t><br/><t color='#969696' size='1.0'>Policja wprowadza kod POMARAŃCZOWY oznacza on iż na wyspie zaczynają grasować grupy przestępcze. Policja przestrzega i prosi o ostrożne poruszanie się poza bezpiecznymi miastami.</t>";
        player setVariable["threatlevel", 2, true];
    };
case "2":
    {
        titleText["<t color='#969696' size='3'>KOD ZOSTAL ZMIENIONY NA </t><br/><t color='#ff0000' size='4'>CZERWONY</t> <br/><t color='#03b5fc'> POZDRAWIA POLICJA </t>", "PLAIN", -1, true, true];
        hint parseText "<t color='#03b5fc' size='2.0'>POLICJA</t><br/><t color='#969696' size='1.0'>Policja wprowadza kod CZERWONY oznacza on iż na wyspie jest dużo grup zorganizowanych. Policja przestrzega i prosimy o ostrożne poruszanie się poza bezpiecznymi miastami. Zaleca również zaprzestanie wykonanywania prac iż ryzyko napadu jest bardzo duże.</t>";
        player setVariable["threatlevel", 3, true];
    };
case "3":
    {
        titleText["<t color='#969696' size='3'>KOD ZOSTAL ZMIENIONY NA </t><br/><t color='#1f1e1e' size='4'>CZARNY</t> <br/><t color='#03b5fc'> POZDRAWIA POLICJA </t>", "PLAIN", -1, true, true];
        hint parseText "<t color='#03b5fc' size='2.0'>POLICJA</t><br/><t color='#969696' size='1.0'>Policja wprowadza kod CZARNY oznacza on iż na wyspie trwa porwanie lub bank.</t>";
        player setVariable["threatlevel", 4, true];
    }
}