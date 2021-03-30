class Life_hitmarker {
    name = "Life_hitmarker";
    idd = -1;
    movingEnable = 0;
    enableSimulation = 1;
    fadein = 0;
    fadeout = 0.2;
    duration = 0.2;
    controlsBackground[] = {
        "CtrlHitmarker"
    };
    controls[] = {};
    class CtrlHitmarker: Life_RscPicture {
        idc = -1;
        type = 0;
        style = 2096;
        x = "safeZoneX + safeZoneW / 2 - 0.04";
        y = "safeZoneY + safeZoneH / 2 - 0.04";
        h = 0.08;
        w = 0.08;
        font = "RobotoCondensed";
        sizeEx = 0;
        colorBackground[] = {
            0,
            0,
            0,
            0
        };
        colorText[] = {
            1,
            1,
            1,
            1
        };
        text = "textures\hitmarker.paa";
    };
};