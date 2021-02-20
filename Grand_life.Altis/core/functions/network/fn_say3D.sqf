params[["_object", objNull, [objNull]], ["_sound", "", [""]], ["_distance", 100, [0]], ["_pitch", 1, [0]]];
if (isNull _object || {
    _sound isEqualTo ""
}) exitWith {};
if (_distance < 0) then {
    _distance = 100
};
_object say3D[_sound, _distance, _pitch];