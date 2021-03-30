params[["_configEntryName", "", [""]], ["_overwrite", false, [false]]];
if ((isNil "mav_gps_v_settings_voiceChannel") || (typeName mav_gps_v_settings_voiceChannel != "STRING")) then {
    mav_gps_v_settings_voiceChannel = "disabled"
};
if (_configEntryName == "") exitWith {};
private _soundName = getText(missionConfigFile >> "maverick_navigation_cfg" >> "soundInstructions" >> mav_gps_v_settings_voiceChannel >> _configEntryName);
if (_soundName == "") exitWith {};
private _existingSound = ASLToAGL[0, 0, 0] nearestObject "#soundonvehicle";
if (!isNull _existingSound && !_overwrite) exitWith {};
if (!isNull _existingSound) then {
    deleteVehicle _existingSound;
};
playSound _soundName;