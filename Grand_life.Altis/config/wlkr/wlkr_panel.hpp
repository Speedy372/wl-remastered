class WLKR_PanelMenu {
    idd = 9044;
    name = "WLKR_PanelMenu";
    onLoad = "uiNamespace setVariable ['WLKR_PanelMenu', _this select 0];";
    onUnload = "uiNamespace setVariable ['WLKR_PanelMenu', displayNull]";
    onDestroy = "uiNamespace setVariable ['WLKR_PanelMenu', displayNull]";
    class controls {
        class background: WLKR_Background {
            idc = 2200;
            colorbackground[] = {
                0.894,
                0.894,
                0.894,
                1
            };
            x = 0.422656 * safezoneW + safezoneX;
            y = 0.269 * safezoneH + safezoneY;
            w = 0.128906 * safezoneW;
            h = 0.231 * safezoneH;
        };
        class title: WLKR_RscText {
            idc = 2201;
            text = "Cloud Config Panel";
            colorText[] = {
                1,
                1,
                1,
                1
            };
            font = "RobotoCondensedLight";
            colorbackground[] = {
                0.055,
                0.161,
                0.294,
                1
            };
            x = 0.422656 * safezoneW + safezoneX;
            y = 0.269 * safezoneH + safezoneY;
            w = 0.128906 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class RscButton_1600: WLKR_RscButton {
            idc = 1600;
            text = "Reload Weapon Config";
            x = 0.438125 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class RscButton_1601: WLKR_RscButton {
            idc = 1601;
            text = "Reload Clothing Config";
            x = 0.438125 * safezoneW + safezoneX;
            y = 0.379 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class RscButton_1602: WLKR_RscButton {
            idc = 1602;
            text = "Reload Vehicles Config";
            x = 0.438125 * safezoneW + safezoneX;
            y = 0.423 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class RscButton_1603: WLKR_RscButton_NavInvi {
            idc = 1603;
            text = "X";
            x = 0.536094 * safezoneW + safezoneX;
            y = 0.269 * safezoneH + safezoneY;
            w = 0.0154688 * safezoneW;
            h = 0.022 * safezoneH;
        };
    };
};