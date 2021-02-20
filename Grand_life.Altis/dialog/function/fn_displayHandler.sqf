private["_control", "_code", "_shift", "_ctrlKey", "_alt", "_handled"];
_handled = false;
if ((_this select 1) isEqualTo 1) then {
    _handled = true;
};
_handled;