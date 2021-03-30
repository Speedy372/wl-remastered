scriptName "fn_setPerks";#define __filename "fn_setPerks.sqf"
if (life_perksInitialized) exitWith {};
params[["_oldPerks", [], [[]]]];
private _iterate = {
    {
        private _first = _x param[0];
        if (_first isEqualType[]) then {
            private _add = [_oldPerks, _first param[0]] call mav_ttm_fnc_hasPerk;
            if (_add) then {
                _first set[1, true];
                [_first param[0]] call _runPerkInitScript;
                (_x param[1]) call _iterate;
            };
        } else {
            private _add = [_oldPerks, _first] call mav_ttm_fnc_hasPerk;
            if (_add) then {
                _x set[1, true];
                [_x param[0]] call _runPerkInitScript;
            };
        };
        true
    }
    count _this;
};
private _runPerkInitScript = {
    private _perkName = param[0, ""];
    private _config = missionConfigFile >> "Maverick_TTM" >> "Perks" >> _perkName;
    private _initScriptPath = getText(_config >> "initScript");
    if (_initScriptPath != "") then {
        _initScriptsToExecute pushBack _initScriptPath;
    };
};
private _initScriptsToExecute = [];
private _newPerks = [] call mav_ttm_fnc_generateBasePerks;
_newPerks call _iterate; {
    [] spawn(compileFinal preprocessFileLineNumbers _x);
}
forEach _initScriptsToExecute;
life_currentExpPerks = _newPerks;