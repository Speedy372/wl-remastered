#define true 1#define false 0
class gang_config {
    temporary_gangs = true;
    temp_gang_price = 25000;
    perm_gang_price = 75000;
    default_bank_cash = 15000;
    default_temp_maxmembers = 4;
    max_tax_rate = 40;
    remove_hq_upgrades = false;
    show_defined_gangtags = true;
    class hideouts {
        possible_hideout_classes[] = {
            "Land_ConcreteWell_02_F"
        };
        hideout_markername = "KRYJÓWKA GANGU: ";
        hideout_markername_default = "NIEPRZEJETA";
        loadfromDBafterRESTART = 1;
        class altis {
            gang_hideout1_pos[] = {
                1638.734,
                4660.174
            };
            gang_hideout2_pos[] = {
                6520.127,
                2504.53
            };
            gang_hideout3_pos[] = {
                1110109,
                5049.86
            };
        };
        class tanoa {
            gang_hideout1_pos[] = {
                9168.74,
                8708.04
            };
            gang_hideout2_pos[] = {
                8909.12,
                11894.4
            };
            gang_hideout3_pos[] = {
                10109,
                5049.86
            };
        };
        class malden {
            gang_hideout1_pos[] = {
                1638.734,
                4660.174
            };
            gang_hideout2_pos[] = {
                6520.127,
                2504.53
            };
        };
    };
    class upgrades {
        class level1 {
            max_members = 4;
            description_length = 100;
            bank_limit = 75000;
            price = -1;
        };
        class level2 {
            max_members = 6;
            description_length = 250;
            bank_limit = 125000;
            price = 200000;
        };
        class level3 {
            max_members = 8;
            description_length = 500;
            bank_limit = 250000;
            price = 400000;
        };
        class level4 {
            max_members = 10;
            description_length = 750;
            bank_limit = 500000;
            price = 600000;
        };
        class level5 {
            max_members = 12;
            description_length = 1000;
            bank_limit = 1000000;
            price = 800000;
        };
    };
    class hqupgrades {
        class atm {
            displayName = "$STR_aapps_gang_hqu_atm";
            price = 200000;
            action = "closedialog 0; 0 spawn life_fnc_atmMenu";
        };
        class market {
            displayName = "$STR_aapps_gang_hqu_market";
            price = 500000;
            action = "[player,"""","""",""gang""] call life_fnc_virt_menu";
        };
        class heal {
            displayName = "$STR_aapps_gang_hqu_heal";
            price = 250000;
            action = "[getpos player] spawn life_fnc_healHospital";
        };
        class gstore {
            displayName = "$STR_MAR_General_Store";
            price = 500000;
            action = "[player, """","""",""genstore""] call life_fnc_weaponShopMenu";
        };
        class garage {
            displayName = "$STR_MAR_Garage";
            price = 900000;
            action = "closeDialog 0; 0 spawn life_fnc_gang_garage";
        };
    };
    class defaultpermission {
        temp[] = {
            {
                0,
                "Owner",
                {
                    "INVITE",
                    "KICK",
                    "WITHDRAW",
                    "DEPOSIT",
                    "DISBAND",
                    "TOPERM",
                    "CHANGEPERMISSION"
                }
            },
            {
                1,
                "Member",
                {
                    "DEPOSIT"
                }
            }
        };
        perm[] = {
            {
                0,
                "Owner",
                {
                    "INVITE",
                    "KICK",
                    "HQ",
                    "DEPOSIT",
                    "PAYTAX",
                    "HQSPAWN",
                    "RANKS",
                    "WITHDRAW",
                    "DESCRIPTION",
                    "TAX",
                    "DISBAND",
                    "UPGRADE",
                    "CHANGEPERMISSION",
                    "TAG"
                }
            },
            {
                1,
                "Member",
                {
                    "HQSPAWN",
                    "PAYTAX",
                    "DEPOSIT"
                }
            }
        };
    };
    class permissions {
        class gang_INVITE {
            short = "INVITE";
            displayName = "$STR_aapps_gang_action_invite";
            icon = "";
            action = "0 call life_fnc_gang_kickinvite";
            idc = 220152;
            idc_ref = "gang_KICK";
            main = true;
        };
        class gang_KICK {
            short = "KICK";
            displayName = "$STR_aapps_gang_action_kick";
            icon = "";
            action = "0 call life_fnc_gang_kickinvite";
            idc = 220153;
            main = true;
        };
        class gang_HQ {
            short = "HQ";
            displayName = "$STR_aapps_gang_action_hqchange";
            icon = "";
            action = "0 call life_fnc_gang_hqlist";
            idc = 220155;
            main = true;
        };
        class gang_DEPOSIT {
            short = "DEPOSIT";
            displayName = "$STR_aapps_gang_action_gangbalance";
            icon = "";
            action = "[false] spawn life_fnc_gang_openbank";
            idc = 220156;
            idc_ref = "gang_WITHDRAW";
            main = true;
        };
        class gang_WITHDRAW {
            short = "WITHDRAW";
            displayName = "$STR_aapps_gang_action_gangbalance";
            icon = "";
            action = "[true] spawn life_fnc_gang_openbank";
            idc = 220157;
            main = true;
        };
        class gang_DESCRIPTION {
            short = "DESCRIPTION";
            displayName = "$STR_aapps_gang_action_desc";
            icon = "";
            action = "[0] spawn life_fnc_gang_desc";
            idc = 220158;
            main = true;
        };
        class gang_TAX {
            short = "TAX";
            displayName = "$STR_aapps_gang_action_tax";
            icon = "";
            action = "";
            idc = 220159;
            main = false;
        };
        class gang_DISBAND {
            short = "DISBAND";
            displayName = "$STR_aapps_gang_action_disband";
            icon = "";
            action = "[true] spawn life_fnc_gang_leave";
            idc = 220154;
            main = true;
        };
        class gang_paytax {
            short = "PAYTAX";
            displayName = "$STR_aapps_gang_action_paystax";
            icon = "";
            action = "";
            idc = 220160;
            main = false;
        };
        class gang_UPGRADE {
            short = "UPGRADE";
            displayName = "$STR_aapps_gang_action_upgrade";
            icon = "";
            action = "0 spawn life_fnc_gang_upgrade";
            idc = 220161;
            main = true;
        };
        class gang_RANKS {
            short = "RANKS";
            displayName = "$STR_aapps_gang_action_changeranks";
            icon = "";
            action = "0 call life_fnc_gang_changegroup";
            idc = 220162;
            main = true;
        };
        class gang_CHANGEPERMISSION {
            short = "CHANGEPERMISSION";
            displayName = "$STR_aapps_gang_action_changeperm";
            def = "Permissions";
            icon = "";
            action = "0 call life_fnc_gang_permission";
            idc = 220163;
            main = true;
        };
        class gang_TAG {
            short = "TAG";
            displayName = "$STR_aapps_gang_action_changetag";
            icon = "";
            action = "";
            idc = 220164;
            main = false;
        };
        class gang_TOPERM {
            short = "TOPPERM";
            displayName = "$STR_aapps_gang_action_toperm";
            icon = "";
            action = "0 spawn life_fnc_gang_toperm";
            idc = -1;
            main = true;
        };
        class gang_HQSPAWN {
            short = "HQSPAWN";
            displayName = "$STR_aapps_gang_action_hqspawn";
            icon = "";
            action = "";
            idc = 220165;
            main = false;
        };
    };
};
class life_gang_buymenu {
    idd = 220070;
    name = "life_gang_buymenu";
    movingEnable = 1;
    enableSimulation = 1;
    class controlsBackground {
        class RscText_1000: Life_RscStructuredText {
            idc = -1;
            text = "<img image='\a3\3den\data\displays\display3den\panelright\modegroups_ca.paa'></img>  Gangmanagement";
            x = 0.299937 * safezoneW + safezoneX;
            y = 0.2602 * safezoneH + safezoneY;
            w = 0.40215 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1001: Life_RscText {
            idc = -1;
            x = 0.299937 * safezoneW + safezoneX;
            y = 0.2866 * safezoneH + safezoneY;
            w = 0.402187 * safezoneW;
            h = 0.49764 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                0.9
            };
        };
        class RscText_1012: Life_RscText {
            idc = -1;
            text = "Gangname:";
            x = 0.304789 * safezoneW + safezoneX;
            y = 0.298022 * safezoneH + safezoneY;
            w = 0.18561 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1003: Life_RscText {
            idc = -1;
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.3614 * safezoneH + safezoneY;
            w = 0.185626 * safezoneW;
            h = 0.374 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
        class RscText_1002: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_temp";
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.18561 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
            style = 2;
        };
        class RscText_1005: Life_RscText {
            idc = -1;
            x = 0.511342 * safezoneW + safezoneX;
            y = 0.3614 * safezoneH + safezoneY;
            w = 0.185626 * safezoneW;
            h = 0.374 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
        class RscText_1004: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_perm";
            x = 0.511531 * safezoneW + safezoneX;
            y = 0.335453 * safezoneH + safezoneY;
            w = 0.18561 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
            style = 2;
        };
        class RscButton_1601: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_rent";
            x = 0.307157 * safezoneW + safezoneX;
            y = 0.7002 * safezoneH + safezoneY;
            w = 0.178914 * safezoneW;
            h = 0.03058 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "[1] spawn life_fnc_gang_buyrent";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscButton_1600: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_buy";
            x = 0.514438 * safezoneW + safezoneX;
            y = 0.7002 * safezoneH + safezoneY;
            w = 0.178914 * safezoneW;
            h = 0.03058 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "[2] spawn life_fnc_gang_buyrent";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscButton_1602: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_abort";
            x = 0.304064 * safezoneW + safezoneX;
            y = 0.74398 * safezoneH + safezoneY;
            w = 0.392906 * safezoneW;
            h = 0.033 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "closeDialog 0";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscPicture_1200: Life_RscPicture {
            idc = -1;
            text = "\a3\ui_f_curator\data\logos\arma3_zeus_icon_ca.paa";
            x = 0.357687 * safezoneW + safezoneX;
            y = 0.3702 * safezoneH + safezoneY;
            w = 0.0773437 * safezoneW;
            h = 0.121 * safezoneH;
        };
        class RscPicture_1201: Life_RscPicture {
            idc = -1;
            text = "\a3\data_f_mark\logos\arma3_mark_icon_ca.paa";
            x = 0.568027 * safezoneW + safezoneX;
            y = 0.3702 * safezoneH + safezoneY;
            w = 0.07425 * safezoneW;
            h = 0.121 * safezoneH;
        };
        class RscText_1008: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_price";
            x = 0.309219 * safezoneW + safezoneX;
            y = 0.643 * safezoneH + safezoneY;
            w = 0.175294 * safezoneW;
            h = 0.0198 * safezoneH;
            style = 2;
        };
        class RscText_1009: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_price";
            x = 0.516285 * safezoneW + safezoneX;
            y = 0.643867 * safezoneH + safezoneY;
            w = 0.174263 * safezoneW;
            h = 0.0198 * safezoneH;
            style = 2;
        };
        class RscText_1010: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_temp_desc";
            x = 0.30922 * safezoneW + safezoneX;
            y = 0.5022 * safezoneH + safezoneY;
            w = 0.1753 * safezoneW;
            h = 0.132 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.1
            };
            style = 528;
        };
        class RscText_1011: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_perm_desc";
            x = 0.515469 * safezoneW + safezoneX;
            y = 0.5 * safezoneH + safezoneY;
            w = 0.1753 * safezoneW;
            h = 0.132 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.1
            };
            style = 528;
        };
    };
    class controls {
        class RscText_1006: Life_RscText {
            idc = 220070;
            text = "";
            x = 0.30922 * safezoneW + safezoneX;
            y = 0.6628 * safezoneH + safezoneY;
            w = 0.175296 * safezoneW;
            h = 0.033 * safezoneH;
            sizeEx = 0.08;
            style = 2;
        };
        class RscText_1007: Life_RscText {
            idc = 220071;
            text = "";
            x = 0.516348 * safezoneW + safezoneX;
            y = 0.662615 * safezoneH + safezoneY;
            w = 0.175296 * safezoneW;
            h = 0.033 * safezoneH;
            sizeEx = 0.08;
            style = 2;
        };
        class RscEdit_1400: Life_RscEdit {
            idc = 220072;
            text = "";
            x = 0.511315 * safezoneW + safezoneX;
            y = 0.2976 * safezoneH + safezoneY;
            w = 0.161914 * safezoneW;
            h = 0.0308 * safezoneH;
            maxChars = 30;
            colorBackground[] = {
                0,
                0,
                0,
                0.1
            };
        };
        class RscButton_1603: Life_RscButton {
            idc = 220073;
            x = 0.676345 * safezoneW + safezoneX;
            y = 0.2954 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.033 * safezoneH;
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            colorBackgroundActive[] = {
                0,
                0,
                0,
                0
            };
            colorBackgroundFocused[] = {
                0,
                0,
                0,
                0
            };
            style = 48 + 0x800;
            text = "\a3\3den\data\displays\display3den\toolbar\help_updates_ca.paa";
            action = "[0] spawn life_fnc_gang_buyrent";
        };
    };
};
class life_gang_buymenu_small {
    idd = 220070;
    name = "life_gang_buymenu_small";
    movingEnable = 1;
    enableSimulation = 1;
    class controlsBackground {
        class RscText_1000: Life_RscStructuredText {
            idc = -1;
            text = "<img image='\a3\3den\data\displays\display3den\panelright\modegroups_ca.paa'></img>  Gangmanagement";
            x = 0.386562 * safezoneW + safezoneX;
            y = 0.2602 * safezoneH + safezoneY;
            w = 0.226838 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1001: Life_RscText {
            idc = -1;
            x = 0.386562 * safezoneW + safezoneX;
            y = 0.2866 * safezoneH + safezoneY;
            w = 0.226875 * safezoneW;
            h = 0.49764 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                0.9
            };
        };
        class RscText_1012: Life_RscText {
            idc = -1;
            text = "Gangname:";
            x = 0.391409 * safezoneW + safezoneX;
            y = 0.29804 * safezoneH + safezoneY;
            w = 0.0670158 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1005: Life_RscText {
            idc = -1;
            x = 0.391719 * safezoneW + safezoneX;
            y = 0.3614 * safezoneH + safezoneY;
            w = 0.216564 * safezoneW;
            h = 0.374 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
        class RscText_1004: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_perm";
            x = 0.391925 * safezoneW + safezoneX;
            y = 0.33544 * safezoneH + safezoneY;
            w = 0.216547 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
            style = 2;
        };
        class RscButton_1600: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_buy";
            x = 0.396875 * safezoneW + safezoneX;
            y = 0.6958 * safezoneH + safezoneY;
            w = 0.206757 * safezoneW;
            h = 0.03058 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "[2] spawn life_fnc_gang_buyrent";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscButton_1602: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_abort";
            x = 0.391719 * safezoneW + safezoneX;
            y = 0.74398 * safezoneH + safezoneY;
            w = 0.216563 * safezoneW;
            h = 0.033 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "closeDialog 0";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscPicture_1201: Life_RscPicture {
            idc = -1;
            text = "\a3\data_f_mark\logos\arma3_mark_icon_ca.paa";
            x = 0.462875 * safezoneW + safezoneX;
            y = 0.3702 * safezoneH + safezoneY;
            w = 0.07425 * safezoneW;
            h = 0.121 * safezoneH;
        };
        class RscText_1009: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_price";
            x = 0.398731 * safezoneW + safezoneX;
            y = 0.63728 * safezoneH + safezoneY;
            w = 0.202106 * safezoneW;
            h = 0.0198 * safezoneH;
            style = 2;
        };
        class RscText_1011: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_perm_desc";
            x = 0.397906 * safezoneW + safezoneX;
            y = 0.4956 * safezoneH + safezoneY;
            w = 0.205206 * safezoneW;
            h = 0.132 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.1
            };
            style = 528;
        };
    };
    class controls {
        class RscText_1007: Life_RscText {
            idc = 220071;
            text = "";
            x = 0.398834 * safezoneW + safezoneX;
            y = 0.65378 * safezoneH + safezoneY;
            w = 0.202109 * safezoneW;
            h = 0.033 * safezoneH;
            sizeEx = 0.08;
            style = 2;
        };
        class RscEdit_1400: Life_RscEdit {
            idc = 220072;
            text = "";
            x = 0.464937 * safezoneW + safezoneX;
            y = 0.2976 * safezoneH + safezoneY;
            w = 0.123758 * safezoneW;
            h = 0.0308 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0.1
            };
        };
        class RscButton_1603: Life_RscButton {
            idc = 220073;
            x = 0.589719 * safezoneW + safezoneX;
            y = 0.2954 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.033 * safezoneH;
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            colorBackgroundActive[] = {
                0,
                0,
                0,
                0
            };
            colorBackgroundFocused[] = {
                0,
                0,
                0,
                0
            };
            style = 48 + 0x800;
            text = "\a3\3den\data\displays\display3den\toolbar\help_updates_ca.paa";
            action = "[0] spawn life_fnc_gang_buyrent";
        };
    };
};
class life_gang_overview {
    idd = 220050;
    name = "life_gang_overview";
    movingEnable = 1;
    enableSimulation = 1;
    class controlsBackground {
        class RscText_1000: Life_RscStructuredText {
            idc = 220053;
            text = "";
            x = 0.299937 * safezoneW + safezoneX;
            y = 0.2998 * safezoneH + safezoneY;
            w = 0.40215 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1001: Life_RscText {
            idc = -1;
            x = 0.299937 * safezoneW + safezoneX;
            y = 0.3262 * safezoneH + safezoneY;
            w = 0.402187 * safezoneW;
            h = 0.46024 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                0.9
            };
        };
        class RscText_1007: Life_RscText {
            idc = -1;
            x = 0.51156 * safezoneW + safezoneX;
            y = 0.583439 * safezoneH + safezoneY;
            w = 0.185626 * safezoneW;
            h = 0.1628 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
        class RscText_1002: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_desc";
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.18561 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
            style = 2;
        };
        class RscText_1004: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_overview";
            x = 0.511531 * safezoneW + safezoneX;
            y = 0.335453 * safezoneH + safezoneY;
            w = 0.18561 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
            style = 2;
        };
        class RscText_1006: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_actions";
            x = 0.51131 * safezoneW + safezoneX;
            y = 0.556684 * safezoneH + safezoneY;
            w = 0.18561 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
            style = 2;
        };
    };
    class controls {
        class RscText_1003: Life_RscStructuredText {
            idc = 220050;
            text = "";
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.3614 * safezoneH + safezoneY;
            w = 0.185626 * safezoneW;
            h = 0.385 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
        class RscText_1005: Life_RscStructuredText {
            idc = 220051;
            text = "";
            x = 0.511343 * safezoneW + safezoneX;
            y = 0.35986 * safezoneH + safezoneY;
            w = 0.185626 * safezoneW;
            h = 0.176 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
        class RscListbox_1500: Life_RscListbox {
            idc = 220052;
            x = 0.514022 * safezoneW + safezoneX;
            y = 0.588 * safezoneH + safezoneY;
            w = 0.180778 * safezoneW;
            h = 0.15356 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            sizeEx = 0.04;
        };
        class RscButton_1600: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_leave";
            x = 0.304094 * safezoneW + safezoneX;
            y = 0.7508 * safezoneH + safezoneY;
            w = 0.186131 * safezoneW;
            h = 0.03058 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "[false] spawn life_fnc_gang_leave";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscButton_1601: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_close";
            x = 0.510839 * safezoneW + safezoneX;
            y = 0.7508 * safezoneH + safezoneY;
            w = 0.186131 * safezoneW;
            h = 0.03058 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "closeDialog 0";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
    };
};
class life_gang_groupchange {
    idd = 220080;
    name = "life_gang_groupchange";
    movingEnable = 1;
    enableSimulation = 1;
    class controlsBackground {
        class RscText_1000: Life_RscText {
            idc = -1;
            x = 0.299937 * safezoneW + safezoneX;
            y = 0.3262 * safezoneH + safezoneY;
            w = 0.402187 * safezoneW;
            h = 0.46024 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                0.9
            };
        };
        class RscText_1001: Life_RscStructuredText {
            idc = -1;
            text = "<img image='\a3\3den\data\displays\display3den\panelright\customcomposition_edit_ca.paa'></img>  Edit Usergroups";
            x = 0.299937 * safezoneW + safezoneX;
            y = 0.2998 * safezoneH + safezoneY;
            w = 0.40215 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1002: Life_RscText {
            idc = -1;
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.4076 * safezoneH + safezoneY;
            w = 0.185626 * safezoneW;
            h = 0.3388 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
        class RscText_1003: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_grp_selection";
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.18561 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1008: Life_RscText {
            idc = -1;
            x = 0.511859 * safezoneW + safezoneX;
            y = 0.3614 * safezoneH + safezoneY;
            w = 0.185007 * safezoneW;
            h = 0.385 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
        class RscText_1004: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_member";
            x = 0.511859 * safezoneW + safezoneX;
            y = 0.33544 * safezoneH + safezoneY;
            w = 0.184992 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscButton_1600: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_saveclose";
            x = 0.510839 * safezoneW + safezoneX;
            y = 0.7508 * safezoneH + safezoneY;
            w = 0.186131 * safezoneW;
            h = 0.03058 * safezoneH;
            action = "0 call life_fnc_gang_savegroups";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
        };
        class RscButton_1601: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_abort";
            x = 0.304094 * safezoneW + safezoneX;
            y = 0.7508 * safezoneH + safezoneY;
            w = 0.186131 * safezoneW;
            h = 0.03058 * safezoneH;
            action = "closeDialog 0";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
        };
    };
    class controls {
        class RscCombo_2100: Life_RscCombo {
            idc = 220080;
            x = 0.393782 * safezoneW + safezoneX;
            y = 0.33566 * safezoneH + safezoneY;
            w = 0.095906 * safezoneW;
            h = 0.02596 * safezoneH;
        };
        class RscListbox_1500: Life_RscListbox {
            idc = 220081;
            x = 0.302002 * safezoneW + safezoneX;
            y = 0.412 * safezoneH + safezoneY;
            w = 0.185619 * safezoneW;
            h = 0.3322 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            sizeEx = 0.04;
            canDrag = 1;
        };
        class RscListbox_1501: Life_RscListbox {
            idc = 220082;
            x = 0.509281 * safezoneW + safezoneX;
            y = 0.3658 * safezoneH + safezoneY;
            w = 0.185619 * safezoneW;
            h = 0.3784 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            sizeEx = 0.04;
            canDrag = 1;
        };
        class RscText_1007: Life_RscText {
            idc = 220083;
            text = "";
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.3812 * safezoneH + safezoneY;
            w = 0.185301 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
    };
};
class life_gang_description {
    idd = 220060;
    name = "life_gang_description";
    movingEnable = 1;
    enableSimulation = 1;
    class controlsBackground {
        class RscText_1001: Life_RscText {
            idc = -1;
            x = 0.299937 * safezoneW + safezoneX;
            y = 0.3262 * safezoneH + safezoneY;
            w = 0.402187 * safezoneW;
            h = 0.46024 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                0.9
            };
        };
        class RscText_1000: Life_RscStructuredText {
            idc = -1;
            text = "<img image='\a3\3den\data\displays\display3den\panelright\customcomposition_edit_ca.paa'></img>  Edit Description";
            x = 0.299937 * safezoneW + safezoneX;
            y = 0.2998 * safezoneH + safezoneY;
            w = 0.40215 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1003: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_livepreview";
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.18561 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1004: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_editdesc";
            x = 0.511531 * safezoneW + safezoneX;
            y = 0.335453 * safezoneH + safezoneY;
            w = 0.18561 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscButton_1600: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_saveclose";
            x = 0.510839 * safezoneW + safezoneX;
            y = 0.7508 * safezoneH + safezoneY;
            w = 0.186131 * safezoneW;
            h = 0.03058 * safezoneH;
            action = "[1] call life_fnc_gang_desc";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
        };
        class RscButton_1601: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_abort";
            x = 0.304094 * safezoneW + safezoneX;
            y = 0.7508 * safezoneH + safezoneY;
            w = 0.186131 * safezoneW;
            h = 0.03058 * safezoneH;
            action = "closeDialog 0";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
        };
        class RscText_1010: Life_RscButton {
            idc = -1;
            text = "?";
            x = 0.493908 * safezoneW + safezoneX;
            y = 0.75124 * safezoneH + safezoneY;
            w = 0.0134059 * safezoneW;
            h = 0.0308 * safezoneH;
            action = "";
            url = "https://community.bistudio.com/wiki/Structured_Text";
            tooltip = "";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            style = 2;
        };
    };
    class controls {
        class RscText_1002: Life_RscStructuredText {
            idc = 220061;
            text = "";
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.3614 * safezoneH + safezoneY;
            w = 0.185626 * safezoneW;
            h = 0.385 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
        class RscButton_1602: Life_RscButton {
            idc = 220062;
            text = "$STR_aapps_gang_activate_lp";
            x = 0.304061 * safezoneW + safezoneX;
            y = 0.36228 * safezoneH + safezoneY;
            w = 0.185627 * safezoneW;
            h = 0.38456 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
            colorBackgroundActive[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
            colorFocused[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
            offsetPressedX = 0;
            offsetPressedY = 0;
            action = "ctrlShow [220062,false]";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscEdit_1400: Life_RscEdit {
            idc = 220063;
            text = "";
            x = 0.511858 * safezoneW + safezoneX;
            y = 0.3614 * safezoneH + safezoneY;
            w = 0.185007 * safezoneW;
            h = 0.385 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
            style = 16;
            lineSpacing = 1;
        };
        class RscText_1009: Life_RscText {
            idc = 220064;
            text = "0/0";
            x = 0.649119 * safezoneW + safezoneX;
            y = 0.34116 * safezoneH + safezoneY;
            w = 0.0464063 * safezoneW;
            h = 0.0154 * safezoneH;
            style = 1;
        };
    };
};
class life_gang_atm {
    idd = 220120;
    name = "life_gang_atm";
    movingEnable = 1;
    enableSimulation = 1;
    class controlsBackground {
        class RscText_1000: Life_RscText {
            idc = 220120;
            x = 0.417471 * safezoneW + safezoneX;
            y = 0.324 * safezoneH + safezoneY;
            w = 0.165057 * safezoneW;
            h = 0.41404 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                0.9
            };
        };
        class RscText_1600: Life_RscStructuredText {
            idc = -1;
            text = "<img image='\a3\ui_f\data\map\mapcontrol\tourism_ca.paa'></img>  ATM";
            x = 0.417471 * safezoneW + safezoneX;
            y = 0.2976 * safezoneH + safezoneY;
            w = 0.16502 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1005: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_balance";
            x = 0.422656 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.065387 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1003: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_own_balance";
            x = 0.422244 * safezoneW + safezoneX;
            y = 0.4428 * safezoneH + safezoneY;
            w = 0.065387 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1008: Life_RscText {
            idc = -1;
            x = 0.424648 * safezoneW + safezoneX;
            y = 0.5352 * safezoneH + safezoneY;
            w = 0.15057 * safezoneW;
            h = 0.0022 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
    };
    class controls {
        class RscButton_1601: Life_RscButton {
            idc = 220121;
            text = "$STR_aapps_gang_saveclose";
            x = 0.422656 * safezoneW + safezoneX;
            y = 0.6958 * safezoneH + safezoneY;
            w = 0.154686 * safezoneW;
            h = 0.033 * safezoneH;
            action = "0 call life_fnc_gang_bankclose";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
        };
        class RscStructuredText_1100: Life_RscText {
            idc = 220122;
            text = "";
            x = 0.422656 * safezoneW + safezoneX;
            y = 0.368 * safezoneH + safezoneY;
            w = 0.154675 * safezoneW;
            h = 0.044 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            style = 2;
            sizeEx = 0.08;
        };
        class RscStructuredText_1101: Life_RscText {
            idc = 220123;
            text = "";
            x = 0.423696 * safezoneW + safezoneX;
            y = 0.4032 * safezoneH + safezoneY;
            w = 0.117558 * safezoneW;
            h = 0.022 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            style = 1;
        };
        class RscStructuredText_1102: Life_RscText {
            idc = 220124;
            text = "";
            x = 0.422656 * safezoneW + safezoneX;
            y = 0.4802 * safezoneH + safezoneY;
            w = 0.154675 * safezoneW;
            h = 0.044 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            style = 2;
            sizeEx = 0.08;
        };
        class RscEdit_1400: Life_RscEdit {
            idc = 220125;
            text = "0";
            x = 0.44328 * safezoneW + safezoneX;
            y = 0.5572 * safezoneH + safezoneY;
            w = 0.114468 * safezoneW;
            h = 0.033 * safezoneH;
            style = 2;
            colorBackground[] = {
                0,
                0,
                0,
                0.1
            };
        };
        class RscButton_1609: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_deposit";
            x = 0.422657 * safezoneW + safezoneX;
            y = 0.61 * safezoneH + safezoneY;
            w = 0.154674 * safezoneW;
            h = 0.033 * safezoneH;
            action = "[true] spawn life_fnc_gang_bankaction";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
        };
        class RscButton_1610: Life_RscButton {
            idc = 220126;
            text = "$STR_aapps_gang_withdraw";
            x = 0.422656 * safezoneW + safezoneX;
            y = 0.6518 * safezoneH + safezoneY;
            w = 0.154674 * safezoneW;
            h = 0.033 * safezoneH;
            action = "[false] spawn life_fnc_gang_bankaction";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
        };
        class RscButton_1611: Life_RscButton {
            idc = 220127;
            x = 0.556719 * safezoneW + safezoneX;
            y = 0.61 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.033 * safezoneH;
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            colorBackgroundActive[] = {
                0,
                0,
                0,
                0
            };
            colorBackgroundFocused[] = {
                0,
                0,
                0,
                0
            };
            style = 48 + 0x800;
            text = "\a3\3den\data\displays\display3den\toolbar\help_updates_ca.paa";
            action = "0 spawn life_fnc_gang_get_tax";
            tooltip = "$STR_aapps_gang_atm_tooltip";
        };
    };
};
class life_gang_grouppermission {
    idd = 220150;
    name = "life_gang_grouppermission";
    movingEnable = 1;
    enableSimulation = 1;
    class controlsBackground {
        class RscText_1000: Life_RscStructuredText {
            idc = -1;
            text = "<img image='\a3\3den\data\displays\display3den\panelright\modegroups_ca.paa'></img>  Permissionmanagement";
            x = 0.299937 * safezoneW + safezoneX;
            y = 0.2998 * safezoneH + safezoneY;
            w = 0.40215 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1001: Life_RscText {
            idc = -1;
            x = 0.299937 * safezoneW + safezoneX;
            y = 0.3262 * safezoneH + safezoneY;
            w = 0.402187 * safezoneW;
            h = 0.45584 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                0.9
            };
        };
        class RscText_1002: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_ranks";
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.13406 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1004: Life_RscText {
            idc = -1;
            text = "Name:";
            x = 0.443485 * safezoneW + safezoneX;
            y = 0.335453 * safezoneH + safezoneY;
            w = 0.0701306 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1006: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_permission";
            x = 0.443283 * safezoneW + safezoneX;
            y = 0.3724 * safezoneH + safezoneY;
            w = 0.254687 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1007: Life_RscText {
            idc = -1;
            x = 0.443281 * safezoneW + safezoneX;
            y = 0.39946 * safezoneH + safezoneY;
            w = 0.254703 * safezoneW;
            h = 0.25762 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
        class leftback: Life_RscText {
            idc = -1;
            x = 0.304064 * safezoneW + safezoneX;
            y = 0.3614 * safezoneH + safezoneY;
            w = 0.134076 * safezoneW;
            h = 0.3718 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
        class text1: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_permi_invite";
            x = 0.46143 * safezoneW + safezoneX;
            y = 0.4098 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.0253 * safezoneH;
        };
        class text2: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_permi_kick";
            x = 0.46143 * safezoneW + safezoneX;
            y = 0.44346 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.0253 * safezoneH;
        };
        class text3: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_permi_disband";
            x = 0.46143 * safezoneW + safezoneX;
            y = 0.4769 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.0253 * safezoneH;
        };
        class text4: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_permi_hqchange";
            x = 0.46143 * safezoneW + safezoneX;
            y = 0.51232 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.0253 * safezoneH;
        };
        class text5: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_permi_deposit";
            x = 0.46143 * safezoneW + safezoneX;
            y = 0.54774 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.0253 * safezoneH;
        };
        class text6: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_permi_withdraw";
            x = 0.46143 * safezoneW + safezoneX;
            y = 0.5814 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.0253 * safezoneH;
        };
        class text7: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_desc";
            x = 0.46143 * safezoneW + safezoneX;
            y = 0.61726 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.0253 * safezoneH;
        };
        class text8: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_permi_tax";
            x = 0.587656 * safezoneW + safezoneX;
            y = 0.41046 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.0253 * safezoneH;
        };
        class text9: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_permi_paystax";
            x = 0.587656 * safezoneW + safezoneX;
            y = 0.4428 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.0253 * safezoneH;
        };
        class text10: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_permi_upgrade";
            x = 0.587656 * safezoneW + safezoneX;
            y = 0.4769 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.0253 * safezoneH;
        };
        class text11: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_permi_ranks";
            x = 0.587656 * safezoneW + safezoneX;
            y = 0.51188 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.0253 * safezoneH;
        };
        class text12: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_permi_perm";
            x = 0.587712 * safezoneW + safezoneX;
            y = 0.547718 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.0253 * safezoneH;
        };
        class text13: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_permi_tag";
            x = 0.587656 * safezoneW + safezoneX;
            y = 0.58206 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.0253 * safezoneH;
        };
        class text14: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_permi_hqspawn";
            x = 0.587656 * safezoneW + safezoneX;
            y = 0.61726 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.0253 * safezoneH;
        };
    };
    class controls {
        class RscListbox_1500: Life_RscListbox {
            idc = 220150;
            x = 0.307157 * safezoneW + safezoneX;
            y = 0.368 * safezoneH + safezoneY;
            w = 0.127166 * safezoneW;
            h = 0.28996 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            sizeEx = 0.04;
        };
        class RscButton_1601: Life_RscButton {
            idc = 220169;
            text = "$STR_aapps_gang_close";
            x = 0.304094 * safezoneW + safezoneX;
            y = 0.742 * safezoneH + safezoneY;
            w = 0.393362 * safezoneW;
            h = 0.03058 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscButton_1600: Life_RscButton {
            idc = 220166;
            text = "$STR_aapps_gang_deleterank";
            x = 0.307125 * safezoneW + safezoneX;
            y = 0.6628 * safezoneH + safezoneY;
            w = 0.126845 * safezoneW;
            h = 0.0308 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscButton_1602: Life_RscButton {
            idc = 220167;
            text = "$STR_aapps_gang_savechanges";
            x = 0.307155 * safezoneW + safezoneX;
            y = 0.698 * safezoneH + safezoneY;
            w = 0.126845 * safezoneW;
            h = 0.0308 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscEdit_1400: Life_RscEdit {
            idc = 220151;
            text = "";
            x = 0.519594 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.15882 * safezoneW;
            h = 0.0286 * safezoneH;
            maxChars = 15;
            colorBackground[] = {
                0,
                0,
                0,
                0.1
            };
        };
        class RscButton_1603: Life_RscButton {
            idc = 220168;
            x = 0.681444 * safezoneW + safezoneX;
            y = 0.333807 * safezoneH + safezoneY;
            w = 0.0175314 * safezoneW;
            h = 0.0297 * safezoneH;
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            colorBackgroundActive[] = {
                0,
                0,
                0,
                0
            };
            colorBackgroundFocused[] = {
                0,
                0,
                0,
                0
            };
            style = 48 + 0x800;
            text = "\a3\3den\data\cfg3den\history\makenewlayer_ca.paa";
        };
        class check1: Life_CheckBox {
            idc = 220152;
            x = 0.449469 * safezoneW + safezoneX;
            y = 0.4142 * safezoneH + safezoneY;
            w = 0.0103125 * safezoneW;
            h = 0.0198 * safezoneH;
            sizeEx = 0.04;
        };
        class check2: Life_CheckBox {
            idc = 220153;
            x = 0.449469 * safezoneW + safezoneX;
            y = 0.4472 * safezoneH + safezoneY;
            w = 0.0103125 * safezoneW;
            h = 0.0198 * safezoneH;
            sizeEx = 0.04;
        };
        class check3: Life_CheckBox {
            idc = 220154;
            x = 0.449469 * safezoneW + safezoneX;
            y = 0.481244 * safezoneH + safezoneY;
            w = 0.0103125 * safezoneW;
            h = 0.0198 * safezoneH;
            sizeEx = 0.04;
        };
        class check4: Life_CheckBox {
            idc = 220155;
            x = 0.449469 * safezoneW + safezoneX;
            y = 0.516778 * safezoneH + safezoneY;
            w = 0.0103125 * safezoneW;
            h = 0.0198 * safezoneH;
            sizeEx = 0.04;
        };
        class check5: Life_CheckBox {
            idc = 220156;
            x = 0.449469 * safezoneW + safezoneX;
            y = 0.551496 * safezoneH + safezoneY;
            w = 0.0103125 * safezoneW;
            h = 0.0198 * safezoneH;
            sizeEx = 0.04;
        };
        class check6: Life_CheckBox {
            idc = 220157;
            x = 0.449469 * safezoneW + safezoneX;
            y = 0.586488 * safezoneH + safezoneY;
            w = 0.0103125 * safezoneW;
            h = 0.0198 * safezoneH;
            sizeEx = 0.04;
        };
        class check7: Life_CheckBox {
            idc = 220158;
            x = 0.449469 * safezoneW + safezoneX;
            y = 0.621289 * safezoneH + safezoneY;
            w = 0.0103125 * safezoneW;
            h = 0.0198 * safezoneH;
            sizeEx = 0.04;
        };
        class check8: Life_CheckBox {
            idc = 220159;
            x = 0.576031 * safezoneW + safezoneX;
            y = 0.413652 * safezoneH + safezoneY;
            w = 0.0103125 * safezoneW;
            h = 0.0198 * safezoneH;
            sizeEx = 0.04;
        };
        class check9: Life_CheckBox {
            idc = 220160;
            x = 0.576031 * safezoneW + safezoneX;
            y = 0.447077 * safezoneH + safezoneY;
            w = 0.0103125 * safezoneW;
            h = 0.0198 * safezoneH;
            sizeEx = 0.04;
        };
        class check10: Life_CheckBox {
            idc = 220161;
            x = 0.576031 * safezoneW + safezoneX;
            y = 0.481491 * safezoneH + safezoneY;
            w = 0.0103125 * safezoneW;
            h = 0.0198 * safezoneH;
            sizeEx = 0.04;
        };
        class check11: Life_CheckBox {
            idc = 220162;
            x = 0.576031 * safezoneW + safezoneX;
            y = 0.516594 * safezoneH + safezoneY;
            w = 0.0103125 * safezoneW;
            h = 0.0198 * safezoneH;
            sizeEx = 0.04;
        };
        class check12: Life_CheckBox {
            idc = 220163;
            x = 0.576031 * safezoneW + safezoneX;
            y = 0.551642 * safezoneH + safezoneY;
            w = 0.0103125 * safezoneW;
            h = 0.0198 * safezoneH;
            sizeEx = 0.04;
        };
        class check13: Life_CheckBox {
            idc = 220164;
            x = 0.576031 * safezoneW + safezoneX;
            y = 0.58679 * safezoneH + safezoneY;
            w = 0.0103125 * safezoneW;
            h = 0.0198 * safezoneH;
            sizeEx = 0.04;
        };
        class check14: Life_CheckBox {
            idc = 220165;
            x = 0.576031 * safezoneW + safezoneX;
            y = 0.620774 * safezoneH + safezoneY;
            w = 0.0103125 * safezoneW;
            h = 0.0198 * safezoneH;
            sizeEx = 0.04;
        };
    };
};
class life_gang_hqselection {
    idd = 220200;
    name = "life_gang_hqselection";
    movingEnable = 1;
    enableSimulation = 1;
    class controlsBackground {
        class RscText_1000: Life_RscStructuredText {
            idc = -1;
            text = "<img image='\a3\3den\data\displays\display3den\entitymenu\garage_ca.paa'></img> HQ - Management";
            x = 0.407161 * safezoneW + safezoneX;
            y = 0.2998 * safezoneH + safezoneY;
            w = 0.18564 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1001: Life_RscText {
            idc = -1;
            x = 0.40718 * safezoneW + safezoneX;
            y = 0.3262 * safezoneH + safezoneY;
            w = 0.185638 * safezoneW;
            h = 0.41184 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                0.9
            };
        };
        class RscText_1002: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_selecthq";
            x = 0.411312 * safezoneW + safezoneX;
            y = 0.3339 * safezoneH + safezoneY;
            w = 0.176343 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1006: Life_RscText {
            idc = -1;
            x = 0.411312 * safezoneW + safezoneX;
            y = 0.36008 * safezoneH + safezoneY;
            w = 0.176344 * safezoneW;
            h = 0.2904 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
    };
    class controls {
        class RscButton_1601: Life_RscButton {
            idc = 220201;
            text = "$STR_aapps_gang_confirmsel";
            x = 0.41132 * safezoneW + safezoneX;
            y = 0.6606 * safezoneH + safezoneY;
            w = 0.176852 * safezoneW;
            h = 0.03058 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            colorBackgroundDisabled[] = {
                0.14902,
                0.196078,
                0.219608,
                0.3
            };
            colorDisabled[] = {
                1,
                1,
                1,
                1
            };
            action = "";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscButton_1602: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_close";
            x = 0.411286 * safezoneW + safezoneX;
            y = 0.698 * safezoneH + safezoneY;
            w = 0.176852 * safezoneW;
            h = 0.03058 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "closeDialog 0";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscListbox_1500: Life_RscListbox {
            idc = 220200;
            x = 0.414344 * safezoneW + safezoneX;
            y = 0.368 * safezoneH + safezoneY;
            w = 0.170139 * safezoneW;
            h = 0.2772 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            sizeEx = 0.04;
        };
    };
};
class life_gang_groupsettings {
    idd = 220250;
    name = "life_gang_groupsettings";
    movingEnable = 1;
    enableSimulation = 1;
    class controlsBackground {
        class RscText_1000: Life_RscStructuredText {
            idc = -1;
            text = "<img image='\a3\3den\data\displays\display3den\panelright\submode_logic_module_ca.paa'></img>  Settings";
            x = 0.407161 * safezoneW + safezoneX;
            y = 0.2998 * safezoneH + safezoneY;
            w = 0.18564 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1001: Life_RscText {
            idc = -1;
            x = 0.407187 * safezoneW + safezoneX;
            y = 0.32642 * safezoneH + safezoneY;
            w = 0.185625 * safezoneW;
            h = 0.22704 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                0.9
            };
        };
        class RscText_1004: Life_RscText {
            idc = -1;
            text = "Name:";
            x = 0.411519 * safezoneW + safezoneX;
            y = 0.33544 * safezoneH + safezoneY;
            w = 0.0577556 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1002: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_owner";
            x = 0.411313 * safezoneW + safezoneX;
            y = 0.3702 * safezoneH + safezoneY;
            w = 0.0577556 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1050: Life_RscText {
            idc = -1;
            text = "Tag:";
            x = 0.411313 * safezoneW + safezoneX;
            y = 0.40386 * safezoneH + safezoneY;
            w = 0.0577556 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1005: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_tax";
            x = 0.411313 * safezoneW + safezoneX;
            y = 0.43906 * safezoneH + safezoneY;
            w = 0.0577556 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1007: Life_RscText {
            idc = -1;
            text = "%";
            x = 0.578375 * safezoneW + safezoneX;
            y = 0.44434 * safezoneH + safezoneY;
            w = 0.0103126 * safezoneW;
            h = 0.0165 * safezoneH;
        };
    };
    class controls {
        class RscEdit_1400: Life_RscEdit {
            idc = 220250;
            text = "";
            x = 0.47319 * safezoneW + safezoneX;
            y = 0.33654 * safezoneH + safezoneY;
            w = 0.115496 * safezoneW;
            h = 0.0264 * safezoneH;
            maxChars = 30;
            colorBackground[] = {
                0,
                0,
                0,
                0.1
            };
        };
        class RscCombo_2100: Life_RscCombo {
            idc = 220251;
            x = 0.473189 * safezoneW + safezoneX;
            y = 0.36954 * safezoneH + safezoneY;
            w = 0.115507 * safezoneW;
            h = 0.02706 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0.1
            };
        };
        class RscEdit_1402: Life_RscEdit {
            idc = 220252;
            text = "";
            x = 0.473188 * safezoneW + safezoneX;
            y = 0.40386 * safezoneH + safezoneY;
            w = 0.115496 * safezoneW;
            h = 0.0275 * safezoneH;
            maxChars = 6;
            colorBackground[] = {
                0,
                0,
                0,
                0.1
            };
        };
        class RscEdit_1403: Life_RscEdit {
            idc = 220253;
            text = "";
            x = 0.473188 * safezoneW + safezoneX;
            y = 0.43884 * safezoneH + safezoneY;
            w = 0.105186 * safezoneW;
            h = 0.0275 * safezoneH;
            maxChars = 3;
            colorBackground[] = {
                0,
                0,
                0,
                0.1
            };
            style = 1;
        };
        class RscButton_1601: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_savechanges";
            x = 0.411313 * safezoneW + safezoneX;
            y = 0.47668 * safezoneH + safezoneY;
            w = 0.1768 * safezoneW;
            h = 0.03058 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "0 spawn life_fnc_gang_savesettings";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscButton_1602: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_close";
            x = 0.411313 * safezoneW + safezoneX;
            y = 0.51452 * safezoneH + safezoneY;
            w = 0.1768 * safezoneW;
            h = 0.03058 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "closeDialog 0; 0 spawn life_fnc_gang_openDialog";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
    };
};
class life_gang_kickinvite {
    idd = 220300;
    name = "life_gang_kickinvite";
    movingEnable = 1;
    enableSimulation = 1;
    class controlsBackground {
        class RscText_1000: Life_RscText {
            idc = -1;
            x = 0.299937 * safezoneW + safezoneX;
            y = 0.3262 * safezoneH + safezoneY;
            w = 0.402187 * safezoneW;
            h = 0.46024 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                0.9
            };
        };
        class RscText_1001: Life_RscStructuredText {
            idc = -1;
            text = "<img image='\a3\3den\data\displays\display3den\panelright\customcomposition_edit_ca.paa'></img>  Manage members";
            x = 0.299937 * safezoneW + safezoneX;
            y = 0.2998 * safezoneH + safezoneY;
            w = 0.40215 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1002: Life_RscText {
            idc = -1;
            x = 0.511343 * safezoneW + safezoneX;
            y = 0.368 * safezoneH + safezoneY;
            w = 0.185626 * safezoneW;
            h = 0.3784 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
        class RscText_1004: Life_RscText {
            idc = -1;
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.368 * safezoneH + safezoneY;
            w = 0.185007 * safezoneW;
            h = 0.3784 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
        class RscText_1003: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_member";
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.0711619 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1005: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_allplayers";
            x = 0.510828 * safezoneW + safezoneX;
            y = 0.33544 * safezoneH + safezoneY;
            w = 0.0726058 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
    };
    class controls {
        class RscButton_1601: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_saveclose";
            x = 0.510828 * safezoneW + safezoneX;
            y = 0.7508 * safezoneH + safezoneY;
            w = 0.186131 * safezoneW;
            h = 0.03058 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "0 call life_fnc_gang_saveinkicked; closeDialog 0";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscButton_1602: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_abort";
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.7508 * safezoneH + safezoneY;
            w = 0.186131 * safezoneW;
            h = 0.03058 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "closeDialog 0";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscEdit_1400: Life_RscEdit {
            idc = 220300;
            text = "";
            x = 0.381406 * safezoneW + safezoneX;
            y = 0.33566 * safezoneH + safezoneY;
            w = 0.09075 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0.1
            };
        };
        class RscEdit_1401: Life_RscEdit {
            idc = 220301;
            text = "";
            x = 0.588687 * safezoneW + safezoneX;
            y = 0.33566 * safezoneH + safezoneY;
            w = 0.09075 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0.1
            };
        };
        class RscListbox_1500: Life_RscListbox {
            idc = 220302;
            x = 0.306124 * safezoneW + safezoneX;
            y = 0.3702 * safezoneH + safezoneY;
            w = 0.180469 * safezoneW;
            h = 0.374 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            sizeEx = 0.04;
            canDrag = 1;
        };
        class RscListbox_1501: Life_RscListbox {
            idc = 220303;
            x = 0.513405 * safezoneW + safezoneX;
            y = 0.3702 * safezoneH + safezoneY;
            w = 0.180469 * safezoneW;
            h = 0.374 * safezoneH;
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            sizeEx = 0.04;
            canDrag = 1;
        };
        class searchbutton: Life_RscButton {
            idc = -1;
            text = "\a3\3den\data\displays\display3den\search_start_ca.paa";
            x = 0.47525 * safezoneW + safezoneX;
            y = 0.3372 * safezoneH + safezoneY;
            w = 0.0154688 * safezoneW;
            h = 0.022 * safezoneH;
            action = "[ctrlText 220300,ctrlText 220301] spawn life_fnc_gang_refreshinvite";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            color[] = {
                1,
                1,
                1,
                1
            };
            colorActive[] = {
                1,
                1,
                1,
                1
            };
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            colorBackgroundFocused[] = {
                0,
                0,
                0,
                0
            };
            colorBackgroundActive[] = {
                0,
                0,
                0,
                0
            };
            style = 48 + 0x800;
        };
        class RscPicture_1206: searchbutton {
            idc = -1;
            x = 0.682334 * safezoneW + safezoneX;
            y = 0.337733 * safezoneH + safezoneY;
            w = 0.0154688 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class searchoverlay: Life_RscButton {
            idc = 220304;
            text = "$STR_aapps_gang_search";
            x = 0.381406 * safezoneW + safezoneX;
            y = 0.33566 * safezoneH + safezoneY;
            w = 0.09075 * safezoneW;
            h = 0.0264 * safezoneH;
            action = "ctrlShow[220304,false]; ctrlSetFocus ((findDisplay 220300) displayCtrl 220300)";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            colorBackground[] = {
                1,
                1,
                1,
                0.2
            };
            colorBackgroundActive[] = {
                1,
                1,
                1,
                0.2
            };
            colorBackground2[] = {
                1,
                1,
                1,
                0.2
            };
            offsetPressedX = 0;
            offsetPressedY = 0;
            style = 0;
        };
        class RscButton_1490: searchoverlay {
            idc = 220305;
            x = 0.588687 * safezoneW + safezoneX;
            y = 0.33566 * safezoneH + safezoneY;
            w = 0.09075 * safezoneW;
            h = 0.0264 * safezoneH;
            action = "ctrlShow[220305,false]; ctrlSetFocus ((findDisplay 220300) displayCtrl 220301)";
        };
    };
};
class life_gang_hqupgrades {
    idd = 220400;
    name = "life_gang_hqupgrades";
    movingEnable = 1;
    enableSimulation = 1;
    class controlsBackground {
        class RscText_1000: Life_RscStructuredText {
            idc = -1;
            text = "<img image='\a3\3den\data\displays\display3den\entitymenu\garage_ca.paa'></img> HQ-Upgrades";
            x = 0.427807 * safezoneW + safezoneX;
            y = 0.2998 * safezoneH + safezoneY;
            w = 0.145431 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1001: Life_RscText {
            idc = -1;
            x = 0.427807 * safezoneW + safezoneX;
            y = 0.3262 * safezoneH + safezoneY;
            w = 0.145429 * safezoneW;
            h = 0.29304 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                0.9
            };
        };
        class RscText_1002: Life_RscText {
            idc = -1;
            text = "$STR_aapps_gang_hq_upgrades";
            x = 0.431932 * safezoneW + safezoneX;
            y = 0.3339 * safezoneH + safezoneY;
            w = 0.137165 * safezoneW;
            h = 0.0264 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
        };
        class RscText_1003: Life_RscText {
            idc = -1;
            x = 0.431938 * safezoneW + safezoneX;
            y = 0.3614 * safezoneH + safezoneY;
            w = 0.137148 * safezoneW;
            h = 0.209 * safezoneH;
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.2
            };
        };
    };
    class controls {
        class RscButton_1604: Life_RscButton {
            idc = -1;
            text = "$STR_aapps_gang_close";
            x = 0.431932 * safezoneW + safezoneX;
            y = 0.5792 * safezoneH + safezoneY;
            w = 0.137674 * safezoneW;
            h = 0.03058 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            action = "closeDialog 0";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class Upgradestemplate: Life_RscButton {
            idc = 220410;
            text = "";
            x = 0.435003 * safezoneW + safezoneX;
            y = 0.3702 * safezoneH + safezoneY;
            w = 0.130457 * safezoneW;
            h = 0.03058 * safezoneH;
            colorBackground[] = {
                0.14902,
                0.196078,
                0.219608,
                1
            };
            colorBackgroundDisabled[] = {
                0.14902,
                0.196078,
                0.219608,
                0.3
            };
            colorDisabled[] = {
                1,
                1,
                1,
                1
            };
            action = "";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
        };
        class RscText_1006: Upgradestemplate {
            idc = 220412;
            text = "";
            x = 0.434999 * safezoneW + safezoneX;
            y = 0.410644 * safezoneH + safezoneY;
            w = 0.130457 * safezoneW;
            h = 0.03058 * safezoneH;
        };
        class RscText_1007: Upgradestemplate {
            idc = 220414;
            text = "";
            x = 0.435003 * safezoneW + safezoneX;
            y = 0.44874 * safezoneH + safezoneY;
            w = 0.130457 * safezoneW;
            h = 0.03058 * safezoneH;
        };
        class RscText_1008: Upgradestemplate {
            idc = 220416;
            text = "";
            x = 0.435003 * safezoneW + safezoneX;
            y = 0.489 * safezoneH + safezoneY;
            w = 0.130457 * safezoneW;
            h = 0.03058 * safezoneH;
        };
        class RscText_1009: Upgradestemplate {
            idc = 220418;
            text = "";
            x = 0.435003 * safezoneW + safezoneX;
            y = 0.52992 * safezoneH + safezoneY;
            w = 0.130457 * safezoneW;
            h = 0.03058 * safezoneH;
        };
        class buy_default: Life_RscButton {
            idc = 220411;
            text = "\a3\3den\data\attributes\edit\maximize_ca.paa";
            x = 0.548469 * safezoneW + safezoneX;
            y = 0.3702 * safezoneH + safezoneY;
            w = 0.0165002 * safezoneW;
            h = 0.0308 * safezoneH;
            action = "";
            type = 1;
            access = 0;
            colorShadow[] = {
                0,
                0,
                0,
                0
            };
            color[] = {
                1,
                1,
                1,
                1
            };
            colorBackground[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
            colorBackgroundFocused[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
            colorBackgroundActive[] = {
                0.584314,
                0.647059,
                0.65098,
                0.6
            };
            style = 48 + 0x800;
            offsetPressedX = 0;
            offsetPressedY = 0;
        };
        class RscText_1011: buy_default {
            idc = 220413;
            x = 0.548525 * safezoneW + safezoneX;
            y = 0.410333 * safezoneH + safezoneY;
            w = 0.0165002 * safezoneW;
            h = 0.0308 * safezoneH;
            action = "";
        };
        class RscText_1012: buy_default {
            idc = 220415;
            x = 0.548437 * safezoneW + safezoneX;
            y = 0.448642 * safezoneH + safezoneY;
            w = 0.0165002 * safezoneW;
            h = 0.0308 * safezoneH;
            action = "";
        };
        class RscText_1013: buy_default {
            idc = 220417;
            x = 0.548469 * safezoneW + safezoneX;
            y = 0.489 * safezoneH + safezoneY;
            w = 0.0165002 * safezoneW;
            h = 0.0308 * safezoneH;
            action = "";
        };
        class RscText_1014: buy_default {
            idc = 220419;
            x = 0.548469 * safezoneW + safezoneX;
            y = 0.52948 * safezoneH + safezoneY;
            w = 0.0165002 * safezoneW;
            h = 0.0308 * safezoneH;
            action = "";
        };
    };
};