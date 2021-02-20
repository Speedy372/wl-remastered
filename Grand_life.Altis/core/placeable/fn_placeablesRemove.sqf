private["_curTarget", "_uid"];
_curTarget = cursorObject;
if (isNil {
    _curTarget getVariable "owner"
}) exitWith {};
deleteVehicle _curTarget;