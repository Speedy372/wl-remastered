private["_objs", "_return"];
_obj = cursorObject;
_return = false;
if ((["atm_", str(_obj)] call BIS_fnc_inString) && player distance _obj < 2.3) then {
    _return = true;
};
_return;