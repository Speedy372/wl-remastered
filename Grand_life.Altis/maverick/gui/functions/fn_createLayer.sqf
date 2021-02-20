#define __filename "fn_createLayer.sqf"
disableSerialization;
params[["_layerName", "", [""]], ["_fadeInTime", 0, [0]], ["_showOnMap", true, [false]]];
if ! (isNull(uiNamespace getVariable[_layerName, displayNull])) exitWith {
    false
};
_layerName cutRsc[_layerName, "PLAIN", _fadeInTime, _showOnMap];
true