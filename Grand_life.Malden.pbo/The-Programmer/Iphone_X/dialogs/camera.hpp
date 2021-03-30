class The_Programmer_Iphone_Camera_Menu {
    idd = 25600;
    name = "The_Programmer_Iphone_Camera_Menu";
    movingenable = 0;
    enablesimulation = 1;
    onload = "";
    class controlsBackground {
        class Fond: Life_RscPicture {
            text = "The-Programmer\Iphone_X\textures\camera.paa";
            idc = -1;
            x = 0.6379405 * safezoneW + safezoneX;
            y = 0.288744481809243 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.7 * safezoneH;
        };
    };
    class controls {
        class ecran: Life_RscPicture {
            idc = 25601;
            x = 0.653645833333333 * safezoneW + safezoneX;
            y = 0.366947394296953 * safezoneH + safezoneY;
            h = 0.448195181907571 * safezoneH;
            w = 0.177083333333333 * safezoneW;
            text = "";
        };
        class TakeSelfie: Life_RscButtonInvisible {
            x = 0.727708333333333 * safezoneW + safezoneX;
            y = 0.832841691248771 * safezoneH + safezoneY;
            w = 0.0290625000000002 * safezoneW;
            h = 0.0481656833824977 * safezoneH;
            idc = -1;
            text = "";
            onbuttonclick = "[] spawn the_programmer_iphone_fnc_takeSelfie;";
        };
        class Reboot: Life_RscButtonInvisible {
            idc = -1;
            tooltip = "Restart";
            onbuttonclick = "[] call the_programmer_iphone_fnc_reboot;";
            x = 0.807894833333333 * safezoneW + safezoneX;
            y = 0.312326017502458 * safezoneH + safezoneY;
            w = 0.01 * safezoneW;
            h = 0.02 * safezoneH;
        };
        class Fermer: Life_RscButtonInvisible {
            idc = -1;
            tooltip = "Poczatek";
            onbuttonclick = "(findDisplay 25600) closeDisplay 0; [1] spawn the_programmer_iphone_fnc_phone_init;";
            x = 0.732093666666666 * safezoneW + safezoneX;
            y = 0.907587959685349 * safezoneH + safezoneY;
            w = 0.025877 * safezoneW;
            h = 0.0439812 * safezoneH;
        };
    };
};