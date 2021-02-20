class marketDisplay {
    idd = 60700;
    name = "marketDisplay";
    movingEnable = 0;
    enableSimulation = 1;
    class controlsBackground {
        class Life_RscTitleBackground: Life_RscText {
            idc = -1;
            text = "Przedmioty";
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.27516 * safezoneH + safezoneY;
            w = 0.170156 * safezoneW;
            h = 0.022 * safezoneH;
            colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
        };
        class MainBackground: Life_RscText {
            idc = -1;
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.2976 * safezoneH + safezoneY;
            w = 0.402187 * safezoneW;
            h = 0.407 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0.7
            };
        };
        class mText: Life_RscText {
            idc = -1;
            text = "Market Altis";
            x = 0.300969 * safezoneW + safezoneX;
            y = 0.302 * safezoneH + safezoneY;
            w = 0.195937 * safezoneW;
            h = 0.022 * safezoneH;
            colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                0.5
            };
        };
        class mText2: Life_RscText {
            idc = -1;
            text = "Informacje";
            x = 0.502062 * safezoneW + safezoneX;
            y = 0.302 * safezoneH + safezoneY;
            w = 0.195937 * safezoneW;
            h = 0.022 * safezoneH;
            colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                0.5
            };
        };
    };
    class controls {
        class itemList: Life_RscListBox {
            idc = 67001;
            onLBSelChanged = "_this call life_fnc_marketLBChange";
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.3328 * safezoneH + safezoneY;
            w = 0.190781 * safezoneW;
            h = 0.363 * safezoneH;
        };
        class Title: Life_RscTitle {
            idc = 67003;
            text = "Przedmioty";
            x = 0.298906 * safezoneW + safezoneX;
            y = 0.2756 * safezoneH + safezoneY;
            w = 0.170156 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {
                0.95,
                0.95,
                0.95,
                1
            };
            sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * GUI_GRID_H;
        };
        class ButtonClose: Life_RscButtonMenu {
            onButtonClick = "closeDialog 0;";
            idc = 60702;
            text = "Zamknij";
            x = 0.636641 * safezoneW + safezoneX;
            y = 0.7046 * safezoneH + safezoneY;
            w = 0.0644531 * safezoneW;
            h = 0.022 * safezoneH;
            colorText[] = {
                1,
                1,
                1,
                1
            };
            colorBackground[] = {
                0,
                0,
                0,
                0.8
            };
        };
        class ItemName: Life_RscText {
            idc = 60704;
            text = "";
            x = 0.497937 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.190781 * safezoneW;
            h = 0.055 * safezoneH;
            sizeEx = 2.7 * 0.02;
        };
        class BuyPrice: Life_RscText {
            idc = 60705;
            text = "Kupno:";
            x = 0.498969 * safezoneW + safezoneX;
            y = 0.5308 * safezoneH + safezoneY;
            w = 0.190781 * safezoneW;
            h = 0.055 * safezoneH;
            sizeEx = 2.7 * 0.02;
        };
        class SellPrice: Life_RscText {
            idc = 60706;
            text = "Sprzedaż:";
            x = 0.498969 * safezoneW + safezoneX;
            y = 0.5726 * safezoneH + safezoneY;
            w = 0.190781 * safezoneW;
            h = 0.055 * safezoneH;
            sizeEx = 2.7 * 0.02;
        };
        class Weight: Life_RscText {
            idc = 60707;
            text = "Waga:";
            x = 0.498969 * safezoneW + safezoneX;
            y = 0.6166 * safezoneH + safezoneY;
            w = 0.190781 * safezoneW;
            h = 0.055 * safezoneH;
            sizeEx = 2.7 * 0.02;
        };
        class WeightNum: Life_RscText {
            idc = 60710;
            text = "";
            x = 0.587635 * safezoneW + safezoneX;
            y = 0.6166 * safezoneH + safezoneY;
            w = 0.190781 * safezoneW;
            h = 0.055 * safezoneH;
            colorText[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
            sizeEx = 2.7 * 0.02;
        };
        class SellNum: Life_RscText {
            idc = 60711;
            text = "";
            x = 0.587657 * safezoneW + safezoneX;
            y = 0.5726 * safezoneH + safezoneY;
            w = 0.190781 * safezoneW;
            h = 0.055 * safezoneH;
            colorText[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
            sizeEx = 2.7 * 0.02;
        };
        class BuyNum: Life_RscText {
            idc = 60712;
            text = "";
            x = 0.587654 * safezoneW + safezoneX;
            y = 0.5308 * safezoneH + safezoneY;
            w = 0.190781 * safezoneW;
            h = 0.055 * safezoneH;
            colorText[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
            sizeEx = 2.7 * 0.02;
        };
    };
};