scriptName "fn_getMasterConfig";#define __filename "fn_getMasterConfig.sqf"
_type = param[0, "", [""]];
_ret = "";
if (isClass(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _type)) then {
    _ret = _type;
} else {
    {
        if (isClass(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _x)) exitWith {
            _ret = _x;
        };
    }
    forEach([(configFile >> "CfgVehicles" >> _type), true] call BIS_fnc_returnParents);
};
_ret