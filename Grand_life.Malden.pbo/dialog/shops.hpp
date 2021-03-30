class life_weapon_shop {
    idd = 38400;
    movingEnable = 0;
    enableSimulation = 1;
    class controlsBackground {
        class RscTitleBackground: Life_RscText {
            colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
            idc = -1;
            x = safeZoneX + safeZoneW * 0.31;
            y = safeZoneY + safeZoneH * 0.28555556;
            w = safeZoneW * 0.313875;
            h = safeZoneH * 0.02222223;
        };
        class MainBackground: Life_RscText {
            colorBackground[] = {
                0,
                0,
                0,
                0.7
            };
            idc = -1;
            x = safeZoneX + safeZoneW * 0.31;
            y = safeZoneY + safeZoneH * 0.31;
            w = safeZoneW * 0.313875;
            h = safeZoneH * 0.45222223;
        };
        class Title: Life_RscTitle {
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            idc = 38401;
            text = "";
            x = safeZoneX + safeZoneW * 0.31;
            y = safeZoneY + safeZoneH * 0.28555556;
            w = safeZoneW * 0.313875;
            h = safeZoneH * 0.02222223;
        };
        class itemInfo: Life_RscStructuredText {
            idc = 38404;
            text = "";
            sizeEx = 0.065;
            x = safeZoneX + safeZoneW * 0.485625;
            y = safeZoneY + safeZoneH * 0.35444445;
            w = safeZoneW * 0.1325;
            h = safeZoneH * 0.15888889;
            style = 2;
        };
        class FilterList: Life_RscCombo {
            idc = 38402;
            onLBSelChanged = "_this call life_fnc_weaponShopFilter";
            x = safeZoneX + safeZoneW * 0.485625;
            y = safeZoneY + safeZoneH * 0.31777778;
            w = safeZoneW * 0.1325;
            h = safeZoneH * 0.01888889;
        };
    };
    class controls {
        class itemList: Life_RscListBox {
            idc = 38403;
            onLBSelChanged = "_this call life_fnc_weaponShopSelection";
            sizeEx = 0.035;
            x = safeZoneX + safeZoneW * 0.314375;
            y = safeZoneY + safeZoneH * 0.32333334;
            w = safeZoneW * 0.14875;
            h = safeZoneH * 0.42888889;
        };
        class ButtonBuySell: Life_RscButtonMenu {
            idc = 38405;
            colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
            text = "$STR_Global_Buy";
            onButtonClick = "[] spawn life_fnc_weaponShopBuySell; true";
            x = safeZoneX + safeZoneW * 0.485;
            y = safeZoneY + safeZoneH * 0.54444445;
            w = safeZoneW * 0.1325;
            h = safeZoneH * 0.03222223;
            style = 2;
        };
        class ButtonClose: Life_RscButtonMenu {
            idc = -1;
            colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
            text = "$STR_Global_Close";
            onButtonClick = "closeDialog 0;";
            x = safeZoneX + safeZoneW * 0.485;
            y = safeZoneY + safeZoneH * 0.69111112;
            w = safeZoneW * 0.1325;
            h = safeZoneH * 0.03222223;
            style = 2;
        };
        class ButtonMags: Life_RscButtonMenu {
            idc = 38406;
            colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
            text = "$STR_Global_Mags";
            onButtonClick = "_this call life_fnc_weaponShopMags; _this call life_fnc_weaponShopFilter";
            x = safeZoneX + safeZoneW * 0.485;
            y = safeZoneY + safeZoneH * 0.64111112;
            w = safeZoneW * 0.1325;
            h = safeZoneH * 0.03222223;
            style = 2;
        };
        class ButtonAccs: Life_RscButtonMenu {
            idc = 38407;
            colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"
            };
            text = "$STR_Global_Accs";
            onButtonClick = "_this call life_fnc_weaponShopAccs; _this call life_fnc_weaponShopFilter";
            x = safeZoneX + safeZoneW * 0.485;
            y = safeZoneY + safeZoneH * 0.59222223;
            w = safeZoneW * 0.1325;
            h = safeZoneH * 0.03222223;
            style = 2;
        };
    };
};