#include "script_macros.hpp"
private["_skinName"];
switch (playerSide) do {
case civilian:
    {
        if (life_is_arrested) then {
            if (uniform player == "U_B_HeliPilotCoveralls") then {
                player setObjectTextureGlobal[0, "textures\Uniform\prisoner.paa"];
            };
        };
        if (uniform player == "U_C_Poloshirt_stripped") then {
            player setObjectTextureGlobal[0, "textures\Uniform\klapek.paa"];
        };
        if (uniform player isEqualTo "U_C_Poloshirt_blue") then {
            player setObjectTextureGlobal[0, "textures\Uniform\cycki.paa"];
        };
        if ((FETCH_CONST(life_adminlevel) >= 1) && ((uniform player) == "U_B_CombatUniform_mcam")) then {
            player setObjectTextureGlobal[0, "textures\adm\gl_admin.jpg"];
        };
        if (uniform player == "U_B_CombatUniform_mcam" && getPlayerUID player == "76561198139171015") then {
            player setObjectTextureGlobal[0, "textures\adm\animce.jpg"];
        };
        if (uniform player == "U_B_CombatUniform_mcam_worn" && getPlayerUID player == "76561198139171015") then {
            player setObjectTextureGlobal[0, "textures\adm\uniform_mlp.paa"];
        };
        if ((backpack player) == "B_Bergen_hex_F") then {
            if ! (isObjectHidden(unitbackpack player)) then {
                [(unitbackpack player), true] remoteExecCall["life_fnc_hideplecak", 2];
            };
        };
    };
case west:
    {
        if (uniform player == "U_Rangemaster") then {
            player setObjectTextureGlobal[0, "textures\Uniform\polo_policja.paa"];
        };
        if (uniform player == "U_B_CTRG_Soldier_F") then {
            player setObjectTextureGlobal[0, "textures\Uniform\ciec.paa"];
        };
        if (uniform player == "U_I_C_Soldier_Para_3_F") then {
            player setObjectTextureGlobal[0, "textures\Uniform\copranks\00_ruch_drogowy.paa"];
        };
        if ((FETCH_CONST(life_coplevel) >= 16) && ((uniform player) == "U_O_OfficerUniform_ocamo")) then {
            player setObjectTextureGlobal[0, "textures\Uniform\police_hivis_co.paa"];
            player setObjectTextureGlobal[1, "#(rgb,8,8,3)color(0,0,0,1)"];
        };
        if (uniform player == "U_B_CombatUniform_mcam_worn") then {
            switch ((player getVariable "rank")) do {
            case 1:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\01.paa"];
                };
            case 2:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\02.paa"];
                };
            case 3:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\03.paa"];
                };
            case 4:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\04.paa"];
                };
            case 5:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\05.paa"];
                };
            case 6:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\06.paa"];
                };
            case 7:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\07.paa"];
                };
            case 8:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\08.paa"];
                };
            case 9:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\09.paa"];
                };
            case 10:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\10.paa"];
                };
            case 11:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\11.paa"];
                };
            case 12:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\12.paa"];
                };
            case 13:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\13.paa"];
                };
            case 14:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\14.paa"];
                };
            case 15:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\15.paa"];
                };
            case 16:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\16.paa"];
                };
            case 17:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\17.paa"];
                };
            case 18:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\18.paa"];
                };
            case 19:
                {
                    player setObjectTextureGlobal[0, "textures\Uniform\copranks\18.paa"];
                };
            };
        };
        if (license_cop_aiad && ((uniform player) == "U_Rangemaster")) then {
            player setObjectTextureGlobal[0, "textures\Uniform\aiad_inspector_po4.paa"];
        };
        if ((FETCH_CONST(life_coplevel) >= 17) && ((uniform player) == "U_Marshal")) then {
            player setObjectTextureGlobal[0, "textures\Uniform\police_div_chief_white.paa"];
        };
        if ((FETCH_CONST(life_coplevel) == 19) && ((uniform player) == "U_Rangemaster")) then {
            player setObjectTextureGlobal[0, "textures\Uniform\aiad_div_chief_blue.paa"];
        };
        if ((FETCH_CONST(life_coplevel) == 19) && ((uniform player) == "U_Marshal")) then {
            player setObjectTextureGlobal[0, "textures\Uniform\aiad_div_chief_white.paa"];
        };
        if (license_cop_aiad && ((uniform player) == "U_B_CTRG_Soldier_F")) then {
            player setObjectTextureGlobal[0, "textures\Uniform\AIAD_bojowy.paa"];
        };
        if (license_cop_aiad && ((uniform player) == "U_B_CTRG_Soldier_3_F")) then {
            player setObjectTextureGlobal[0, "textures\Uniform\AIAD_bojowy.paa"];
        };
        if (license_cop_cswat && ((uniform player) == "U_B_CTRG_Soldier_F")) then {
            player setObjectTextureGlobal[0, "textures\Uniform\swat_shirt.paa"];
        };
        if (license_cop_cswat && ((uniform player) == "U_B_CTRG_Soldier_3_F")) then {
            player setObjectTextureGlobal[0, "textures\Uniform\swat_shirt.paa"];
        };
        if ! (isObjectHidden(unitbackpack player)) then {
            [(unitbackpack player), true] remoteExecCall["life_fnc_hideplecak", 2];
        };
    };
case independent:
    {
        if (uniform player == "U_B_CombatUniform_mcam" || uniform player == "U_B_CombatUniform_mcam_vest") then {
            player setObjectTextureGlobal[0, "textures\Uniform\medic_uniform.paa"];
        };
        if ((uniform player) isEqualTo "U_C_Scientist") then {
            player setObjectTextureGlobal[0, "textures\Uniform\medic_uniform_raf_scientist.paa"];
        };
        if ((uniform player) isEqualTo "U_C_Paramedic_01_F") then {
            player setObjectTextureGlobal[0, "textures\Uniform\medic_uniform_raf.jpg"];
        };
        if (uniform player isEqualTo "U_Marshal") then {
            player setObjectTextureGlobal[0, "textures\medycy\mundur_kadra_medyczna.jpg"];
        };
        if (uniform player isEqualTo "U_Tank_green_F") then {
            player setObjectTextureGlobal[0, "textures\medycy\mundur_lpr.jpg"];
        };
        if (uniform player isEqualTo "U_Rangemaster") then {
            player setObjectTextureGlobal[0, "textures\medycy\mundur_med_2.jpg"];
        };
        if (uniform player isEqualTo "U_C_Paramedic_01_F") then {
            player setObjectTextureGlobal[0, "textures\medycy\mundur_med_1.jpg"];
        };
        if (uniform player isEqualTo "U_B_survival_uniform") then {
            player setObjectTextureGlobal[0, "textures\medycy\mundur_ratownik_wopr.jpg"];
        };
        if (uniform player == "U_BG_Guerrilla_6_1") then {
            player setObjectTextureGlobal[0, "textures\medycy\polarRATOWNICTWOMEDZYCZNE.jpg"];
        };
        if ((FETCH_CONST(life_mediclevel) == 10) && (uniform player == "U_B_CTRG_Soldier_3_F")) then {
            player setObjectTextureGlobal[0, "textures\medycy\mundur_zca_ordynatora.jpg"];
        };
        if ((FETCH_CONST(life_mediclevel) == 11) && (uniform player == "U_B_CTRG_Soldier_3_F")) then {
            player setObjectTextureGlobal[0, "textures\medycy\mundur_ordynator.jpg"];
        };
        if ((FETCH_CONST(life_mediclevel) >= 4) && (uniform player == "U_C_IDAP_Man_Tee_F")) then {
            player setObjectTextureGlobal[0, "textures\medycy\lekarzSOR.jpg"];
        };
        if ((FETCH_CONST(life_mediclevel) == 3) && (uniform player == "U_C_IDAP_Man_cargo_F")) then {
            player setObjectTextureGlobal[0, "textures\medycy\koszulkaRAT.jpg"];
        };
        if ((FETCH_CONST(life_mediclevel) >= 4) && (uniform player == "U_C_IDAP_Man_cargo_F")) then {
            player setObjectTextureGlobal[0, "textures\medycy\koszulkaLEKARZ.jpg"];
        };
        if ! (isObjectHidden(unitbackpack player)) then {
            [(unitbackpack player), true] remoteExecCall["life_fnc_hideplecak", 2];
        };
    };
    if ((FETCH_CONST(life_mediclevel) == 1) && ((backpack player) == "B_Kitbag_mcamo")) then {
        (unitbackpack player) setObjectTextureGlobal[0, "textures\medycy\plecaki\stazysta.jpg"];
    };
    if ((FETCH_CONST(life_mediclevel) == 2) && ((backpack player) == "B_Kitbag_mcamo")) then {
        (unitbackpack player) setObjectTextureGlobal[0, "textures\medycy\plecaki\pielegniarz.jpg"];
    };
    if ((FETCH_CONST(life_mediclevel) == 3) && ((backpack player) == "B_Kitbag_mcamo")) then {
        (unitbackpack player) setObjectTextureGlobal[0, "textures\medycy\plecaki\ratownik.jpg"];
    };
    if ((FETCH_CONST(life_mediclevel) == 4) && ((backpack player) == "B_Kitbag_mcamo")) then {
        (unitbackpack player) setObjectTextureGlobal[0, "textures\medycy\plecaki\lekarz_rez.jpg"];
    };
    if ((FETCH_CONST(life_mediclevel) == 5) && ((backpack player) == "B_Kitbag_mcamo")) then {
        (unitbackpack player) setObjectTextureGlobal[0, "textures\medycy\plecaki\lekarz.jpg"];
    };
    if ((FETCH_CONST(life_mediclevel) == 6) && ((backpack player) == "B_Kitbag_mcamo")) then {
        (unitbackpack player) setObjectTextureGlobal[0, "textures\medycy\plecaki\doktor.jpg"];
    };
    if ((FETCH_CONST(life_mediclevel) == 7) && ((backpack player) == "B_Kitbag_mcamo")) then {
        (unitbackpack player) setObjectTextureGlobal[0, "textures\medycy\plecaki\doktor_hab.jpg"];
    };
    if ((FETCH_CONST(life_mediclevel) == 8) && ((backpack player) == "B_Kitbag_mcamo")) then {
        (unitbackpack player) setObjectTextureGlobal[0, "textures\medycy\plecaki\zcaord.jpg"];
    };
    if ((FETCH_CONST(life_mediclevel) == 9) && ((backpack player) == "B_Kitbag_mcamo")) then {
        (unitbackpack player) setObjectTextureGlobal[0, "textures\medycy\plecaki\ordynator.jpg"];
    };
};