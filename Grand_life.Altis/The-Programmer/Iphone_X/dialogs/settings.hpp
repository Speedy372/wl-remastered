class The_Programmer_Iphone_Settings_Menu {
    idd = 2900;
    name = "The_Programmer_Iphone_Settings_Menu";
    movingenable = 1;
    enablesimulation = 1;
    class controlsBackground {
        class Life_RscTitleBackground: Life_RscPicture {
            text = "The-Programmer\Iphone_X\textures\parametre.paa";
            idc = -1;
            x = 0.6379405 * safezoneW + safezoneX;
            y = 0.289727765978368 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.7 * safezoneH;
        };
        class PlayerTagsHeader: Life_RscText {
            idc = -1;
            text = "$STR_SM_PlayerTags";
            x = 0.691354166666667 * safezoneW + safezoneX;
            y = 0.876411012782694 * safezoneH + safezoneY;
            w = 0.1 * safezoneW;
            h = 0.025 * safezoneH;
        };
        class SideChatHeader: PlayerTagsHeader {
            idc = -1;
            text = "$STR_SM_SC";
            y = 0.778918387413963 * safezoneH + safezoneY;
        };
        class RevealNearestHeader: PlayerTagsHeader {
            idc = -1;
            text = "$STR_SM_RNObj";
            y = 0.81023598820059 * safezoneH + safezoneY;
        };
        class BroacastHeader: PlayerTagsHeader {
            idc = -1;
            text = "$STR_SM_BCSW";
            y = 0.844503441494593 * safezoneH + safezoneY;
        };
    };
    class controls {
        class VDonFoot: Life_RscText {
            idc = -1;
            text = "$STR_SM_onFoot";
            x = 0.677291666666667 * safezoneW + safezoneX;
            y = 0.467325467059981 * safezoneH + safezoneY;
            w = 0.1 * safezoneW;
            h = 0.04;
        };
        class VDinCar: Life_RscText {
            idc = -1;
            text = "$STR_SM_inCar";
            x = 0.677291666666667 * safezoneW + safezoneX;
            y = 0.635467059980333 * safezoneH + safezoneY;
            w = 0.1 * safezoneW;
            h = 0.04;
        };
        class VDinAir: Life_RscText {
            idc = -1;
            text = "$STR_SM_inAir";
            x = 0.677291666666667 * safezoneW + safezoneX;
            y = 0.552723697148477 * safezoneH + safezoneY;
            w = 0.1 * safezoneW;
            h = 0.04;
        };
        class VD_onfoot_slider: life_RscXSliderH {
            idc = 2901;
            text = "";
            onsliderposchanged = "[0,_this select 1] call life_fnc_s_onSliderChange;";
            tooltip = "$STR_SM_ToolTip1";
            x = 0.683020833333334 * safezoneW + safezoneX;
            y = 0.508770894788593 * safezoneH + safezoneY;
            w = "9 *(((safezoneW / safezoneH) min 1.2) / 40)";
            h = "1 *((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
        };
        class VD_onfoot_value: Life_RscEdit {
            idc = 2902;
            text = "";
            onchar = "[_this select 0. _this select 1.'ground'.false] call life_fnc_s_onChar;";
            onkeyup = "[_this select 0. _this select 1.'ground'.true] call life_fnc_s_onChar;";
            x = 0.725729166666666 * safezoneW + safezoneX;
            y = 0.467325467059981 * safezoneH + safezoneY;
            w = 0.07 * safezoneW;
            h = 0.03 * safezoneH;
        };
        class VD_car_slider: life_RscXSliderH {
            idc = 2911;
            text = "";
            onsliderposchanged = "[1,_this select 1] call life_fnc_s_onSliderChange;";
            tooltip = "$STR_SM_ToolTip2";
            x = 0.683020833333334 * safezoneW + safezoneX;
            y = 0.677748279252703 * safezoneH + safezoneY;
            w = "9 *(((safezoneW / safezoneH) min 1.2) / 40)";
            h = "1 *((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
        };
        class VD_car_value: Life_RscEdit {
            idc = 2912;
            text = "";
            onchar = "[_this select 0, _this select 1,'vehicle',false] call life_fnc_s_onChar;";
            onkeyup = "[_this select 0, _this select 1,'vehicle',true] call life_fnc_s_onChar;";
            x = 0.725729166666666 * safezoneW + safezoneX;
            y = 0.635467059980333 * safezoneH + safezoneY;
            w = 0.07 * safezoneW;
            h = 0.03 * safezoneH;
        };
        class VD_air_slider: life_RscXSliderH {
            idc = 2921;
            text = "";
            onsliderposchanged = "[2,_this select 1] call life_fnc_s_onSliderChange;";
            tooltip = "$STR_SM_ToolTip3";
            x = 0.683020833333334 * safezoneW + safezoneX;
            y = 0.594021632251721 * safezoneH + safezoneY;
            w = "9 *(((safezoneW / safezoneH) min 1.2) / 40)";
            h = "1 *((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
        };
        class VD_air_value: Life_RscEdit {
            idc = 2922;
            text = "";
            onchar = "[_this select 0. _this select 1.'air'.false] call life_fnc_s_onChar;";
            onkeyup = "[_this select 0. _this select 1.'air'.true] call life_fnc_s_onChar;";
            x = 0.725729166666666 * safezoneW + safezoneX;
            y = 0.552723697148477 * safezoneH + safezoneY;
            w = 0.07 * safezoneW;
            h = 0.03 * safezoneH;
        };
        class PlayerTagsONOFF: Life_Checkbox {
            tooltip = "$STR_GUI_PlayTags";
            idc = 2970;
            sizeex = 0.04;
            oncheckedchanged = "['tags',_this select 1] call life_fnc_s_onCheckedChange;";
            x = 0.661979166666667 * safezoneW + safezoneX;
            y = 0.876411012782694 * safezoneH + safezoneY;
        };
        class SideChatONOFF: PlayerTagsONOFF {
            idc = 2971;
            tooltip = "$STR_GUI_SideSwitch";
            oncheckedchanged = "['sidechat',_this select 1] call life_fnc_s_onCheckedChange;";
            y = 0.778918387413963 * safezoneH + safezoneY;
            x = 0.661979166666667 * safezoneW + safezoneX;
        };
        class RevealONOFF: PlayerTagsONOFF {
            idc = 2972;
            tooltip = "$STR_GUI_PlayerReveal";
            oncheckedchanged = "['objects',_this select 1] call life_fnc_s_onCheckedChange;";
            y = 0.81023598820059 * safezoneH + safezoneY;
            x = 0.661979166666667 * safezoneW + safezoneX;
        };
        class BroadcastONOFF: PlayerTagsONOFF {
            idc = 2973;
            tooltip = "$STR_GUI_BroadcastSwitch";
            oncheckedchanged = "['broadcast',_this select 1] call life_fnc_s_onCheckedChange;";
            y = 0.844503441494593 * safezoneH + safezoneY;
            x = 0.661979166666667 * safezoneW + safezoneX;
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