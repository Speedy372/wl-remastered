_curConfig = missionConfigFile >> "Max_Settings_Phone";
_dep_or_not = getNumber(_curConfig >> "messages_to_depanneurs");
if (_dep_or_not isEqualTo 1) then {
    maxence_contact = [[(["STR_DEFAUT_CONTACT_1"] call max_phone_fnc_localize), str(getNumber(_curConfig >> "num_cop"))], [(["STR_DEFAUT_CONTACT_2"] call max_phone_fnc_localize), str(getNumber(_curConfig >> "num_med"))], [(["STR_DEFAUT_CONTACT_3"] call max_phone_fnc_localize), str(getNumber(_curConfig >> "num_cop_med"))], [(["STR_DEFAUT_CONTACT_4"] call max_phone_fnc_localize), str(getNumber(_curConfig >> "num_dep"))]];
} else {
    maxence_contact = [[(["STR_DEFAUT_CONTACT_1"] call max_phone_fnc_localize), str(getNumber(_curConfig >> "num_cop"))], [(["STR_DEFAUT_CONTACT_2"] call max_phone_fnc_localize), str(getNumber(_curConfig >> "num_med"))], [(["STR_DEFAUT_CONTACT_3"] call max_phone_fnc_localize), str(getNumber(_curConfig >> "num_cop_med"))]];
};
[] call the_programmer_iphone_fnc_contactmenu;
_num = player getVariable "maxence_numero";
[getPlayerUID player, _num, maxence_contact] remoteExec["max_phone_fnc_updatePhone", 2];