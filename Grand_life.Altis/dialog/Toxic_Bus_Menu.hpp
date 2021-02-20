class Toxic_Bus_Menu {
    idd = 1;
    movingEnable = 1;
    enableSimulation = 1;
    onLoad = "uiNamespace setVariable ['Toxic_Bus_Menu',_this select 0]";
    class controlsBackground {
        class backgroundMain: life_RscText {
            idc = 2200;
            x = 0.43304 * safezoneW + safezoneX;
            y = 0.313091 * safezoneH + safezoneY;
            w = 0.139172 * safezoneW;
            h = 0.373939 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0.5
            };
        };
        class topTrim: life_RscText {
            idc = 1000;
            text = "Rozkład Jazdy Busa";
            x = 0.427837 * safezoneW + safezoneX;
            y = 0.286011 * safezoneH + safezoneY;
            w = 0.144326 * safezoneW;
            h = 0.0219964 * safezoneH;
            colorBackground[] = {
                1,
                0.341,
                0.2,
                1
            };
        };
        class trimLeft: life_RscText {
            idc = 1001;
            x = 0.428893 * safezoneW + safezoneX;
            y = 0.313091 * safezoneH + safezoneY;
            w = 0.0041236 * safezoneW;
            h = 0.373939 * safezoneH;
            colorBackground[] = {
                1,
                0.341,
                0.2,
                1
            };
        };
    };
    class controls {
        class interactionList: Life_RscListbox {
            idc = 1500;
            onLBDblClick = "";
            x = 0.438167 * safezoneW + safezoneX;
            y = 0.324052 * safezoneH + safezoneY;
            w = 0.128863 * safezoneW;
            h = 0.318948 * safezoneH;
            sizeEx = GUI_GRID_CENTER_H;
        };
        class interactButton: Life_RscButtonMenu {
            idc = 2400;
            text = "Wsiadam do busa";
            onButtonClick = "[] spawn toxic_fnc_busStart";
            x = 0.438168 * safezoneW + safezoneX;
            y = 0.654004 * safezoneH + safezoneY;
            w = 0.128863 * safezoneW;
            h = 0.0219964 * safezoneH;
            colorBackground[] = {
                1,
                0.341,
                0.2,
                1
            };
            sizeEx = GUI_GRID_CENTER_H;
        };
        class MapView: Life_RscMapControl {
            idc = 1919;
            x = 0 * safezoneW + safezoneX;
            y = 0 * safezoneH + safezoneY;
            w = 1 * safezoneW;
            h = 1 * safezoneH;
            maxSatelliteAlpha = 0.75;
            alphaFadeStartScale = 1.15;
            alphaFadeEndScale = 1.29;
            widthRailWay = 1;
        };
    };
};