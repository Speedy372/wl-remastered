#include "script_macros.hpp"
private["_craft", "_return", "_craftSites"];
if (! ((player distance(getMarkerPos "CraftingArea1") < 50) OR(player distance(getMarkerPos "CraftingArea2") < 50) OR(player distance(getMarkerPos "CraftingArea3") < 50))) then {
    closeDialog 0;
    _return = false;
    hint "Musisz być w miejscu wyznaczonym na mapie!";
} else {
    _craft = [_this, 0, "", ["", "goldcoin", 10]] call BIS_fnc_param;
    if (_craft isEqualTo "") exitWith {
        closeDialog 0
    };
    _craftSites = ["CraftingArea1", "CraftingArea2", "CraftingArea3"];
    switch (_craft) do {
    case "weapon":
        {
            _return = [["hgun_Pistol_heavy_02_F", ["diamond_cut", 5, "copper_refined", 3]], ["arifle_TRG21_F", ["diamond_cut", 5, "copper_refined", 5, "srebro_p", 6]], ["arifle_AKS_F", ["diamond_cut", 6, "copper_refined", 3, "srebro_p", 6]], ["6Rnd_45ACP_Cylinder", ["copper_refined", 3]], ["30Rnd_556x45_Stanag_Tracer_Red", ["copper_refined", 5]], ["30Rnd_545x39_Mag_Green_F", ["copper_refined", 5]], ["optic_Aco", ["srebro_p", 5, "copper_refined", 5]], ["optic_Aco_grn", ["srebro_p", 5, "diamond_cut", 4]], ["optic_MRCO", ["srebro_p", 3, "diamond_cut", 4]], ["optic_MRD", ["srebro_p", 4, "diamond_cut", 4]], ["muzzle_snds_M", ["srebro_p", 6, "diamond_cut", 4]]];
        }; case "vehicle": {
            _return = [];
        };
    case "uniform":
        {
            _return = [["V_BandollierB_oli", ["baumwolle", 30]], ["U_C_Driver_4", ["baumwolle", 35]], ["U_IG_Guerilla1_1", ["baumwolle", 40]], ["U_I_OfficerUniform", ["baumwolle", 45]], ["U_I_Protagonist_VR", ["baumwolle", 50]], ["U_O_CombatUniform_ocamo", ["baumwolle", 55]], ["U_I_GhillieSuit", ["baumwolle", 60]]];
        };
    case "backpack":
        {
            _return = [["B_Carryall_cbr", ["baumwolle", 30]], ["B_Bergen_hex_F", ["baumwolle", 60]]];
        };
    case "item":
        {
            _return = [["lockpick", ["copper_refined", 10]], ["pickaxe", ["copper_refined", 10, "srebro_p", 3]], ["toolkit", ["copper_refined", 10, "srebro_p", 4]], ["storagesmall", ["copper_refined", 30, "srebro_p", 20]], ["FirstAidKit", ["copper_refined", 5, "srebro_p", 2]]];
        };
    case "vest":
        {
            _return = [["V_BandollierB_cbr", ["srebro_p", 10]]];
        };
    case "ammo":
        {
            _return = [];
        };
    case "attach":
        {
            _return = [];
        };
    }; _return ;
};