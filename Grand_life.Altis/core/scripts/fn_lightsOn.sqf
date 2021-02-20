if ! (params[["_veh", objNull, [objNull]]]) exitWith {};
private _lightObj = _veh getVariable["lightObj", objNull];
if (isNull _veh) exitWith {};
if ! (typeOf _veh in emergLight_vehicles) exitWith {};
if (isNull _lightObj) exitWith {};
private _color = [0.1, 0.1, 10];
_light = "#lightpoint"
createVehicle(getPos _lightObj);
_light setLightDayLight true;
_light setLightColor _color;
_light setLightAmbient[0.1, 0.1, 1];
_light lightAttachObject[_lightObj, [0, 0, 0.07]];
_light setLightAttenuation[0.181, 0, 1000, 130];
_light setLightBrightness 0.05;
_light setLightIntensity 10;
_light setLightDayLight true;
for "_i"
from 0 to 1 step 0 do {
    if ! (_veh getVariable["lights", false]) exitWith {};
    _light setLightBrightness 6;
    uisleep 0.05;
    _light setLightBrightness 0.05;
    uisleep 0.05;
    _light setLightBrightness 6;
    uisleep 0.05;
    _light setLightBrightness 0.05;
    uisleep 0.15;
}; waitUntil { ! (_veh getVariable["lights", false])
};
deleteVehicle _light;