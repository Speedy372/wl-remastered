#include "script_macros.hpp"#define INFINITE 1e+1000#define IDC_LIFE_BAR_FOOD 2200#define IDC_LIFE_BAR_FOOD_RING 3200#define IDC_LIFE_BAR_WATER 2201#define IDC_LIFE_BAR_WATER_RING 3201#define IDC_LIFE_BAR_HEALTH 2202#define IDC_LIFE_BAR_HEALTH_RING 3202#define IDC_LIFE_BAR_Speaker 3007#define IDC_LIFE_BAR_SeatBelt 4203#define PACZEKRETA 444444#define PAPIEROS 444441#define GOPRO 444446
if (!alive player) exitWith {};
if (deadplayer) exitwith {};
disableSerialization;
if (isNull LIFEdisplay) then {
    [] call life_fnc_hudSetup;
};
LIFE_ID_PlayerTags = ["LIFE_PlayerTags", "onEachFrame", "life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
if (life_bro > 1) then {
    LIFEctrl(PACZEKRETA) ctrlSetText "pedro\texturesHUD\donuts.paa";
} else {
    LIFEctrl(PACZEKRETA) ctrlSetText "";
};
if (life_num > 1) then {
    LIFEctrl(PAPIEROS) ctrlSetText "pedro\texturesHUD\energy.paa";
} else {
    LIFEctrl(PAPIEROS) ctrlSetText "";
};
if (life_gopro > 1) then {
    LIFEctrl(GOPRO) ctrlSetText "pedro\texturesHUD\record.paa";
} else {
    LIFEctrl(GOPRO) ctrlSetText "";
};
if (!isNil "life_seatbelt") then {
    if (vehicle player != player) then {
        if (life_seatbelt) then {
            LIFEctrl(IDC_LIFE_BAR_SeatBelt) ctrlSetText "VindicateAssets\images\textures\HUD\seatbelt_ca.paa";
        } else {
            LIFEctrl(IDC_LIFE_BAR_SeatBelt) ctrlSetText "VindicateAssets\images\textures\HUD\puste.paa";
        };
    } else {
        LIFEctrl(IDC_LIFE_BAR_SeatBelt) ctrlSetText "";
    };
};
if (!isNil "life_fadeSound") then {
    if (life_fadeSound) then {
        LIFEctrl(IDC_LIFE_BAR_Speaker) ctrlSetText "VindicateAssets\images\textures\HUD\volume_ca.paa";
    } else {
        LIFEctrl(IDC_LIFE_BAR_Speaker) ctrlSetText "VindicateAssets\images\textures\HUD\puste1.paa";
    };
};
if (!isNil "life_thirst") then {
    if (life_thirst <= 100) then {
        LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "VindicateAssets\images\textures\HUD\Zbugowane8.paa";
    };
    if (life_thirst <= 87) then {
        LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "VindicateAssets\images\textures\HUD\Zbugowane7.paa";
    };
    if (life_thirst <= 75) then {
        LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "VindicateAssets\images\textures\HUD\wolulbeka6picie.paa";
    };
    if (life_thirst <= 62) then {
        LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "VindicateAssets\images\textures\HUD\kasaprzywodzie5.paa";
    };
    if (life_thirst <= 50) then {
        LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "VindicateAssets\images\textures\HUD\wagapica4.paa";
    };
    if (life_thirst <= 37) then {
        LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "VindicateAssets\images\textures\HUD\eleoelopicie3.paa";
    };
    if (life_thirst <= 25) then {
        LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "VindicateAssets\images\textures\HUD\jakesfajnepicie2.paa";
    };
    if (life_thirst <= 12) then {
        LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "VindicateAssets\images\textures\HUD\zbugowanepicie1.paa";
    };
    if (life_thirst <= 0) then {
        LIFEctrl(IDC_LIFE_BAR_WATER_RING) ctrlSetText "VindicateAssets\images\textures\HUD\T.paa";
    };
};
if (!isNil "life_hunger") then {
    if (life_hunger <= 100) then {
        LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "VindicateAssets\images\textures\HUD\jesteglodny8.paa";
    };
    if (life_hunger <= 87) then {
        LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "VindicateAssets\images\textures\HUD\czystegunwo7.paa";
    };
    if (life_hunger <= 75) then {
        LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "VindicateAssets\images\textures\HUD\spierdalaj6.paa";
    };
    if (life_hunger <= 62) then {
        LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "VindicateAssets\images\textures\HUD\twojamatka5.paa";
    };
    if (life_hunger <= 50) then {
        LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "VindicateAssets\images\textures\HUD\iznowutajebanaliczba4.paa";
    };
    if (life_hunger <= 37) then {
        LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "VindicateAssets\images\textures\HUD\zarciezbugowane3.paa";
    };
    if (life_hunger <= 25) then {
        LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "VindicateAssets\images\textures\HUD\dobraspierdalajnaresciekurwa2.paa";
    };
    if (life_hunger <= 12) then {
        LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "VindicateAssets\images\textures\HUD\spierdalajztymrozkodwanymplikiem.paa";
    };
    if (life_hunger <= 0) then {
        LIFEctrl(IDC_LIFE_BAR_FOOD_RING) ctrlSetText "VindicateAssets\images\textures\HUD\H.paa";
    };
};