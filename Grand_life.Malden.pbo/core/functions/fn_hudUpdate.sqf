#include "script_macros.hpp"#define INFINITE 1e+1000#define IDC_LIFE_BAR_Speaker 3007#define IDC_LIFE_BAR_SeatBelt 4203#define PACZEKRETA 444444#define PAPIEROS 444441#define GOPRO 444446
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
LIFEctrl(6205) ctrlSetText format["%1%2", round(100 - (damage player * 100)), "%"];
LIFEctrl(6207) ctrlSetText format["%1%2", [life_hunger] call life_fnc_numberText, "%"];
LIFEctrl(6206) ctrlSetText format["%1%2", [life_thirst] call life_fnc_numberText, "%"];
LIFEctrl(6307) ctrlSetText format["%1 | %2", name player, getPlayerUID player];