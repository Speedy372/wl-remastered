scriptName "fn_tinyIntConverter";#define __filename "fn_tinyIntConverter.sqf" {
    private _first = _x param[0];
    if (_first isEqualType[]) then {
        _first set[1, [_first param[1]] call mav_ttm_fnc_boolScalar];
        (_x param[1]) call mav_ttm_fnc_tinyIntConverter;
    } else {
        _x set[1, [_x param[1]] call mav_ttm_fnc_boolScalar];
    };
    true
}
count _this;