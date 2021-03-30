class The_Programmer_Iphone_Create_Gang_Menu {
    idd = 2520;
    name = "The_Programmer_Iphone_Create_Gang_Menu";
    movingenable = 0;
    enablesimulation = 1;
    onload = "[] spawn {waitUntil {!isNull (findDisplay 2520)}; ((findDisplay 2520) displayCtrl 2523) ctrlSetText format [localize ""STR_Gang_PriceTxt"",[(getNumber(missionConfigFile >> 'Life_Settings' >> 'gang_price'))] call life_fnc_numberText]};";
    class controlsBackground {
        class Life_RscTitleBackground: Life_RscPicture {
            text = "The-Programmer\Iphone_X\textures\creer.paa";
            idc = -1;
            x = 0.6379405 * safezoneW + safezoneX;
            y = 0.288744481809243 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.7 * safezoneH;
        };
    };
    class controls {
        class InfoMsg: Life_RscStructuredText {
            idc = 2523;
            sizeex = 0.020;
            text = "";
            x = 0.670041666666667 * safezoneW + safezoneX;
            y = 0.479252704031465 * safezoneH + safezoneY;
            w = 0.15 * safezoneW;
            h = 0.14 * safezoneH;
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
        class GangCreateField: Life_RscButtonInvisible {
            idc = -1;
            onbuttonclick = "[] call life_fnc_createGang;";
            x = 0.751770833333333 * safezoneW + safezoneX;
            y = 0.674483775811209 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.03 * safezoneH;
        };
        class nom: Life_RscEdit {
            idc = 2522;
            text = "";
            sizeex = 0.033;
            colorbackground[] = {
                1,
                1,
                1,
                0
            };
            colorText[] = {
                0,
                0,
                0,
                1
            };
            x = 0.690354166666667 * safezoneW + safezoneX;
            y = 0.643018682399213 * safezoneH + safezoneY;
            w = 0.1 * safezoneW;
            h = 0.03 * safezoneH;
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