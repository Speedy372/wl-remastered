class The_Programmer_Iphone_Appel_En_Cours_Menu {
    idd = 25000;
    name = "The_Programmer_Iphone_Appel_En_Cours_Menu";
    movingenable = 0;
    enablesimulation = 1;
    onLoad = "[] spawn the_programmer_iphone_fnc_inCallIphone;";
    class controlsBackground {
        class Fond: Life_RscPicture {
            text = "The-Programmer\Iphone_X\textures\Appel_en_cours.paa";
            idc = -1;
            x = 0.6379405 * safezoneW + safezoneX;
            y = 0.288744481809243 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.7 * safezoneH;
        };
    };
    class controls {
        class ecran: Life_RscStructuredText {
            idc = 25001;
            x = 0.6671875 * safezoneW + safezoneX;
            y = 0.482974926253688 * safezoneH + safezoneY;
            h = 0.04 * safezoneH;
            w = 0.15 * safezoneW;
            text = "";
        };
        class Temps: Life_RscText {
            idc = 25002;
            x = 0.726041666666667 * safezoneW + safezoneX;
            y = 0.404611602753195 * safezoneH + safezoneY;
            h = 0.02 * safezoneH;
            w = 0.07 * safezoneW;
            text = "";
        };
        class Arreter: Life_RscButtonInvisible {
            x = 0.715208333333333 * safezoneW + safezoneX;
            y = 0.604735004916421 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[] spawn the_programmer_iphone_fnc_endCallButton;";
        };
        class Reboot: Life_RscButtonInvisible {
            idc = -1;
            tooltip = "Reboot";
            onbuttonclick = "[] call the_programmer_iphone_fnc_reboot;";
            x = 0.807894833333333 * safezoneW + safezoneX;
            y = 0.312326017502458 * safezoneH + safezoneY;
            w = 0.01 * safezoneW;
            h = 0.02 * safezoneH;
        };
        class Fermer: Life_RscButtonInvisible {
            idc = -1;
            tooltip = "Home";
            onbuttonclick = "closeDialog 0; [] spawn the_programmer_iphone_fnc_phone_init;";
            x = 0.732093666666666 * safezoneW + safezoneX;
            y = 0.907587959685349 * safezoneH + safezoneY;
            w = 0.025877 * safezoneW;
            h = 0.0439812 * safezoneH;
        };
    };
};