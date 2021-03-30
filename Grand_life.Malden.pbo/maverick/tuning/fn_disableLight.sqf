scriptName "fn_disableLight";#define __filename "fn_disableLight.sqf"
_v = param[0, objNull, [objNull]];
deleteVehicle(_v getVariable["mav_tuning_light", objNull]);