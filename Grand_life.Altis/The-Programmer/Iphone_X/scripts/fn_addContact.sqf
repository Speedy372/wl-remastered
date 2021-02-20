_addname = ctrlText 3051;
_addnum = ctrlText 3052;
if (_addname == "") exitWith {
    hint(["STR_FAIL_ADD_CONTACT_NAME_BAD"] call max_phone_fnc_localize);
};
if (_addnum == "") exitWith {
    hint(["STR_FAIL_ADD_CONTACT_NUM_BAD"] call max_phone_fnc_localize);
};
hint format[(["STR_ADD_CONTACT_SUCCES"] call max_phone_fnc_localize), _addname, _addnum];
maxence_contact pushBackUnique[_addname, _addnum];
[] call the_programmer_iphone_fnc_contactmenu;
_num = player getVariable "maxence_numero";
[getPlayerUID player, _num, maxence_contact] remoteExec["max_phone_fnc_updatePhone", 2];