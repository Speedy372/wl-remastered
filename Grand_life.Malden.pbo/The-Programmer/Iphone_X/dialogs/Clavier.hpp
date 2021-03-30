class The_Programmer_Iphone_Clavier_Menu {
    idd = 21000;
    name = "The_Programmer_Iphone_Clavier_Menu";
    movingenable = 0;
    enablesimulation = 1;
    onLoad = "[] spawn the_programmer_iphone_fnc_clavierMenu;";
    class controlsBackground {
        class Fond: Life_RscPicture {
            text = "The-Programmer\Iphone_X\textures\Clavier.paa";
            idc = -1;
            x = 0.6379405 * safezoneW + safezoneX;
            y = 0.288744481809243 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.7 * safezoneH;
        };
    };
    class controls {
        class ecran: Life_RscEdit {
            x = 0.656770833333333 * safezoneW + safezoneX;
            y = 0.38267994100295 * safezoneH + safezoneY;
            h = 0.15 * safezoneH;
            w = 0.17 * safezoneW;
            idc = 21001;
            text = "";
            onkeyup = "uiNamespace setVariable [""compose_number"",(ctrlText 21001)];";
        };
        class btn_0: Life_RscButtonInvisible {
            x = 0.715208333333333 * safezoneW + safezoneX;
            y = 0.718795968534907 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[""0""] spawn the_programmer_iphone_fnc_composeNumber;";
        };
        class btn_1: Life_RscButtonInvisible {
            x = 0.656770833333333 * safezoneW + safezoneX;
            y = 0.537914123893805 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.057 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[""1""] spawn the_programmer_iphone_fnc_composeNumber;";
        };
        class btn_2: Life_RscButtonInvisible {
            x = 0.715208333333333 * safezoneW + safezoneX;
            y = 0.537914123893805 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[""2""] spawn the_programmer_iphone_fnc_composeNumber;";
        };
        class btn_3: Life_RscButtonInvisible {
            x = 0.7725 * safezoneW + safezoneX;
            y = 0.537914123893805 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[""3""] spawn the_programmer_iphone_fnc_composeNumber;";
        };
        class btn_4: Life_RscButtonInvisible {
            x = 0.656770833333333 * safezoneW + safezoneX;
            y = 0.598835299901672 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[""4""] spawn the_programmer_iphone_fnc_composeNumber;";
        };
        class btn_5: Life_RscButtonInvisible {
            x = 0.715208333333333 * safezoneW + safezoneX;
            y = 0.597852015732547 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[""5""] spawn the_programmer_iphone_fnc_composeNumber;";
        };
        class btn_6: Life_RscButtonInvisible {
            x = 0.7725 * safezoneW + safezoneX;
            y = 0.599818584070796 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[""6""] spawn the_programmer_iphone_fnc_composeNumber;";
        };
        class btn_7: Life_RscButtonInvisible {
            x = 0.656770833333333 * safezoneW + safezoneX;
            y = 0.658815634218289 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[""7""] spawn the_programmer_iphone_fnc_composeNumber;";
        };
        class btn_8: Life_RscButtonInvisible {
            x = 0.715208333333333 * safezoneW + safezoneX;
            y = 0.658815634218289 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[""8""] spawn the_programmer_iphone_fnc_composeNumber;";
        };
        class btn_9: Life_RscButtonInvisible {
            x = 0.7725 * safezoneW + safezoneX;
            y = 0.657832350049164 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[""9""] spawn the_programmer_iphone_fnc_composeNumber;";
        };
        class btn_diez: Life_RscButtonInvisible {
            x = 0.7725 * safezoneW + safezoneX;
            y = 0.718795968534907 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[""#""] spawn the_programmer_iphone_fnc_composeNumber;";
        };
        class contact: Life_RscButtonInvisible {
            x = 0.656770833333333 * safezoneW + safezoneX;
            y = 0.779759587020649 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[1] spawn the_programmer_iphone_fnc_contactmenucall;";
        };
        class call: Life_RscButtonInvisible {
            x = 0.715208333333333 * safezoneW + safezoneX;
            y = 0.780742871189774 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[(uiNamespace getVariable [""compose_number"",""""])] spawn max_phone_fnc_sendCall; closeDialog 0;";
        };
        class supprimer: Life_RscButtonInvisible {
            x = 0.7725 * safezoneW + safezoneX;
            y = 0.779759587020649 * safezoneH + safezoneY;
            w = 0.055 * safezoneW;
            h = 0.0570000000000001 * safezoneH;
            idc = -1;
            text = "";
            onButtonClick = "[] spawn the_programmer_iphone_fnc_composeNumber;";
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
        class appelrestant: Life_RscText {
            idc = 1003;
            text = "";
            colorbackground[] = {
                1,
                1,
                1,
                0
            };
            x = 0.656770833333333 * safezoneW + safezoneX;
            y = 0.349248279252704 * safezoneH + safezoneY;
            h = 0.03 * safezoneH;
            w = 0.15 * safezoneW;
        };
    };
};