waitUntil { ! isNull player && player isEqualTo player
};
if (player diarySubjectExists "controls") exitWith {};
player createDiarySubject["strefy", "Strefy"];
player createDiarySubject["ekonomia", "Licencje"];
player createDiarySubject["multiprocesy", "Prace"];
player createDiarySubject["controls", "Klawiszologia"];
player createDiaryRecord["credits", ["ArmaLife", "
ArmaLife is a GitHub project which aims to update and keep adding new features to the original 'Altis Life RPG' by Tonic.<br/><br/>
                "]];
player createDiaryRecord["changelog", ["Altis Life Changelog", "
The official changelog can be found in ArmaLife github. https://git.io/vVkhe<br/><br/>
v4.4 release 3!<br/>
By: danielstuart14<br/>
Date: 31. May 2016<br/><br/>
v4.4 release 2!<br/>
By: danielstuart14<br/>
Date: 20. March 2016<br/><br/>
v4.4 release 1!<br/>
By: danielstuart14<br/>
Date: 12. February 2016<br/><br/>
v4.3 release 4!<br/>
By: danielstuart14<br/>
Date: 31. January 2016<br/><br/>
v4.3 release 3!<br/>
By: danielstuart14<br/>
Date: Not released<br/><br/>
v4.3 release 2!<br/>
By: danielstuart14<br/>
Date: 22. January 2016<br/><br/>
v4.3 release 1!<br/>
By: danielstuart14<br/>
Date: 19. January 2016<br/><br/>
                "]];
player createDiaryRecord["strefy", ["Strefy", "
1. Strefa zielona: Na terenie zielonej strefy zakazane są wszelkie wrogie interakcje np. powalanie, rabowanie, kradzież pojazdów. Jest to strefa objęta safezone’m.<br/>
2. Strefa niebieska: Strefy niebieskie są nakładane w miejsca w których toczy się akcja policji. Cywile którzy nie chcą wchodzić w wrogą interakcję z policją a znaleźli się na terenie tej strefy powinni niezwłocznie założyć ręce na głowę.<br/>
3. Strefa niebieska kratkowana: Posterunki policji są uważane za strefy bezpieczne, w tych obszarach zabronione jest wszczynanie jakichkolwiek działań przeciwko policji. Jeżeli na strefę niebieską kratkowaną zostanie nałożona strefa niebieska, przestaje on pełnić rolę strefy bezpiecznej - obowiązują na niej zasady strefy niebieskiej.<br/>
4. Strefa czerwona: Czerwona strefa uważana jest za strefę bezprawia - to obszary, w których możesz zabijać graczy bez konieczności inicjowania. Strefą tą objęte są wszystkiego nielegalne lokacje takie jak np. diler narkotyków czy plantacja heroiny.<br/>
5. Strefa czerwona kratkowana: Czerwona strefa kratkowana jest miejscem opanowanym przez rebeliantów. Policja nie jest mile widziana na ich terenie. Przebywający na jej terenie policjanci są jednostronnie zainicjowani względem rebeliantów. Pozostałych obywateli na ich terenie obowiązują normalne zasady inicjacji interakcji. Strefą tą objęte są kryjówki gangów oraz baza rebeliantów.<br/>

                "]];
player createDiaryRecord["ekonomia", ["Licencje", "
	Uprawnienia<br/>
<br/>
Prawo jazdy na samochody osobowe: 10 000$<br/>
Prawo jazdy na samochody ciężarowe: 80 000$<br/>
Licencja pilota: 500 000$<br/>
Licencja nurka: 10 000$<br/>
Patent sternika motorowodnego: 10 000$<br/>
Pozwolenie na broń krótką: 100 000$<br/>
Pozwolenie na broń długą: 150 000$<br/>
Zarządca nieruchomości: 750 000$<br/>
-------------------------------------------<br/>
<br/>
	Legalne<br/>
<br/>
Licencja na produkcję wina: 70 000$<br/>
Licencja na przetapianie stali: 200 000$<br/>
Licencja na produkcję desek: 250 000$<br/>
Licencja na produkcję papieru: 250 000$<br/>
Licencja na produkcję farby: 250 000$<br/>
Licencja na przetapianie srebra: 500 000$<br/>
Licencja na szlifowanie diamentów: 650 000$<br/>
Licencja na rafinację oleju: 800 000$<br/>
-------------------------------------------<br/>
<br/>
	Nielegalne<br/>
<br/>
Produkcja amfetaminy: 1 500 000$<br/>
Drukowanie brudnych pieniędzy: 1 500 000$<br/>
Oczyszczanie kokainy: 2 000 000$<br/>
-------------------------------------------<br/>
<br/>
	Inne<br/>
<br/>
Trening rebelianta I  : 1 000 000$<br/>
Trening rebelianta II : 2 000 000$<br/>
Trening rebelianta III: 4 000 000$<br/>
Trening rebelianta IV : 6 000 000$<br/>
                "]];
player createDiaryRecord["controls", ["Klawiszologia", "
<br/>			
TAB: założenie rąk na głowę / światłą awaryjne<br/>
Y: telefon<br/>
U: otwieranie/zamykanie pojazdów<br/>
F: syreny (Policja/Medycy)<br/>
F1/F2/F3: gesty ręką<br/>
F9: menu animacji<br/>
WINDOWS: bagażnik pojazdu<br/>
END: otwieranie szlabanów/bram (Policja/Medycy)<br/>
SHIFT + J: włączenie neonów w pojeździe<br/>
SHIFT + 5: gest ręką<br/>
5: lista poszukiwanych<br/>
LEWY SHIFT + P: zatyczki do uszu<br/>
LEWY SHIFT + H: schowanie/wyciągnięcie broni<br/>
LEWY SHIFT + R: skucie/związanie<br/>
LEWY SHIFT + G: powalenie<br/>
LEWY SHIFT + V: bieg + skok<br/>
LEWY CTRL + F: menu wirtualnych przedmiotów<br/>
LEWY WINDOWS: główny klawisz - pozwala na wiele interakcji.<br/>
LEWY WINDOWS: podniesienie przedmiotów z ziemi / zbieranie surowców<br/>
LEWY SHIFT + L: włączenie świateł ostrzegwczych (Policja/Medycy)<br/>
LEWY SHIFT + 1/2/3 Yelpy (Policja|Medycy)<br/>
LEWY CTRL + B: aktywacja radaru w pojeździe. (Policja)<br/>
SHIFT + O: przesylki (dispatch) on/off (Policja|Medycy)<br/>
LEWY CTRL + N: nawigacja<br/>
LEWY CTRL + T: drzewko rozwoju postaci<br/>
				"]];
player createDiaryRecord["multiprocesy", ["Sposoby na zarobek", "
	LEGALNE <br/>
1. WINOGRONA | SAD WINOGRON -> MARKET<br/>
<br/>
2. WINO | SAD WINOGRON -> WINNICA -> MARKET<br/>
<br/>
3. STAL | KOPALNIA ŻELAZA + KOPALNIA WĘGLA -> HUTA STALI -> SKUP STALI <br/>
<br/>
4. SREBRO | KOPALNIA SREBRA -> HUTA SREBRA => SKUP SREBRA <br/>
<br/>
5. DIAMENTY | KOPALNIA DIAMENTÓW -> SZLIFIERNIA DIAMENTÓW -> SKUP DIAMENTÓW <br/>
<br/>
6. ROPA NAFTOWA | PLATFORMA WIERTNICZA -> RAFINERIA OLEJU -> SKUP OLEJU NAPĘDOWEGO<br/>
<br/>
7. PAPIER | LAS -> TARTAK -> FABRYKA PAPIERU -> *PÓŁPRODUKT DO DRUKOWANIA BRUDNYCH PIENIĘDZY*<br/>
<br/>
8. BARWNIK | POZYSKIWANIE PIGMENTU -> MIESZALNIA FARB -> *PÓŁPRODUKT DO DRUKOWANIA BRUDNYCH PIENIĘDZY*<br/> 
-----------------------------------------------------------------<br/>
<br/>
	NIELEGALNE <br/>
1. AMFETAMINA | LABORATORIUM CHEMICZNE -> FABRYKA AMFETAMINY -> DILER NARKOTYKÓW <br/>
<br/>
2. KOKAINA | PLANTACJA KOKAINY -> OCZYSZCZALNIA KOKAINY -> DILER NARKOTYKÓW <br/>
<br/>
5. BRUDNE PIENIĄDZE | 1x PAPIER + 1x BARWNIK -> DRUKARNIA BRUDNYCH PIENIĘDZY -> PRALNIA BRUDNYCH PIENIĘDZY<br/>
<br/>
                "]];