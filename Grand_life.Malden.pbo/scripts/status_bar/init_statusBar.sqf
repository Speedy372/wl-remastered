waitUntil { ! isNull player
};
waitUntil { ! (isNull(findDisplay 46))
};
_WSC = false;
_sb_admin_list = [""];
if ((getPlayerUID player) in _sb_admin_list) then {
    if (_WSC) then {
        [] execVM "scripts\status_bar\PlayerBar.sqf";
    } else {
        [] execVM "scripts\status_bar\PlayerBar.sqf";
    };
} else {
    [] execVM "scripts\status_bar\PlayerBar.sqf";
};