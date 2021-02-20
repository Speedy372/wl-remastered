class WLKR_RscStructuredText_2: WLKR_RscStructuredText {
    shadow = 0;
    class Attributes {
        font = "RobotoCondensedLight";
        color = "#ffffff";
        colorLink = "#D09B43";
        align = "left";
        shadow = 0;
    };
};
class WLKR_ClothingMenu {
    idd = 9043;
    name = "WLKR_ClothingMenu";
    onLoad = "uiNamespace setVariable ['WLKR_ClothingMenu', _this select 0];";
    onUnload = "uiNamespace setVariable ['WLKR_ClothingMenu', displayNull]";
    onDestroy = "uiNamespace setVariable ['WLKR_ClothingMenu', displayNull]";
    class controls {
        class background: WLKR_Background {
            idc = 2200;
            colorbackground[] = {
                0.894,
                0.894,
                0.894,
                1
            };
            x = 0.04625 * safezoneW + safezoneX;
            y = 0.126 * safezoneH + safezoneY;
            w = 0.278437 * safezoneW;
            h = 0.616 * safezoneH;
        };
        class titleBackground: WLKR_RscText {
            idc = 2201;
            text = "Clothing Shop";
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
            x = 0.04625 * safezoneW + safezoneX;
            y = 0.126 * safezoneH + safezoneY;
            w = 0.278437 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class clothingList: WLKR_RscListBox {
            idc = 1500;
            x = 0.0514062 * safezoneW + safezoneX;
            y = 0.159 * safezoneH + safezoneY;
            w = 0.118594 * safezoneW;
            h = 0.539 * safezoneH;
        };
        class ComboBox: WLKR_RscCombo {
            idc = 2100;
            x = 0.0514062 * safezoneW + safezoneX;
            y = 0.709 * safezoneH + safezoneY;
            w = 0.118594 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class ClothingInformationTitle: WLKR_RscText {
            idc = 2202;
            text = "Clothing Information";
            colorBackground[] = {
                0.055,
                0.161,
                0.294,
                1
            };
            x = 0.175156 * safezoneW + safezoneX;
            y = 0.159 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class ItemPicture: WLKR_RscPicture {
            idc = 1200;
            style = 48 + 2048;
            text = "";
            x = 0.190625 * safezoneW + safezoneX;
            y = 0.192 * safezoneH + safezoneY;
            w = 0.113437 * safezoneW;
            h = 0.143 * safezoneH;
        };
        class ItemPictureBackground: WLKR_RscText {
            idc = -1;
            colorBackground[] = {
                0,
                0,
                0,
                0.3
            };
            x = 0.190625 * safezoneW + safezoneX;
            y = 0.192 * safezoneH + safezoneY;
            w = 0.113437 * safezoneW;
            h = 0.143 * safezoneH;
        };
        class ClothingName: WLKR_RscStructuredText_2 {
            idc = 2203;
            colorBackground[] = {
                0,
                0,
                0,
                0.3
            };
            text = "Name:";
            x = 0.175156 * safezoneW + safezoneX;
            y = 0.346 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class ClothingMass: WLKR_RscStructuredText_2 {
            idc = 2206;
            colorBackground[] = {
                0,
                0,
                0,
                0.3
            };
            text = "Mass:";
            x = 0.175156 * safezoneW + safezoneX;
            y = 0.3702 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class ClothingLoad: WLKR_RscStructuredText_2 {
            idc = 2207;
            colorBackground[] = {
                0,
                0,
                0,
                0.3
            };
            text = "Max-Load:";
            x = 0.175156 * safezoneW + safezoneX;
            y = 0.3944 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class PriceText: WLKR_RscStructuredText_2 {
            idc = 2204;
            colorBackground[] = {
                0,
                0,
                0,
                0.3
            };
            text = "Price:";
            font = "PuristaMedium";
            x = 0.175156 * safezoneW + safezoneX;
            y = 0.4186 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class TotalPrice: WLKR_RscStructuredText_2 {
            idc = 2205;
            colorBackground[] = {
                0,
                0,
                0,
                0.3
            };
            text = "Total:";
            font = "PuristaMedium";
            x = 0.175156 * safezoneW + safezoneX;
            y = 0.4428 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Btn_pruchase: WLKR_RscButton {
            idc = 1600;
            text = "Purchase";
            x = 0.175156 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Btn_Exit: WLKR_RscButton_NavInvi {
            idc = 1601;
            text = "X";
            x = 0.309219 * safezoneW + safezoneX;
            y = 0.126 * safezoneH + safezoneY;
            w = 0.0154688 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class viewAngle: wlkr_RscXSliderH {
            color[] = {
                1,
                1,
                1,
                0.45
            };
            colorActive[] = {
                1,
                1,
                1,
                0.65
            };
            idc = 3107;
            text = "";
            tooltip = "";
            x = 0.04625 * safezoneW + safezoneX;
            y = 0.753 * safezoneH + safezoneY;
            w = 0.278437 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class Btn_reloadConfig: WLKR_RscButton {
            idc = 1603;
            text = "Reload Config";
            x = 0.175156 * safezoneW + safezoneX;
            y = 0.709 * safezoneH + safezoneY;
            w = 0.144375 * safezoneW;
            h = 0.022 * safezoneH;
        };
    };
};