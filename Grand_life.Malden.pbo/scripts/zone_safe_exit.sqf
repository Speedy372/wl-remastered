hint parseText format["<t color='#5C87C7'><t size='2'><t align='center'>SafeZone<br/><br/><t color='#FFFFFF'><t align='center'><t size='1'> Opuściłeś właśnie zieloną strefę. Nie jesteś już chroniony, uważaj na siebie!"];
SAW_zone_safe = false;
life_safe_warnings = 0;
life_safe_vdm_warnings = 0;
player setVariable["vdm_warnings", 0, true];
player allowDamage true;