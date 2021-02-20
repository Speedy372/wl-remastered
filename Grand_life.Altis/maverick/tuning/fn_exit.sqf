scriptName "fn_exit";#define __filename "fn_exit.sqf"
_veh = vehicle player;
_position = mav_tuning_originalPosition findEmptyPosition[0, 150, typeOf _veh];
closeDialog 0;
[(vehicle player) getVariable["mav_tuning", []], vehicle player] spawn mav_tuning_fnc_loadVehicleModification;
5000 cutRsc["maverick_dialog_tuning_leaveentertransition", "PLAIN"];
sleep 4;
_veh setPos _position;
(vehicle player) allowDamage true; {
    _x hideObject false;
}
forEach vehicles;
mav_tuning_object cameraEffect["TERMINATE", "BACK"];
camDestroy mav_tuning_object;
player switchCamera "INTERNAL";
[vehicle player, true] remoteExec["mav_tuning_fnc_hide", 2];
deleteVehicle mav_tuning_building;
if (!isNil "mav_tuning_nightlight") then {
    deleteVehicle mav_tuning_nightlight;
};
if (missionNamespace getVariable["life_HC_isActive", false]) then {
    [_veh getVariable "vehicleID", _veh getVariable["mav_tuning", []]] remoteExec["mav_tuning_fnc_saveTuningToDB", HC_Life];
} else {
    [_veh getVariable "vehicleID", _veh getVariable["mav_tuning", []]] remoteExec["mav_tuning_fnc_saveTuningToDB", 2];
};
showChat true;