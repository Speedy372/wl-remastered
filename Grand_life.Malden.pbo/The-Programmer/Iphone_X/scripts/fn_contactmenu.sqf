_type = param[0, 0, [0]];
if (_type isEqualTo 1) then {
    createDialog "The_Programmer_Iphone_Contact_Menu";
};
if (!isNull findDisplay 21000) exitWith {
    [] spawn the_programmer_iphone_fnc_contactmenucall;
};
disableSerialization;
_display = findDisplay 3115;
_contactList = _display displayCtrl 3005;
lbClear _contactList;
_contactList lbSetCurSel - 1; {
    _pseudo = _x select 0;
    _numero = _x select 1;
    _contactList lbAdd format["- %1 (%2)", _pseudo, _numero];
    _contactList lbSetData[(lbSize _contactList) - 1, format["%1", _numero]];
}
forEach maxence_contact;
_contactList ctrlAddEventHandler["LBDblClick", {
    _numStr = (_this select 0) lbData(_this select 1);
    closeDialog 0;
    _display2 = findDisplay 3000;
    _numeroTextCtrl = _display2 displayCtrl 3003;
    _numeroTextCtrl ctrlSetText _numStr;
}];