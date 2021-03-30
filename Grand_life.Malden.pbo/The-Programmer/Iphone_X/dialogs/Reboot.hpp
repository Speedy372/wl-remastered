class The_Programmer_Iphone_Reboot_Menu {
    idd = 20055;
    name = "The_Programmer_Iphone_Reboot_Menu";
    movingenable = 0;
    enablesimulation = 1;
    class controlsBackground {
        class Banque_menu: Life_RscPicture {
            idc = 1200;
            text = "The-Programmer\Iphone_X\textures\reboot.paa";
            x = 0.6379405 * safezoneW + safezoneX;
            y = 0.288744481809243 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.7 * safezoneH;
        };
    };
    class controls {
        class Fermer: Life_RscButtonInvisible {
            idc = -1;
            tooltip = "Poczatek";
            onbuttonclick = "closeDialog 0; [] spawn the_programmer_iphone_fnc_phone_init;";
            x = 0.732093666666666 * safezoneW + safezoneX;
            y = 0.907587959685349 * safezoneH + safezoneY;
            w = 0.025877 * safezoneW;
            h = 0.0439812 * safezoneH;
        };
        class heure_4: Life_RscStructuredText {
            idc = 1000;
            x = 0.746875 * safezoneW + safezoneX;
            y = 0.549854965585054 * safezoneH + safezoneY;
            h = 0.035 * safezoneH;
            w = 0.07 * safezoneW;
        };
        class heure_3: Life_RscStructuredText {
            idc = 1001;
            x = 0.664583333333333 * safezoneW + safezoneX;
            y = 0.549854965585054 * safezoneH + safezoneY;
            h = 0.035 * safezoneH;
            w = 0.07 * safezoneW;
        };
        class heure_1: Life_RscStructuredText {
            idc = 1002;
            x = 0.664583333333333 * safezoneW + safezoneX;
            y = 0.449559980334317 * safezoneH + safezoneY;
            h = 0.035 * safezoneH;
            w = 0.07 * safezoneW;
        };
        class heure_2: Life_RscStructuredText {
            idc = 1003;
            x = 0.746875 * safezoneW + safezoneX;
            y = 0.449559980334317 * safezoneH + safezoneY;
            h = 0.035 * safezoneH;
            w = 0.07 * safezoneW;
        };
    };
};