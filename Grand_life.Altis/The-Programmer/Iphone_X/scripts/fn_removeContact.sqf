_data = _this select 0;
_num = lbData[3005, _data];
if (_num == "") exitwith {
    hint(["STR_NO_SELECTED_CONTACT"] call max_phone_fnc_localize)
};
_name = "ERROR"; {
    _contactnum = (_x select 1);
    if (_num isEqualTo _contactnum) exitWith {
        _contact = [_x];
        _name = (_x select 0);
        maxence_contact = maxence_contact - _contact;
    };
}
forEach maxence_contact;
hint format[(["STR_REMOVE_CONTACT_SUCCES"] call max_phone_fnc_localize), _name, _num];
[] call the_programmer_iphone_fnc_contactmenu;
_num = player getVariable "maxence_numero";
[getPlayerUID player, _num, maxence_contact] remoteExec["max_phone_fnc_updatePhone", 2];