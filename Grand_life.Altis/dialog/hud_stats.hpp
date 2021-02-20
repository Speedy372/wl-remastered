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
        LIFE_BAR_FOOD_RING,
        LIFE_BAR_WATER_RING,
        LIFE_BAR_Speaker,
        LIFE_PICTURE_WATERMARK,
        LIFE_BAR_SeatBelt,
        RscDisplayHealthBackground,
        RscDisplayHealthProgress,
        RscDisplayHealthText,
        RscDisplayhajshBackground,
        RscDisplayhajshProgress,
        RscDisplayhajsText,
        PACZEKRETA,
        PAPIEROS,
        GOPRO
    };
    class RscDisplayhajshBackground {
        type = 0;
        idc = -1;
        x = safeZoneX + safeZoneW * 0.8453125;
        y = safeZoneY + safeZoneH * 0.936841;
        w = safeZoneW * 0.1484375;
        h = safeZoneH * 0.02222223;
        style = 0;
        text = "";
        colorBackground[] = {
            0.2,
            0.2,
            0.2,
            0.3
        };
        colorText[] = {
            0.6118,
            0.0902,
            0.0314,
            1
        };
        font = "PuristaMedium";
        sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 30) * 1);
    };
    class RscDisplayhajshProgress {
        type = 8;
        idc = 6301;
        x = safeZoneX + safeZoneW * 0.8453125;
        y = safeZoneY + safeZoneH * 0.936841;
        w = safeZoneW * 0.1484375;
        h = safeZoneH * 0.02222223;
        style = 0;
        colorBar[] = {
            0.2,
            0.2,
            0.2,
            1
        };
        colorFrame[] = {
            0,
            0,
            0,
            1
        };
        texture = "#(argb,8,8,3)color(1,1,1,1)";
    };
    class RscDisplayhajsText {
        type = 0;
        idc = 6305;
        x = safeZoneX + safeZoneW * 0.8453125;
        y = safeZoneY + safeZoneH * 0.936841;
        w = safeZoneW * 0.1484375;
        h = safeZoneH * 0.02222223;
        style = 0;
        text = "Hajs: 0$";
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
        sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
    };
    class RscDisplayHealthBackground {
        type = 0;
        idc = -1;
        x = safeZoneX + safeZoneW * 0.8453125;
        y = safeZoneY + safeZoneH * 0.96666667;
        w = safeZoneW * 0.1484375;
        h = safeZoneH * 0.02222223;
        style = 0;
        text = "";
        colorBackground[] = {
            0.2,
            0.2,
            0.2,
            0.3
        };
        colorText[] = {
            0.6118,
            0.0902,
            0.0314,
            1
        };
        font = "PuristaMedium";
        sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 30) * 1);
    };
    class RscDisplayHealthProgress {
        type = 8;
        idc = 6201;
        x = safeZoneX + safeZoneW * 0.8453125;
        y = safeZoneY + safeZoneH * 0.96666667;
        w = safeZoneW * 0.1484375;
        h = safeZoneH * 0.02222223;
        style = 0;
        colorBar[] = {
            0.2,
            0.2,
            0.2,
            1
        };
        colorFrame[] = {
            0,
            0,
            0,
            1
        };
        texture = "#(argb,8,8,3)color(1,1,1,1)";
    };
    class RscDisplayHealthText {
        type = 0;
        idc = 6205;
        x = safeZoneX + safeZoneW * 0.8453125;
        y = safeZoneY + safeZoneH * 0.96666667;
        w = safeZoneW * 0.1484375;
        h = safeZoneH * 0.02222223;
        style = 0;
        text = "Zdrowie: 100%";
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
        sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
    };
    class LIFE_BAR_SeatBelt: Life_RscPicture {
        idc = IDC_LIFE_BAR_SeatBelt;
        text = "";
        x = 0.769582 * safezoneW + safezoneX;
        y = 0.939828 * safezoneH + safezoneY;
        w = 0.0331042 * safezoneW;
        h = 0.0589743 * safezoneH;
    };
    class LIFE_BAR_Speaker: Life_RscPicture {
        idc = IDC_LIFE_BAR_Speaker;
        text = "";
        x = 0.723696 * safezoneW + safezoneX;
        y = 0.939828 * safezoneH + safezoneY;
        w = 0.0331042 * safezoneW;
        h = 0.0589743 * safezoneH;
    };
    class LIFE_BAR_FOOD_RING: Life_RscPicture {
        idc = IDC_LIFE_BAR_FOOD_RING;
        text = "";
        x = 0.952604 * safezoneW + safezoneX;
        y = 0.434026 * safezoneH + safezoneY;
        w = 0.0331042 * safezoneW;
        h = 0.0589743 * safezoneH;
    };
    class LIFE_BAR_WATER_RING: Life_RscPicture {
        idc = IDC_LIFE_BAR_WATER_RING;
        text = "";
        x = 0.952292 * safezoneW + safezoneX;
        y = 0.5 * safezoneH + safezoneY;
        w = 0.0331042 * safezoneW;
        h = 0.0589743 * safezoneH;
    };
    class LIFE_PICTURE_WATERMARK: Life_RscPicture {
        idc = IDC_LIFE_PICTURE_WATERMARK;
        text = "textures\watermark.paa";
        x = 0.01 * safezoneW + safezoneX;
        y = 0.89 * safezoneH + safezoneY;
        w = 0.128;
        h = 0.128;
    };
    class PACZEKRETA: Life_RscPicture {
        idc = PACZEKRETA;
        text = "";
        x = 0.952604 * safezoneW + safezoneX;
        y = 0.368051 * safezoneH + safezoneY;
        w = 0.0331042 * safezoneW;
        h = 0.0589743 * safezoneH;
    };
    class PAPIEROS: Life_RscPicture {
        idc = PAPIEROS;
        text = "";
        x = 0.952604 * safezoneW + safezoneX;
        y = 0.302077 * safezoneH + safezoneY;
        w = 0.0331042 * safezoneW;
        h = 0.0589743 * safezoneH;
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