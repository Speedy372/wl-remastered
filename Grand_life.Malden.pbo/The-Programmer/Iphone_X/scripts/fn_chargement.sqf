disableSerialization;
createDialog "The_Programmer_Iphone_Loading_Menu";
_heure = str(date select 3);
_minutes = str(date select 4);
if (count _minutes isEqualTo 1) then {
    _minutes = "0" + _minutes;
};
_display = findDisplay 542367;
_display displayCtrl 2101 ctrlSetStructuredText(parseText(format["<t align = 'center' shadow = '1' size='2.5' font='PuristaBold'>%1:%2</t>", _heure, _minutes]));