private["_unit", "_position", "_roofCheck", "_return"];
_unit = _this select 0;
_position = getposASL _unit;
_eyePosition = eyePos _unit;
_return = false;
_array = [];
_roof = [_eyePosition select 0, _eyePosition select 1, (_eyePosition select 2) + 20];
_floor = [_eyePosition select 0, _eyePosition select 1, (_eyePosition select 2) - 5];
_wallFront = [(_eyePosition select 0) + (((50) * sin(getDir _unit))), (_eyePosition select 1) + ((50) * cos(getDir _unit)), (_eyePosition select 2)];
_wallBack = [(_eyePosition select 0) + (((-50) * sin(getDir _unit))), (_eyePosition select 1) + ((-50) * cos(getDir _unit)), (_eyePosition select 2)];
_wallRight = [(_eyePosition select 0) + (((50) * sin(getDir _unit + 90))), (_eyePosition select 1) + ((0) * cos(getDir _unit)), (_eyePosition select 2)];
_wallLeft = [(_eyePosition select 0) + (((-50) * sin(getDir _unit + 90))), (_eyePosition select 1) + ((0) * cos(getDir _unit)), (_eyePosition select 2)];
_roofCheck = lineIntersectsWith[_eyePosition, _roof, _unit, _unit, true];
if (_roofCheck isEqualTo[]) exitWith {
    _return
};
_floorCheck = lineIntersectsWith[_eyePosition, _floor, _unit, _unit, true];
_wallCheck_Front = lineIntersectsWith[_eyePosition, _wallFront, _unit, _unit, true];
_wallCheck_Back = lineIntersectsWith[_eyePosition, _wallBack, _unit, _unit, true];
_wallCheck_Right = lineIntersectsWith[_eyePosition, _wallRight, _unit, _unit, true];
_wallCheck_Left = lineIntersectsWith[_eyePosition, _wallLeft, _unit, _unit, true];
if ((_roofCheck select 0) isKindOf "House_F") then {
    {
        _index = (count _x) - 1;
        if (_index > -1) then {
            if ((_x select _index) isKindOf "House_F") then {
                _array pushBack(_x select _index);
            };
        };
    }
    forEach[_wallCheck_Front, _wallCheck_Back, _wallCheck_Right, _wallCheck_Left, _floorCheck];
    if ({
        _x == (_roofCheck select 0)
    }
    count _array >= 3) then {
        _return = true;
    } else {
        _return = false;
    };
};
_return;