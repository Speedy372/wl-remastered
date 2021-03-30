class life_progress {
    name = "life_progress";
    idd = 38200;
    fadein = 0;
    duration = 99999999999;
    fadeout = 0;
    movingEnable = 0;
    onLoad = "uiNamespace setVariable ['life_progress',_this select 0]";
    objects[] = {};
    class controlsBackground {
        class background: Life_RscText {
            idc = -1;
            x = 0.01;
            y = -0.02;
            w = 0.98;
            h = 0.01;
            colorBackground[] = {
                0,
                0,
                0,
                0.5
            };
        };
        class ProgressBar: Life_RscProgress {
            idc = 38201;
            x = 0.01;
            y = -0.02;
            w = 0.98;
            h = 0.01;
            colorBackground[] = {
                0,
                0.5,
                1,
                1
            };
        };
        class ProgressText: Life_RscText {
            idc = 38202;
            x = 0;
            y = -0.08;
            w = 1;
            h = 0.04;
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            style = 1;
            sizeEx = 0.04;
            colorText[] = {
                1,
                1,
                1,
                1
            };
            text = "";
        };
    };
};
class life_timer {
    name = "life_timer";
    idd = 38300;
    fadeIn = 1;
    duration = 99999999999;
    fadeout = 1;
    movingEnable = 0;
    onLoad = "uiNamespace setVariable['life_timer',_this select 0]";
    objects[] = {};
    class controlsBackground {
        class TimerIcon: life_RscPicture {
            idc = -1;
            text = "\a3\ui_f\data\IGUI\RscTitles\MPProgress\timer_ca.paa";
            x = 0.00499997 * safezoneW + safezoneX;
            y = 0.291 * safezoneH + safezoneY;
            w = 0.04;
            h = 0.045;
        };
        class TimerText: Life_RscText {
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            idc = 38301;
            text = "";
            x = 0.0204688 * safezoneW + safezoneX;
            y = 0.2778 * safezoneH + safezoneY;
            w = 0.09125 * safezoneW;
            h = 0.055 * safezoneH;
        };
    };
};
class life_nlrtimer {
    name = "life_nlrtimer";
    idd = 38300;
    fadeIn = 1;
    duration = 99999999999;
    fadeout = 1;
    movingEnable = 0;
    onLoad = "uiNamespace setVariable['life_nlrtimer',_this select 0]";
    objects[] = {};
    class controlsBackground {
        class TimerIcon: life_RscPicture {
            idc = -1;
            text = "\a3\ui_f\data\IGUI\RscTitles\MPProgress\timer_ca.paa";
            x = 0.00499997 * safezoneW + safezoneX;
            y = 0.291 * safezoneH + safezoneY;
            w = 0.04;
            h = 0.045;
        };
        class TimerText: life_RscText {
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            idc = 38301;
            text = "";
            x = 0.0204688 * safezoneW + safezoneX;
            y = 0.2778 * safezoneH + safezoneY;
            w = 0.09125 * safezoneW;
            h = 0.055 * safezoneH;
        };
    };
};