_layer = 85125;
_launchers = ["launch_I_Titan_short_F", "launch_O_Titan_short_F", "launch_B_Titan_short_F", "launch_Titan_short_F", "launch_Titan_F", "launch_O_Titan_F", "launch_I_Titan_F", "launch_B_Titan_F"];
while {
    true
}
do {
    if (currentVisionMode player == 2) then {
        if (currentweapon player in _launchers) then {
            _layer cutText["Termowizja jest wylaczona!!!.", "BLACK", -1];
            playSound "FD_CP_Not_Clear_F";
            waituntil {
                currentVisionMode player != 2
            };
            _layer cutText["", "PLAIN"];
        } else {
            if (alive(getConnectedUAV player)) then {
                _layer cutText["Termowizja jest wylaczona!!!!.", "BLACK", -1];
                playSound "FD_CP_Not_Clear_F";
                waituntil {
                    currentVisionMode player != 2
                };
                _layer cutText["", "PLAIN"];
            } else {
                setViewDistance 1250;
                waituntil {
                    currentVisionMode player != 2
                };
                sleep 40;
                setViewDistance - 1;
            }
        };
    };
    sleep 2;
};