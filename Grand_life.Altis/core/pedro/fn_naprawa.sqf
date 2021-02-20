closeDialog 0;
private["_obj"];
_obj = cursorobject;
if (isNull _obj) exitWith {
    [true, "toolbox", 1] call life_fnc_handleInv;
};
if (_obj isKindOf "Car") exitWith {
    [true, "toolbox", 1] call life_fnc_handleInv;
};
if (_obj isKindOf "Helicopter") exitWith {
    [true, "toolbox", 1] call life_fnc_handleInv;
};
if (_obj isKindOf "Ship") exitWith {
    [true, "toolbox", 1] call life_fnc_handleInv;
};
if (_obj isKindOf "Man") exitWith {
    [true, "toolbox", 1] call life_fnc_handleInv;
};
player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
life_action_inUse = true;
_upp = "naprawianie";
disableSerialization;
"progressBar"
cutRsc["life_progress", "PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...", "%", _upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
for "_i"
from 0 to 1 step 0 do {
    uiSleep 0.07;
    _cP = _cP + 0.01;
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format["%3 (%1%2)...", round(_cP * 100), "%", _upp];
    if (_cP >= 1) exitWith {};
}; _obj setdamage 0;
gl_cash = gl_cash + 2500;
["Otrzymałeś 2500$ za naprawe obiektów", "sucess", 15] call pedro_fnc_pow;
life_action_inUse = false;
"progressBar"
cutText["", "PLAIN"];
player playActionNow "stop";