#define true 1#define false 0
class Life_Settings {
    spyGlass_toggle = false;
    battlEye_friendlyLogging = false;
    player_advancedLog = true;
    player_moneyLog = true;
    player_deathLog = true;
    save_virtualItems = true;
    saved_virtualItems[] = {
        "cprKit",
        "pannic",
        "pickaxe",
        "fuelEmpty",
        "fuelFull",
        "spikeStrip",
        "lockpick",
        "defuseKit",
        "storageSmall",
        "storageBig",
        "redgull",
        "coffee",
        "waterBottle",
        "apple",
        "peach",
        "tbacon",
        "donuts",
        "rabbit",
        "salema",
        "ornate",
        "mackerel",
        "tuna",
        "mullet",
        "catshark",
        "turtle_soup",
        "hen",
        "rooster",
        "sheep",
        "goat",
        "defibrillator",
        "toolkit",
        "piwo",
        "whiskey",
        "wodka",
        "morphine",
        "zipties",
        "blindfold",
        "huntingKit",
        "gpsTracker",
        "syrop",
        "med_mar",
        "trzcina",
        "cukier",
        "papieros",
        "bandaz_1"
    };
    save_playerStats = true;
    save_civilian_weapons = true;
    save_civilian_position = true;
    save_civilian_position_restart = true;
    save_civilian_positionStrict = false;
    save_vehicle_virtualItems = true;
    save_vehicle_items[] = {
        "cprKit",
        "pannic",
        "pickaxe",
        "fuelEmpty",
        "fuelFull",
        "spikeStrip",
        "lockpick",
        "defuseKit",
        "storageSmall",
        "storageBig",
        "redgull",
        "coffee",
        "waterBottle",
        "apple",
        "peach",
        "tbacon",
        "donuts",
        "rabbit",
        "salema",
        "ornate",
        "mackerel",
        "tuna",
        "mullet",
        "catshark",
        "turtle_soup",
        "hen",
        "rooster",
        "sheep",
        "goat",
        "defibrillator",
        "toolkit",
        "piwo",
        "whiskey",
        "wodka",
        "morphine",
        "zipties",
        "blindfold",
        "huntingKit",
        "gpsTracker",
        "syrop",
        "med_mar",
        "trzcina",
        "cukier",
        "papieros",
        "bandaz_1"
    };
    save_vehicle_inventory = true;
    save_vehicle_fuel = true;
    save_vehicle_damage = true;
    save_vehicle_illegal = false;
    global_ATM = true;
    noatm_timer = 10;
    minimum_cops = 6;
    drop_weapons_onDeath = false;
    donor_level = false;
    enable_fatigue = false;
    total_maxWeight = 24;
    respawn_timer = 240;
    news_broadcast_cost = 15000;
    news_broadcast_cooldown = 20;
    news_broadcast_header_length = 60;
    civ_skins = false;
    cop_extendedSkins = false;
    clothing_noTP = false;
    clothing_box = false;
    clothing_masks[] = {
        "H_Shemag_olive",
        "H_Shemag_khk",
        "H_Shemag_tan",
        "H_Shemag_olive_hs",
        "H_ShemagOpen_khk",
        "H_ShemagOpen_tan",
        "G_Balaclava_blk",
        "G_Balaclava_combat",
        "G_Balaclava_lowprofile",
        "G_Balaclava_oli",
        "G_Bandanna_aviator",
        "G_Bandanna_beast",
        "G_Bandanna_blk",
        "G_Bandanna_khk",
        "G_Bandanna_oli",
        "G_Bandanna_shades",
        "G_Bandanna_sport",
        "G_Bandanna_tan",
        "U_O_GhillieSuit",
        "U_I_GhillieSuit",
        "U_B_GhillieSuit",
        "H_RacingHelmet_1_black_F",
        "H_RacingHelmet_1_red_F",
        "H_RacingHelmet_1_white_F",
        "H_RacingHelmet_1_blue_F",
        "H_RacingHelmet_1_yellow_F",
        "H_RacingHelmet_1_green_F",
        "H_RacingHelmet_1_F",
        "H_RacingHelmet_2_F",
        "H_RacingHelmet_3_F",
        "H_RacingHelmet_4_F",
        "H_Bandanna_camo",
        "H_Bandanna_mcamo",
        "G_Bandanna_tan",
        "G_Bandanna_sport",
        "G_Bandanna_shades",
        "G_Bandanna_oli",
        "G_Bandanna_khk",
        "G_Bandanna_aviator",
        "G_Balaclava_oli",
        "G_Balaclava_TI_blk_F",
        "G_Balaclava_TI_G_blk_F",
        "G_RegulatorMask_F"
    };
    escapeMenu_timer = 10;
    escapeMenu_displayExtras = true;
    escapeMenu_displayText = "Dzięki za grę!";
    pump_service = true;
    fuel_cost = 4;
    service_chopper = 1000;
    fuelCan_refuel = 500;
    gang_price = 75000;
    gang_upgradeBase = 50000;
    gang_upgradeMultiplier = 2.5;
    house_limit = 5;
    houseGarage_buyPrice = 200000;
    houseGarage_sellPrice = 0;
    animaltypes_fish[] = {
        "Salema_F",
        "Ornate_random_F",
        "Mackerel_F",
        "Tuna_F",
        "Mullet_F",
        "CatShark_F",
        "Turtle_F"
    };
    animaltypes_hunting[] = {
        "Sheep_random_F",
        "Goat_random_F",
        "Hen_random_F",
        "Cock_random_F",
        "Rabbit_F"
    };
    restrict_medic_weapons = false;
    restrict_clothingPickup = false;
    restrict_weaponPickup = false;
    restricted_uniforms[] = {
        "U_Rangemaster",
        "U_B_CombatUniform_mcam_tshirt",
        "U_B_CombatUniform_mcam_worn",
        "U_B_survival_uniform"
    };
    restricted_weapons[] = {
        "hgun_P07_snds_F",
        "arifle_MX_F",
        "arifle_MXC_F"
    };
    jail_seize_vItems[] = {
        "spikeStrip",
        "lockpick",
        "goldbar",
        "blastingcharge",
        "boltcutter",
        "defusekit",
        "heroin_unprocessed",
        "heroin_processed",
        "cannabis",
        "marijuana",
        "cocaine_unprocessed",
        "cocaine_processed",
        "turtle_raw",
        "zipties",
        "blindfold"
    };
    jail_seize_inventory = false;
    sendtoJail_locations[] = {
        "Correctional_Facility"
    };
    jail_forceWalk = false;
    revive_cops = false;
    revive_civ = false;
    revive_east = false;
    revive_fee = 20000;
    hospital_heal_fee = 10000;
    bank_cop = 100000;
    bank_civ = 50000;
    bank_med = 100000;
    paycheck_cop = 3750;
    paycheck_civ = 1750;
    paycheck_med = 4000;
    paycheck_period = 10;
    bank_transferTax = .05;
    delivery_points[] = {
        "dp_1",
        "dp_2",
        "dp_3",
        "dp_4",
        "dp_5",
        "dp_6",
        "dp_7",
        "dp_8",
        "dp_9",
        "dp_10",
        "dp_11",
        "dp_12",
        "dp_13",
        "dp_14",
        "dp_15",
        "dp_15",
        "dp_16",
        "dp_17",
        "dp_18",
        "dp_19",
        "dp_20"
    };
    fuelTank_winMultiplier = .2;
    seize_exempt[] = {
        "Binocular",
        "ItemWatch",
        "ItemCompass",
        "ItemGPS",
        "ItemMap",
        "NVGoggles",
        "FirstAidKit",
        "ToolKit",
        "Chemlight_red",
        "Chemlight_yellow",
        "Chemlight_green",
        "Chemlight_blue",
        "optic_ACO_grn_smg"
    };
    seize_uniform[] = {
        "U_Rangemaster"
    };
    seize_vest[] = {
        "V_TacVest_blk_POLICE"
    };
    seize_headgear[] = {
        "H_Cap_police"
    };
    seize_minimum_rank = 1;
    chopShop_vehicles[] = {
        "Car",
        "Air"
    };
    vehicle_infiniteRepair[] = {
        true,
        true,
        true,
        true
    };
    vehicleShop_rentalOnly[] = {
        "B_Boat_Armed_01_minigun_F"
    };
    vehicleShop_3D = true;
    vehicle_purchase_multiplier_CIVILIAN = 1;
    vehicle_purchase_multiplier_COP = .35;
    vehicle_purchase_multiplier_MEDIC = .35;
    vehicle_purchase_multiplier_OPFOR = -1;
    vehicle_rental_multiplier_CIVILIAN = .80;
    vehicle_rental_multiplier_COP = .5;
    vehicle_rental_multiplier_MEDIC = .80;
    vehicle_rental_multiplier_OPFOR = -1;
    vehicle_sell_multiplier_CIVILIAN = .30;
    vehicle_sell_multiplier_COP = .5;
    vehicle_sell_multiplier_MEDIC = .30;
    vehicle_sell_multiplier_OPFOR = -1;
    vehicle_chopShop_multiplier = .25;
    vehicle_storage_fee_multiplier = .01;
    vehicle_cop_impound_multiplier = .1;
    disableCommanderView = true;
    crimes[] = {
        {
            "STR_Crime_piesi",
            "1",
            "1"
        },
        {
            "STR_Crime_100",
            "1000",
            "100"
        },
        {
            "STR_Crime_101",
            "1300",
            "101"
        },
        {
            "STR_Crime_102",
            "2000",
            "102"
        },
        {
            "STR_Crime_103",
            "600",
            "103"
        },
        {
            "STR_Crime_spacer",
            "1",
            "9"
        },
        {
            "STR_Crime_drogowka",
            "1",
            "2"
        },
        {
            "STR_Crime_200",
            "1000",
            "200"
        },
        {
            "STR_Crime_201",
            "2000",
            "201"
        },
        {
            "STR_Crime_202",
            "1600",
            "202"
        },
        {
            "STR_Crime_203",
            "5000",
            "203"
        },
        {
            "STR_Crime_204",
            "4000",
            "204"
        },
        {
            "STR_Crime_205",
            "10000",
            "205"
        },
        {
            "STR_Crime_206",
            "10000",
            "206"
        },
        {
            "STR_Crime_207",
            "75000",
            "207"
        },
        {
            "STR_Crime_208",
            "10000",
            "208"
        },
        {
            "STR_Crime_209",
            "15000",
            "209"
        },
        {
            "STR_Crime_210",
            "40000",
            "187V"
        },
        {
            "STR_Crime_211",
            "30000",
            "218"
        },
        {
            "STR_Crime_212",
            "20000",
            "212"
        },
        {
            "STR_Crime_213",
            "8000",
            "213"
        },
        {
            "STR_Crime_214",
            "50000",
            "214"
        },
        {
            "STR_Crime_216",
            "50000",
            "216"
        },
        {
            "STR_Crime_217",
            "40000",
            "217"
        },
        {
            "STR_Crime_spacer",
            "1",
            "8"
        },
        {
            "STR_Crime_bron",
            "1",
            "3"
        },
        {
            "STR_Crime_300",
            "10000",
            "300"
        },
        {
            "STR_Crime_301",
            "10000",
            "301"
        },
        {
            "STR_Crime_302",
            "15000",
            "302"
        },
        {
            "STR_Crime_303",
            "20000",
            "303"
        },
        {
            "STR_Crime_304",
            "40000",
            "304"
        },
        {
            "STR_Crime_305",
            "45000",
            "305"
        },
        {
            "STR_Crime_306",
            "75000",
            "187"
        },
        {
            "STR_Crime_307",
            "80000",
            "307"
        },
        {
            "STR_Crime_308",
            "1000",
            "308"
        },
        {
            "STR_Crime_309",
            "10000",
            "309"
        },
        {
            "STR_Crime_310",
            "30000",
            "211"
        },
        {
            "STR_Crime_311",
            "25000",
            "311"
        },
        {
            "STR_Crime_312",
            "60000",
            "312"
        },
        {
            "STR_Crime_313",
            "75000",
            "313"
        },
        {
            "STR_Crime_314",
            "125000",
            "314"
        },
        {
            "STR_Crime_315",
            "250000",
            "315"
        },
        {
            "STR_Crime_316",
            "10000",
            "316"
        },
        {
            "STR_Crime_spacer",
            "1",
            "7"
        },
        {
            "STR_Crime_kradziez",
            "1",
            "4"
        },
        {
            "STR_Crime_400",
            "16000",
            "487"
        },
        {
            "STR_Crime_401",
            "6000",
            "215"
        },
        {
            "STR_Crime_404",
            "20000",
            "404"
        },
        {
            "STR_Crime_405",
            "32000",
            "459"
        },
        {
            "STR_Crime_406",
            "125000",
            "901"
        },
        {
            "STR_Crime_902",
            "100000",
            "902"
        },
        {
            "STR_Crime_407",
            "50000",
            "407"
        },
        {
            "STR_Crime_408",
            "75000",
            "408"
        },
        {
            "STR_Crime_spacer",
            "1",
            "6"
        },
        {
            "STR_Crime_pozostale",
            "1",
            "5"
        },
        {
            "STR_Crime_500",
            "20000",
            "500"
        },
        {
            "STR_Crime_501",
            "5000",
            "501"
        },
        {
            "STR_Crime_502",
            "7500",
            "502"
        },
        {
            "STR_Crime_503",
            "10000",
            "503"
        },
        {
            "STR_Crime_504",
            "4000",
            "504"
        },
        {
            "STR_Crime_505",
            "4000",
            "505"
        },
        {
            "STR_Crime_506",
            "125000",
            "506"
        },
        {
            "STR_Crime_507",
            "100000",
            "507"
        },
        {
            "STR_Crime_508",
            "40000",
            "481"
        },
        {
            "STR_Crime_509",
            "60000",
            "483"
        },
        {
            "STR_Crime_510",
            "30000",
            "482"
        },
        {
            "STR_Crime_511",
            "40000",
            "511"
        },
        {
            "STR_Crime_512",
            "12000",
            "390"
        },
        {
            "STR_Crime_513",
            "8000",
            "513"
        },
        {
            "STR_Crime_514",
            "10000",
            "514"
        },
        {
            "STR_Crime_515",
            "4000",
            "515"
        },
        {
            "STR_Crime_516",
            "20000",
            "516"
        },
        {
            "STR_Crime_517",
            "50000",
            "517"
        }
    };
    framework_version = "5.0.0";
    vehicle_insurance_multiplier_CIVILIAN = .5;
    vehicle_insurance_multiplier_COP = .3;
    vehicle_insurance_multiplier_MEDIC = .3;
    vehicle_insurance_multiplier_OPFOR = -1;
};
class Pedro_config {
    cena_kasyno = 15000;
    cena_dziwka = 5000;
};
class Toxic_Bus_Config {
    payment = CASH;
    bus_3d = true;
    class Civilian {
        multipler = 0.1;
        stops[] = {
            {
                "LA TRINITE",
                "bus_la_trinite"
            },
            {
                "LE PORT",
                "bus_le_port"
            },
            {
                "LA PESSAGNE",
                "bus_la_pessagne"
            },
            {
                "LOTNISKO",
                "bus_lotnisko"
            }
        };
    };
    class Cop {
        multipler = 0.05;
        stops[] = {
            {
                "KOMENDA GŁÓWNA",
                "cop_komenda"
            },
            {
                "POSTERUNEK LA TRINITE",
                "cop_la_trinite"
            },
            {
                "POSTERUNEK LE PORT",
                "cop_le_port"
            },
            {
                "POSTERUNEK LA PESSAGNE",
                "cop_la_pessagne"
            },
            {
                "BAZA LOTNICZA",
                "cop_lotnisko"
            }
        };
    };
    class Medic {
        multipler = 0.05;
        stops[] = {
            {
                "SZPITAL",
                "bus_kavalaMed"
            },
            {
                "PRZYCHODNIA LA TRINITE",
                "bus_AthiratMed"
            },
            {
                "PRZYCHODNIA LE PORT",
                "bus_pygrosMed"
            }
        };
    };
};#include "config\Config_Clothing.hpp"#include "config\Config_Licenses.hpp"#include "config\Config_Vehicles.hpp"#include "config\Config_vItems.hpp"#include "config\Config_Weapons.hpp"#include "config\Config_Gather.hpp"#include "config\Config_SpawnPoints.hpp"#include "config\Config_Process.hpp"#include "config\Config_Housing.hpp"#include "config\Config_Garages.hpp"#include "config\Config_Wiki.hpp"#include "config\Config_Kasztura.hpp"#include "config\wlkr\WLKR_Controls.hpp"#include "config\wlkr\WLKR_Store.hpp"#include "config\wlkr\WLKR_Clothing.hpp"#include "config\wlkr\WLKR_Panel.hpp"