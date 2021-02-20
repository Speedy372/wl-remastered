#include "script_macros.hpp"
if (!alive player || dialog) exitWith {};
createDialog "playerSettings";
disableSerialization;
switch (playerSide) do {
case west:
    {
        ctrlShow[2011, false];
        ctrlShow[80000, false];
        ctrlShow[60714, false];
        ctrlShow[1209, false];
        ctrlShow[1207, false];
        ctrlShow[60718, false];
        ctrlShow[40714, false];
    };
case civilian:
    {
        ctrlShow[2012, false];
        ctrlShow[20003, false];
        ctrlShow[40003, false];
        ctrlShow[82001, false];
        ctrlShow[81204, false];
        ctrlShow[980021, false];
        ctrlShow[80022, false];
    };
case independent:
    {
        ctrlShow[2012, false];
        ctrlShow[2011, false];
        ctrlShow[80000, false];
        ctrlShow[60718, false];
        ctrlShow[40718, false];
        ctrlShow[1209, false];
        ctrlShow[1207, false];
        ctrlShow[980021, false];
        ctrlShow[80022, false];
        ctrlShow[60714, false];
        ctrlShow[40714, false];
    };
}; if (FETCH_CONST(life_adminlevel) < 1) then {
    ctrlShow[20210, false];
    ctrlShow[2021, false];
};
[] call life_fnc_p_updateMenu;