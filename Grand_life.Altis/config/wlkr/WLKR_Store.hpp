class WLKR_StoreMenu {
    idd = 9042;
    name = "WLKR_StoreMenu";
    onLoad = "uiNamespace setVariable ['WLKR_StoreMenu', _this select 0];";
    onUnload = "uiNamespace setVariable ['WLKR_StoreMenu', displayNull]";
    onDestroy = "uiNamespace setVariable ['WLKR_StoreMenu', displayNull]";
    class controls {
        class MainBackground: WLKR_Background {
            idc = 2200;
            colorbackground[] = {
                0.894,
                0.894,
                0.894,
                1
            };
            x = 0.242187 * safezoneW + safezoneX;
            y = 0.203 * safezoneH + safezoneY;
            w = 0.505313 * safezoneW;
            h = 0.572 * safezoneH;
        };
        class MainHeader: WLKR_RscText {
            idc = 2201;
            text = "Altis";
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
            x = 0.242187 * safezoneW + safezoneX;
            y = 0.203 * safezoneH + safezoneY;
            w = 0.505313 * safezoneW;
            h = 0.044 * safezoneH;
        };
        class ButtonsBackground: WLKR_Background {
            idc = 2203;
            colorbackground[] = {
                0.961,
                0.961,
                0.961,
                1
            };
            x = 0.242187 * safezoneW + safezoneX;
            y = 0.247 * safezoneH + safezoneY;
            w = 0.505313 * safezoneW;
            h = 0.044 * safezoneH;
        };
        class PlayerName: WLKR_RscText {
            idc = 1602;
            colorText[] = {
                0.055,
                0.161,
                0.294,
                1
            };
            text = "Total Items:";
            shadow = 0;
            x = 0.247344 * safezoneW + safezoneX;
            y = 0.258 * safezoneH + safezoneY;
            w = 0.103125 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class DashboardBtn: WLKR_RscButton_NavInvi {
            idc = 1600;
            text = "Store";
            colorText[] = {
                0,
                0.333,
                1,
                1
            };
            x = 0.659844 * safezoneW + safezoneX;
            y = 0.247 * safezoneH + safezoneY;
            w = 0.0876563 * safezoneW;
            h = 0.0374 * safezoneH;
        };
        class DashboardActiveLbl: WLKR_Background {
            idc = 2206;
            x = 0.659844 * safezoneW + safezoneX;
            y = 0.286 * safezoneH + safezoneY;
            w = 0.0876563 * safezoneW;
            h = 0.0055 * safezoneH;
            colorBackground[] = {
                0,
                0.333,
                1,
                1
            };
        };
        class WeaponInfoBackgroud: WLKR_Background {
            idc = 2202;
            colorbackground[] = {
                0.894,
                0.894,
                0.894,
                1
            };
            x = 0.242187 * safezoneW + safezoneX;
            y = 0.786 * safezoneH + safezoneY;
            w = 0.505313 * safezoneW;
            h = 0.11 * safezoneH;
        };
        class Divider: WLKR_Background {
            idc = -1;
            colorBackground[] = {
                0.055,
                0.161,
                0.294,
                1
            };
            x = 0.242187 * safezoneW + safezoneX;
            y = 0.7728 * safezoneH + safezoneY;
            w = 0.505313 * safezoneW;
            h = 0.0154 * safezoneH;
        };
        class MagsList: WLKR_RscListBox {
            idc = 2207;
            colorBackground[] = {
                0.8,
                0.8,
                0.8,
                1
            };
            x = 0.2525 * safezoneW + safezoneX;
            y = 0.797 * safezoneH + safezoneY;
            w = 0.108281 * safezoneW;
            h = 0.088 * safezoneH;
        };
        class MagsPrice: WLKR_RscText {
            idc = 2208;
            Text = "Pirce: $0";
            font = "PuristaMedium";
            colorText[] = {
                0.055,
                0.161,
                0.294,
                1
            };
            x = 0.365937 * safezoneW + safezoneX;
            y = 0.797 * safezoneH + safezoneY;
            w = 0.103125 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class BuyMags: WLKR_RscButton {
            idc = 2209;
            text = "Purchase Magazine";
            x = 0.365937 * safezoneW + safezoneX;
            y = 0.83 * safezoneH + safezoneY;
            w = 0.103125 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class AccsList: WLKR_RscListBox {
            idc = 2210;
            colorBackground[] = {
                0.8,
                0.8,
                0.8,
                1
            };
            x = 0.634062 * safezoneW + safezoneX;
            y = 0.797 * safezoneH + safezoneY;
            w = 0.108281 * safezoneW;
            h = 0.088 * safezoneH;
        };
        class AccsPrice: WLKR_RscText {
            idc = 2211;
            colorText[] = {
                0.055,
                0.161,
                0.294,
                1
            };
            Text = "Pirce: $0";
            font = "PuristaMedium";
            x = 0.525781 * safezoneW + safezoneX;
            y = 0.797 * safezoneH + safezoneY;
            w = 0.103125 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class accsBuy: WLKR_RscButton {
            idc = 2212;
            text = "Purchase Accessory";
            x = 0.525781 * safezoneW + safezoneX;
            y = 0.83 * safezoneH + safezoneY;
            w = 0.103125 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Vendors_CtrlGRp: WLKR_RscControlsGroup {
            idc = 900;
            x = 0.247344 * safezoneW + safezoneX;
            y = 0.302 * safezoneH + safezoneY;
            w = 0.495 * safezoneW;
            h = 0.462 * safezoneH;
            class Controls {};
        };
    };
};
class Vendor_BoxUI: WLKR_RscControlsGroup {
    idc = 900;
    x = 0.262812 * safezoneW + safezoneX;
    y = 0.346 * safezoneH + safezoneY;
    w = 0.134062 * safezoneW;
    h = 0.264 * safezoneH;
    class Controls {
        class Background: WLKR_Background {
            idc = 2200;
            colorBackground[] = {
                0.8,
                0.8,
                0.8,
                1
            };
            x = 0.001031 * safezoneW;
            y = 0.0022 * safezoneH;
            w = 0.132 * safezoneW;
            h = 0.2596 * safezoneH;
        };
        class Line: WLKR_Background {
            idc = 2201;
            colorbackground[] = {
                0.055,
                0.161,
                0.294,
                1
            };
            x = 0.00103174 * safezoneW;
            y = 0.2211 * safezoneH;
            w = 0.132 * safezoneW;
            h = 0.0033 * safezoneH;
        };
        class Button: WLKR_RscButton_NavInvi {
            idc = 1100;
            text = "PURCHASE";
            onMouseEnter = "params [""_Control""]; _Control ctrlSetTextColor [0,0.333,1,1]";
            onMouseExit = "params [""_Control""]; _Control ctrlSetTextColor [1,1,1,1]";
            x = 0.0061815 * safezoneW;
            y = 0.2266 * safezoneH;
            w = 0.12375 * safezoneW;
            h = 0.0286 * safezoneH;
        };
        class TopText: WLKR_RscStructuredText {
            idc = 1101;
            text = "ERROR<br/>ERROR";
            Size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.9)";
            x = 0.00515674 * safezoneW;
            y = 0.099 * safezoneH;
            w = 0.12375 * safezoneW;
            h = 0.033 * safezoneH;
            shadow = 0;
            class Attributes {
                font = "PuristaMedium";
                color = "#232323";
                colorLink = "#D09B43";
                align = "center";
                shadow = 0;
            };
        };
        class MiddleStructured: WLKR_RscStructuredText {
            idc = 1102;
            text = "Description:<br/>ERROR";
            Size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
            x = 0.00515674 * safezoneW;
            y = 0.132 * safezoneH;
            w = 0.12375 * safezoneW;
            h = 0.055 * safezoneH;
            shadow = 0;
            class Attributes {
                font = "PuristaLight";
                color = "#232323";
                colorLink = "#D09B43";
                align = "center";
                shadow = 0;
            };
        };
        class BottomStructured: WLKR_RscStructuredText {
            idc = 1103;
            Size = "4.32 * (1 / (getResolution select 3)) * pixelGrid * 0.55";
            text = "Total Product(s): ERROR";
            x = 0.00515674 * safezoneW;
            y = 0.1936 * safezoneH;
            w = 0.12375 * safezoneW;
            h = 0.022 * safezoneH;
            shadow = 0;
            class Attributes {
                font = "PuristaMedium";
                color = "#232323";
                colorLink = "#D09B43";
                align = "center";
                shadow = 0;
            };
        };
        class ProductImage: WLKR_RscPicture {
            idc = 1104;
            text = "";
            style = 48 + 2048;
            colorBackground[] = {
                0,
                0,
                0,
                1
            };
            x = 0.0412505 * safezoneW;
            y = 0.011 * safezoneH;
            w = 0.0464063 * safezoneW;
            h = 0.077 * safezoneH;
        };
    };
};
class NotificationBackground: WLKR_RscStructuredText {
    idc = 992233;
    colorbackground[] = {
        0.055,
        0.161,
        0.294,
        1
    };
    colorText[] = {
        1,
        1,
        1,
        1
    };
    stlye = 16;
    x = 0.752656 * safezoneW + safezoneX;
    y = 0.203 * safezoneH + safezoneY;
    w = 0.170156 * safezoneW;
    h = 0.15 * safezoneH;
    class Attributes {
        font = "PuristaLight";
        shadow = 0;
    };
};