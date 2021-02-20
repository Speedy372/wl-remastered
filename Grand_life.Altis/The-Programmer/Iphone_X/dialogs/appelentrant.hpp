class The_Programmer_Iphone_Appel_Entrant_Menu {
    idd = 26000;
    name = "The_Programmer_Iphone_Appel_Entrant_Menu";
    movingenable = 0;
    enablesimulation = 1;
    onLoad = "[] spawn the_programmer_iphone_fnc_receiveCallIphone;";
    class controlsBackground {
        class Fond: Life_RscPicture {
            text = "The-Programmer\Iphone_X\textures\Appel_Entrant.paa";
            idc = -1;
            x = 0.6379405 * safezoneW + safezoneX;
            y = 0.288744481809243 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.7 * safezoneH;
        };
    };
    class controls {
        class ecran: Life_RscStructuredText {
            idc = 26001;
            x = 0.6671875 * safezoneW + safezoneX;
            y = 0.482974926253688 * safezoneH + safezoneY;
            h = 0.04 * safezoneH;
            w = 0.15 * safezoneW;
            text = "";
        };
        class prendre: Life_RscButtonInvisible {
            x = 0.692291666666666 * safezoneW + safezoneX;
            y = 0.603751720747296 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[1,(player getVariable ""receiveCallBy"")] spawn max_phone_fnc_receiveCall; closeDialog 0; [] spawn the_programmer_iphone_fnc_phone_init;";
        };
        class refuser: Life_RscButtonInvisible {
            x = 0.752395833333333 * safezoneW + safezoneX;
            y = 0.604735004916421 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[] spawn the_programmer_iphone_fnc_refuseReceivedCall;";
        };
        class Fermer: Life_RscButtonInvisible {
            idc = -1;
            tooltip = "Poczatek";
            onbuttonclick = "closeDialog 0; [] spawn the_programmer_iphone_fnc_phone_init;";
            x = 0.732093666666666 * safezoneW + safezoneX;
            y = 0.907587959685349 * safezoneH + safezoneY;
            w = 0.025877 * safezoneW;
            h = 0.0439812 * safezoneH;
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
    };
};