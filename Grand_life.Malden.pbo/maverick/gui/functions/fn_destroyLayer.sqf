#define __filename "fn_destroyLayer.sqf"
disableSerialization;
params[["_layerName", "", [""]], ["_fadeOutTime", 0, [0]]];
private _layer = uiNamespace getVariable[_layerName, displayNull];
if (isNull _layer) exitWith {
    false
};
_layerName cutFadeOut _fadeOutTime;
if (!isNil {
    missionNamespace getVariable _layerName
}) then {
    "onUnload"
    call(missionNamespace getVariable _layerName);
};
true