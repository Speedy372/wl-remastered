class Life_Clothing {
    idd = 3100;
    name = "Life_Clothing";
    movingEnable = 1;
    enableSimulation = 1;
    class controlsBackground {
        class MainBackground: Life_RscText {
            colorBackground[] = {
                0.1,
                0.1,
                0.1,
                0.5
            };
            idc = -1;
            x = 0.025625 * safezoneW + safezoneX;
            y = 0.1414 * safezoneH + safezoneY;
            w = 0.170156 * safezoneW;
            h = 0.462 * safezoneH;
        };
        class RedHighlightLeftSelection: Life_RscText {
            colorBackground[] = {
                0.705882,
                0.027451,
                0.027451,
                1
            };
            idc = -1;
            x = 0.025625 * safezoneW + safezoneX;
            y = 0.1414 * safezoneH + safezoneY;
            w = 0.004125 * safezoneW;
            h = 0.462 * safezoneH;
        };
        class MainBackground2: Life_RscText {
            colorBackground[] = {
                0.1,
                0.1,
                0.1,
                0.5
            };
            idc = -1;
            x = 0.025625 * safezoneW + safezoneX;
            y = 0.6122 * safezoneH + safezoneY;
            w = 0.170156 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class RedHighlightLeftSelection2: Life_RscText {
            colorBackground[] = {
                0.705882,
                0.027451,
                0.027451,
                1
            };
            idc = -1;
            x = 0.025625 * safezoneW + safezoneX;
            y = 0.6122 * safezoneH + safezoneY;
            w = 0.004125 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class MainBackground3: Life_RscText {
            colorBackground[] = {
                0.1,
                0.1,
                0.1,
                0.5
            };
            idc = -1;
            x = 0.025629 * safezoneW + safezoneX;
            y = 0.654 * safezoneH + safezoneY;
            w = 0.170156 * safezoneW;
            h = 0.0638 * safezoneH;
        };
        class RedHighlightLeftSelection3: Life_RscText {
            colorBackground[] = {
                0.705882,
                0.027451,
                0.027451,
                1
            };
            idc = -1;
            x = 0.025625 * safezoneW + safezoneX;
            y = 0.654 * safezoneH + safezoneY;
            w = 0.004125 * safezoneW;
            h = 0.0638 * safezoneH;
        };
        class RedHighlightTitle: Life_RscText {
            colorBackground[] = {
                0.705882,
                0.027451,
                0.027451,
                1
            };
            idc = -1;
            x = 0.025625 * safezoneW + safezoneX;
            y = 0.0864 * safezoneH + safezoneY;
            w = 0.170156 * safezoneW;
            h = 0.044 * safezoneH;
        };
    };
    class controls {
        class Title: Life_RscTitle {
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            idc = 3103;
            text = "";
            x = 0.025625 * safezoneW + safezoneX;
            y = 0.0864 * safezoneH + safezoneY;
            w = 0.170156 * safezoneW;
            h = 0.044 * safezoneH;
        };
        class ClothingList: Life_RscListBox {
            idc = 3101;
            text = "";
            sizeEx = 0.035;
            onLBSelChanged = "[_this] call life_fnc_changeClothes;";
            x = 0.0318586 * safezoneW + safezoneX;
            y = 0.1458 * safezoneH + safezoneY;
            w = 0.161891 * safezoneW;
            h = 0.4532 * safezoneH;
        };
        class PriceTag: Life_RscStructuredText {
            idc = 3102;
            text = "";
            sizeEx = 0.035;
            x = 0.0318123 * safezoneW + safezoneX;
            y = 0.687 * safezoneH + safezoneY;
            w = 0.0794062 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class TotalPrice: Life_RscStructuredText {
            idc = 3106;
            text = "";
            sizeEx = 0.035;
            x = 0.113281 * safezoneW + safezoneX;
            y = 0.687 * safezoneH + safezoneY;
            w = 0.0794062 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class FilterList: Life_RscCombo {
            idc = 3105;
            colorBackground[] = {
                0,
                0,
                0,
                0.7
            };
            onLBSelChanged = "_this call life_fnc_clothingFilter";
            x = 0.0297498 * safezoneW + safezoneX;
            y = 0.6122 * safezoneH + safezoneY;
            w = 0.166031 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class CloseButtonKey: Life_RscButtonMenu {
            idc = -1;
            text = "$STR_Global_Close";
            onButtonClick = "closeDialog 0; [] call life_fnc_playerSkins;";
            x = 0.11453 * safezoneW + safezoneX;
            y = 0.6584 * safezoneH + safezoneY;
            w = 0.0794062 * safezoneW;
            h = 0.0242 * safezoneH;
        };
        class BuyButtonKey: Life_RscButtonMenu {
            idc = -1;
            text = "$STR_Global_Buy";
            onButtonClick = "[] call life_fnc_buyClothes;";
            x = 0.0318123 * safezoneW + safezoneX;
            y = 0.6584 * safezoneH + safezoneY;
            w = 0.0794062 * safezoneW;
            h = 0.0242 * safezoneH;
        };
        class viewAngle: life_RscXSliderH {
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
            onSliderPosChanged = "[4,_this select 1] call life_fnc_s_onSliderChange;";
            tooltip = "";
            x = 0.25 * safezoneW + safezoneX;
            y = 0.93 * safezoneH + safezoneY;
            w = 0.5 * safezoneW;
            h = 0.02 * safezoneH;
        };
    };
};