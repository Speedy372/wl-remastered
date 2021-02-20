private _house = param[0, "", [""]];
if (_house isEqualTo "") exitWith {
    []
};
private _houseConfig = missionConfigFile >> "Housing" >> worldName >> _house;
private _garageConfig = missionConfigFile >> "Garages" >> worldName >> _house;
private _config = [_garageConfig, _houseConfig] select {
    isClass _x
};
if (_config isEqualTo[]) exitWith {
    []
};
_config = _config select 0;
private _price = getNumber(_config >> "price");
private _numberCrates =
if (_houseConfig isEqualTo _config) then {
    getNumber(_houseConfig >> "numberCrates")
} else {
    0
};
[_price, _numberCrates]