#define INFINITE 1e+1000#define IDC_LIFE_BAR_FOOD 2200#define IDC_LIFE_BAR_FOOD_RING 3200#define IDC_LIFE_BAR_WATER 2201#define IDC_LIFE_BAR_WATER_RING 3201#define IDC_LIFE_BAR_HEALTH 2202#define IDC_LIFE_BAR_HEALTH_RING 3202#define IDC_LIFE_BAR_Speaker 3007#define IDC_LIFE_BAR_SeatBelt 4203#define PACZEKRETA 444444#define PAPIEROS 444441#define GOPRO 444446
class playerHUD {
    idd = -1;
    duration = INFINITE;
    movingEnable = 0;
    fadein = 0;
    fadeout = 0;
    name = "playerHUD";
    onLoad = "uiNamespace setVariable ['playerHUD',_this select 0]";
    objects[] = {};
    controls[] = {
        Life_RscBackground_MAIN,
        Life_RscBackground_DODATKI,
        Life_RscBackground_HAJS,
        RscDisplayhajsText,
        RscDisplayHealthText,
        RscDisplayFoodText,
        RscDisplayWaterText,
        LIFE_BAR_FOOD_RING,
        LIFE_BAR_WATER_RING,
        LIFE_BAR_HEALTH_RING,
        LIFE_BAR_Speaker,
        LIFE_PICTURE_WATERMARK,
        RscDisplaynickisteamidText,
        RscDisplayDateText,
        LIFE_BAR_SeatBelt,
        PACZEKRETA,
        PAPIEROS,
        GOPRO
    };
    class Life_RscBackground_MAIN: Life_RscBackground {
        colorBackground[] = {
            0,
            0,
            0,
            0.60
        };
        x = 0.838021 * safezoneW + safezoneX;
        y = 0.928833 * safezoneH + safezoneY;
        w = 0.131771 * safezoneW;
        h = 0.0659743 * safezoneH;
    };
    class Life_RscBackground_DODATKI: Life_RscBackground {
        colorBackground[] = {
            0,
            0,
            0,
            0.60
        };
        x = 0.973364 * safezoneW + safezoneX;
        y = 0.90251 * safezoneH + safezoneY;
        w = 0.0171875 * safezoneW;
        h = 0.0927258 * safezoneH;
    };
    class Life_RscBackground_HAJS: Life_RscBackground {
        colorBackground[] = {
            0,
            0,
            0,
            0.60
        };
        x = 0.838021 * safezoneW + safezoneX;
        y = 0.90251 * safezoneH + safezoneY;
        w = 0.131771 * safezoneW;
        h = 0.0219914 * safezoneH;
    };
    class RscDisplayhajsText {
        type = 0;
        idc = 6305;
        x = 0.838021 * safezoneW + safezoneX;
        y = 0.90251 * safezoneH + safezoneY;
        w = 0.131771 * safezoneW;
        h = 0.0219914 * safezoneH;
        style = 0;
        text = "GOTÓWKA: 0$";
        colorBackground[] = {
            0,
            0,
            0,
            0
        };
        colorText[] = {
            1,
            1,
            1,
            1
        };
        font = "PuristaMedium";
        sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8);
    };
    class RscDisplayHealthText {
        type = 0;
        idc = 6205;
        x = 0.929688 * safezoneW + safezoneX;
        y = safeZoneY + safeZoneH * 0.966474;
        w = 0.0331042 * safezoneW;
        h = safeZoneH * 0.0286458;
        style = 2;
        text = "";
        colorBackground[] = {
            0,
            0,
            0,
            0
        };
        colorText[] = {
            1,
            1,
            1,
            1
        };
        font = "PuristaMedium";
        align = "center";
        sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8);
    };
    class RscDisplayFoodText {
        type = 0;
        idc = 6207;
        x = 0.889583 * safezoneW + safezoneX;
        y = safeZoneY + safeZoneH * 0.966474;
        w = 0.0331042 * safezoneW;
        h = safeZoneH * 0.0286458;
        style = 2;
        text = "";
        colorBackground[] = {
            0,
            0,
            0,
            0
        };
        colorText[] = {
            1,
            1,
            1,
            1
        };
        font = "PuristaMedium";
        align = "center";
        sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8);
    };
    class RscDisplayWaterText {
        type = 0;
        idc = 6206;
        x = 0.849479 * safezoneW + safezoneX;
        y = safeZoneY + safeZoneH * 0.966474;
        w = 0.0331042 * safezoneW;
        h = safeZoneH * 0.0286458;
        style = 2;
        text = "";
        colorBackground[] = {
            0,
            0,
            0,
            0
        };
        colorText[] = {
            1,
            1,
            1,
            1
        };
        font = "PuristaMedium";
        align = "center";
        sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8);
    };
    class LIFE_BAR_SeatBelt: Life_RscPicture {
        idc = IDC_LIFE_BAR_SeatBelt;
        text = "";
        x = 0.977036 * safezoneW + safezoneX;
        y = 0.947968 * safezoneH + safezoneY;
        w = 0.00994047 * safezoneW;
        h = 0.016922 * safezoneH;
    };
    class LIFE_BAR_Speaker: Life_RscPicture {
        idc = IDC_LIFE_BAR_Speaker;
        text = "";
        x = 0.977036 * safezoneW + safezoneX;
        y = 0.972816 * safezoneH + safezoneY;
        w = 0.00994047 * safezoneW;
        h = 0.016922 * safezoneH;
    };
    class LIFE_BAR_FOOD_RING: Life_RscPicture {
        idc = IDC_LIFE_BAR_FOOD_RING;
        text = "VindicateAssets\images\textures\HUD\H.paa";
        x = 0.889583 * safezoneW + safezoneX;
        y = 0.928833 * safezoneH + safezoneY;
        w = 0.0286458 * safezoneW;
        h = 0.0439828 * safezoneH;
    };
    class LIFE_BAR_WATER_RING: Life_RscPicture {
        idc = IDC_LIFE_BAR_WATER_RING;
        text = "VindicateAssets\images\textures\HUD\T.paa";
        x = 0.849479 * safezoneW + safezoneX;
        y = 0.928833 * safezoneH + safezoneY;
        w = 0.0286458 * safezoneW;
        h = 0.0439828 * safezoneH;
    };
    class LIFE_BAR_HEALTH_RING: Life_RscPicture {
        idc = LIFE_BAR_HEALTH_RING;
        text = "VindicateAssets\images\textures\HUD\S.paa";
        x = 0.929688 * safezoneW + safezoneX;
        y = 0.928833 * safezoneH + safezoneY;
        w = 0.0286458 * safezoneW;
        h = 0.0439828 * safezoneH;
    };
    class LIFE_PICTURE_WATERMARK: Life_RscPicture {
        idc = IDC_LIFE_PICTURE_WATERMARK;
        text = "textures\watermark.paa";
        x = 0.01 * safezoneW + safezoneX;
        y = 0.88 * safezoneH + safezoneY;
        w = 0.128;
        h = 0.128;
    };
    class RscDisplaynickisteamidText {
        type = 0;
        idc = 6307;
        x = 0.0072916 * safezoneW + safezoneX;
        y = 0.95706 * safezoneH + safezoneY;
        w = 0.240625 * safezoneW;
        h = 0.0219914 * safezoneH;
        style = 0;
        text = "";
        colorBackground[] = {
            0,
            0,
            0,
            0
        };
        colorText[] = {
            1,
            1,
            1,
            1
        };
        font = "PuristaMedium";
        sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8);
    };
    class RscDisplayDateText {
        type = 0;
        idc = 6308;
        x = 0.0072916 * safezoneW + safezoneX;
        y = 0.939828 * safezoneH + safezoneY;
        w = 0.240625 * safezoneW;
        h = 0.0219914 * safezoneH;
        style = 0;
        text = "";
        colorBackground[] = {
            0,
            0,
            0,
            0
        };
        colorText[] = {
            1,
            1,
            1,
            1
        };
        font = "PuristaMedium";
        sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8);
    };
    class PACZEKRETA: Life_RscPicture {
        idc = PACZEKRETA;
        text = "";
        x = 0.977036 * safezoneW + safezoneX;
        y = 0.895084 * safezoneH + safezoneY;
        w = 0.00994047 * safezoneW;
        h = 0.016922 * safezoneH;
    };
    class PAPIEROS: Life_RscPicture {
        idc = PAPIEROS;
        text = "";
        x = 0.977036 * safezoneW + safezoneX;
        y = 0.92174 * safezoneH + safezoneY;
        w = 0.00994047 * safezoneW;
        h = 0.016922 * safezoneH;
    };
    class GOPRO: Life_RscPicture {
        idc = GOPRO;
        text = "";
        x = 0.952604 * safezoneW + safezoneX;
        y = 0.565974 * safezoneH + safezoneY;
        w = 0.0331042 * safezoneW;
        h = 0.0589743 * safezoneH;
    };
};
class HUDbleed {
    idd = 999;
    movingEnable = 0;
    fadein = 1;
    duration = 1;
    fadeout = 1;
    name = "HUDbleed";
    onLoad = "uiNamespace setVariable ['HUDbleed',_this select 0]";
    objects[] = {};
    class controls {
        class hud6 {
            type = 0;
            style = 2096;
            idc = 42569;
            fadein = 1;
            fadeout = 1;
            x = 0.952292 * safezoneW + safezoneX;
            y = 0.508333 * safezoneH + safezoneY;
            w = 0.0331042 * safezoneW;
            h = 0.0589743 * safezoneH;
            sizeEx = 0.01;
            size = 0.01;
            font = "PuristaLight";
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            colorText[] = {
                1,
                1,
                1,
                1
            };
            shadow = 0;
            text = "icons\bleed.paa";
        };
    };
};