class gang_garage_setup_menu {
    idd = -1;
    duration = 1e+1000;
    movingEnable = 0;
    fadein = 0.5;
    fadeout = 0.5;
    name = "gang_garage_setup_menu";
    onLoad = "uiNamespace setVariable ['gang_garage_setup_menu',_this select 0]";
    class controls {
        class RscPicture_1200: Life_RscPicture {
            idc = 4153150;
            text = "\a3\3den\data\attributes\taskstates\failed_ca.paa";
            x = 0.515471 * safezoneW + safezoneX;
            y = 0.5528 * safezoneH + safezoneY;
            w = 0.0216563 * safezoneW;
            h = 0.0352 * safezoneH;
        };
        class RscPicture_1201: Life_RscPicture {
            idc = 4153151;
            text = "\a3\3den\data\attributes\taskstates\succeeded_ca.paa";
            x = 0.515471 * safezoneW + safezoneX;
            y = 0.5198 * safezoneH + safezoneY;
            w = 0.0216563 * safezoneW;
            h = 0.0352 * safezoneH;
        };
        class RscStructuredText_1100: Life_RscStructuredText {
            idc = 4153152;
            text = "$STR_aapps_gang_garage_done";
            x = 0.538158 * safezoneW + safezoneX;
            y = 0.5242 * safezoneH + safezoneY;
            w = 0.086625 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                0.9
            };
        };
        class RscStructuredText_1101: Life_RscStructuredText {
            idc = 4153153;
            text = "$STR_aapps_gang_garage_cancel";
            x = 0.538158 * safezoneW + safezoneX;
            y = 0.5572 * safezoneH + safezoneY;
            w = 0.086625 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                0.9
            };
        };
    };
};