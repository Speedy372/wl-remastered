class laptop_napad {
    idd = 27011;
    name = "laptop_napad";
    movingEnable = false;
    enableSimulation = true;
    class controlsBackground {
        class MainBackground: Life_RscText {
            idc = -1;
            colorBackground[] = {
                0,
                0,
                0,
                0.7
            };
            x = 0.314375 * safezoneW + safezoneX;
            y = 0.313 * safezoneH + safezoneY;
            w = 0.37125 * safezoneW;
            h = 0.396 * safezoneH;
        };
        class Life_RscTitleBackground: Life_RscText {
            idc = -1;
            colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
            text = "PODAJ KOD";
            x = 0.314375 * safezoneW + safezoneX;
            y = 0.291 * safezoneH + safezoneY;
            w = 0.37125 * safezoneW;
            h = 0.022 * safezoneH;
        };
    };
    class controls {
        class przycisk: life_RscButtonMenu {
            idc = 1600;
            text = "Zamknij";
            onButtonClick = "closedialog 0";
            x = 0.561875 * safezoneW + safezoneX;
            y = 0.719914 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.0219914 * safezoneH;
        };
        class przycisk_ok: life_RscButtonMenu {
            idc = 1601;
            text = "OK";
            onButtonClick = "[2] spawn life_fnc_kupinfo";
            x = 0.386562 * safezoneW + safezoneX;
            y = 0.719914 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.0219914 * safezoneH;
        };
        class edit_xxx: Life_RscEdit {
            idc = 2702;
            text = "";
            x = 0.381406 * safezoneW + safezoneX;
            y = 0.357056 * safezoneH + safezoneY;
            w = 0.262969 * safezoneW;
            h = 0.0329871 * safezoneH;
        };
        class text_2: Life_RscText {
            idc = 2703;
            x = 0.381406 * safezoneW + safezoneX;
            y = 0.467013 * safezoneH + safezoneY;
            w = 0.211406 * safezoneW;
            h = 0.0439828 * safezoneH;
        };
    };
};
class kod_do_sejfu {
    idd = 27012;
    name = "kod_do_sejfu";
    movingEnable = false;
    enableSimulation = true;
    class controlsBackground {
        class MainBackground: Life_RscText {
            idc = -1;
            colorBackground[] = {
                0,
                0,
                0,
                0.7
            };
            x = 0.314375 * safezoneW + safezoneX;
            y = 0.313 * safezoneH + safezoneY;
            w = 0.37125 * safezoneW;
            h = 0.396 * safezoneH;
        };
        class Life_RscTitleBackground: Life_RscText {
            idc = -1;
            colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
            text = "PODAJ KOD";
            x = 0.314375 * safezoneW + safezoneX;
            y = 0.291 * safezoneH + safezoneY;
            w = 0.37125 * safezoneW;
            h = 0.022 * safezoneH;
        };
    };
    class controls {
        class przycisk: life_RscButtonMenu {
            idc = 1600;
            text = "Zamknij";
            onButtonClick = "closedialog 0";
            x = 0.561875 * safezoneW + safezoneX;
            y = 0.719914 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.0219914 * safezoneH;
        };
        class przycisk_ok: life_RscButtonMenu {
            idc = 1601;
            text = "OK";
            onButtonClick = "[] spawn life_fnc_opendialog2";
            x = 0.386562 * safezoneW + safezoneX;
            y = 0.719914 * safezoneH + safezoneY;
            w = 0.061875 * safezoneW;
            h = 0.0219914 * safezoneH;
        };
        class edit_xxx: Life_RscEdit {
            idc = 2702;
            text = "";
            x = 0.381406 * safezoneW + safezoneX;
            y = 0.357056 * safezoneH + safezoneY;
            w = 0.262969 * safezoneW;
            h = 0.0329871 * safezoneH;
        };
        class text_2: Life_RscText {
            idc = 2703;
            x = 0.381406 * safezoneW + safezoneX;
            y = 0.467013 * safezoneH + safezoneY;
            w = 0.211406 * safezoneW;
            h = 0.0439828 * safezoneH;
        };
    };
};