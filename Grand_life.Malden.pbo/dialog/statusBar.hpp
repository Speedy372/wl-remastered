#define ST_RIGHT 0x01
class statusBar {
    idd = -1;
    onLoad = "uiNamespace setVariable ['statusBar', _this select 0]";
    onUnload = "uiNamespace setVariable ['statusBar', objNull]";
    onDestroy = "uiNamespace setVariable ['statusBar', objNull]";
    fadein = 0;
    fadeout = 0;
    duration = 10e10;
    movingEnable = 0;
    controlsBackground[] = {};
    objects[] = {};
    class controls {
        class statusBarText {
            idc = 1000;
            x = safezoneX;
            y = 0.00519296 * safezoneH + safezoneY;
            w = safezoneW;
            h = 0.06;
            shadow = false;
            size = 0.032;
            type = 13;
            style = 1;
            colorText[] = {
                1,
                1,
                1,
                1
            };
            text = "Ładowanie paska statusu, proszę czekać.";
            class Attributes {
                align = "center";
                color = "#ffffff";
            };
        };
    };
};