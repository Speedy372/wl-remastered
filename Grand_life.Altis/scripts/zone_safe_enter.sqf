hint parseText format["<t color='#80FF00'><t size='2'><t align='center'>SafeZone<br/><br/><t color='#FFFFFF'><t align='center'><t size='1'>bezpieczna strefa Zakaz strzelania, wchodzenia do nieswoich pojazdów, powalania oraz okradania!"];
SAW_zone_safe = true;
life_safe_warnings = 0;
life_safe_vdm_warnings = 0;
player setVariable["vdm_warnings", 0, true];
player allowDamage false;