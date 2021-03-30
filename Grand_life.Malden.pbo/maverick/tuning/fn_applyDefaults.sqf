scriptName "fn_applyDefaults";#define __filename "fn_applyDefaults.sqf"
_veh = param[0, objNull, [objNull]];
_configName = [typeOf _veh] call mav_tuning_fnc_getMasterConfig;
_mav_tuning_defaultData = getArray(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "default");
_veh setVariable["mav_tuning", _mav_tuning_defaultData, true];
if ((getNumber(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "fetchDefaultFromVehicleState")) == 1) then {
    _rawModificationsData = [];
    if (isClass(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "RawModifications")) then {
        {
            _checkArray = getArray(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "RawModifications" >> _x >> "parts");
            _toCheck = _checkArray select 0;
            _rawModificationsData pushBack(_veh animationPhase _toCheck);
        }
        forEach(getArray(missionConfigFile >> "Maverick_Tuning" >> "Vehicles" >> _configName >> "RawModifications" >> "pool"));
    };
    _mav_tuning_defaultData set[0, _rawModificationsData];
    if (true) then {
        _texture = (getObjectTextures _veh) select 0;
        _mav_tuning_defaultData set[1, _texture];
    };
    if (true) then {
        _mat = (getObjectMaterials _veh) select 0;
        if (_mat == "") then {};
        _mav_tuning_defaultData set[5, _mat];
    };
    _veh setVariable["mav_tuning", _mav_tuning_defaultData, true];
};