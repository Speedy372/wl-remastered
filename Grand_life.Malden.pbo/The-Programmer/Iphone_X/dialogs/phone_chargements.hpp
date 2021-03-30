class The_Programmer_Iphone_Loading_Menu {
    idd = 542367;
    name = "The_Programmer_Iphone_Loading_Menu";
    movingenable = 1;
    enablesimulation = 1;
    class controlsBackground {
        class FondPrincipale: Life_RscPicture {
            text = "The-Programmer\Iphone_X\textures\fond.paa";
            idc = -1;
            x = 0.6379405 * safezoneW + safezoneX;
            y = 0.288744481809243 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.7 * safezoneH;
        };
    };
    class controls {
        class Heure: Life_RscStructuredText {
            idc = 2101;
            text = "";
            x = 0.689583333333333 * safezoneW + safezoneX;
            y = 0.537551622418879 * safezoneH + safezoneY;
            h = 0.05 * safezoneH;
            w = 0.1 * safezoneW;
        };
        class deverouiller: Life_RscStructuredText {
            idc = -1;
            text = "<t align='center'>Dotknij, aby odblokowac</t>";
            x = 0.660863833333334 * safezoneW + safezoneX;
            y = 0.827665683382498 * safezoneH + safezoneY;
            w = 0.165 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class phone: Life_RscButtonInvisible {
            idc = -1;
            text = "";
            onbuttonclick = "closeDialog 0; player setVariable [""iphone_chargement_done"",false]; [1] spawn the_programmer_iphone_fnc_phone_init;";
            x = 0.644072833333332 * safezoneW + safezoneX;
            y = 0.408517994100295 * safezoneH + safezoneY;
            w = 0.2 * safezoneW;
            h = 0.4 * safezoneH;
        };
        class Image: Life_RscPicture {
            text = "The-Programmer\Iphone_X\textures\lock.paa";
            x = 0.719072833333332 * safezoneW + safezoneX;
            y = 0.73398505408063 * safezoneH + safezoneY;
            w = 0.0420000000000001 * safezoneW;
            h = 0.07 * safezoneH;
            idc = -1;
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
    };
};