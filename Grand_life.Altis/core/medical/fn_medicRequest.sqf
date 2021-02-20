params[["_caller", objNull, [objNull]], ["_callerName", "Unknown Player", [""]]];
_sound = "mdciv";
if (isNull _caller) exitWith {};
if (side _caller isEqualTo civilian || side _caller isEqualTo east) then {
    _sound = "mdciv";
} else {
    _sound = "mdofficer";
};
[_sound] spawn {
    if (dispatch) exitwith {};
    if (dispatch2) exitwith {};
    dispatch = true;
    _sound2play = param[0, ""];
    playSound _sound2play;
    sleep 7;
    dispatch = false;
};
["MedicalRequestEmerg", [format[localize "STR_Medic_Request", _callerName]]] call BIS_fnc_showNotification;