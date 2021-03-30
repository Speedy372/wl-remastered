hint parseText format["<t color='#80FF00'><t size='2'><t align='center'>SafeZone<br/><br/><t color='#FFFFFF'><t align='center'><t size='1'>Znajdujesz się w zielonej strefie! Jest to bezpieczna strefa. Zachowuj się odpowiednio i przestrzegaj regulaminu!"];
SAW_zone_safe = true;
life_safe_warnings = 0;
life_safe_vdm_warnings = 0;
player setVariable["vdm_warnings", 0, true];
player allowDamage false;