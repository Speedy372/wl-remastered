class CfgSpawnPoints {
    class Malden {
        class Civilian {
            class LT {
                displayName = "LA TRINITE";
                spawnMarker = "spawn_la_trinite";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class LPort {
                displayName = "LE PORT";
                spawnMarker = "spawn_le_port";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class LP {
                displayName = "LA PESSAGNE";
                spawnMarker = "spawn_la_pessagne";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class RebelE {
                displayName = "KRYJÓWKA REBELIANTÓW";
                spawnMarker = "Rebelop_1";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_rebel";
            };
        };
        class Cop {
            class Kavala {
                displayName = "KOMENDA GŁÓWNA";
                spawnMarker = "cop_komenda";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class Athira {
                displayName = "LE PORT";
                spawnMarker = "cop_le_port";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class Pyrgos {
                displayName = "LA PESSAGNE";
                spawnMarker = "cop_la_pessagne";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
        };
        class Medic {
            class Kavala {
                displayName = "SZPITAL";
                spawnMarker = "med_szpital";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };
            class Athira {
                displayName = "LA TRINITE";
                spawnMarker = "med_la_trinite";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };
            class Pyrgos {
                displayName = "LE PORT";
                spawnMarker = "med_le_port";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };
        };
    };
    class Tanoa {
        class Civilian {
            class Georgetown {
                displayName = "Georgetown";
                spawnMarker = "civ_spawn_1";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "!license_civ_rebel";
            };
            class Balavu {
                displayName = "Balavu";
                spawnMarker = "civ_spawn_3";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class Tuvanaka {
                displayName = "Tuvanaka";
                spawnMarker = "civ_spawn_2";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class Lijnhaven {
                displayName = "Lijnhaven";
                spawnMarker = "civ_spawn_4";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class RebelS {
                displayName = "Rebelka Północna";
                spawnMarker = "Rebelop_1";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_rebel";
            };
            class RebelNE {
                displayName = "Rebelka Wschodnia";
                spawnMarker = "Rebelop_2";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_rebel";
            };
        };
        class Cop {
            class NAirport {
                displayName = $STR_SP_Cop_Air_N;
                spawnMarker = "cop_spawn_1";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class SWAirport {
                displayName = $STR_SP_Cop_Air_SW;
                spawnMarker = "cop_spawn_3";
                icon = "\a3\ui_f\data\map\MapControl\fuelstation_ca.paa";
                conditions = "";
            };
            class GeorgetownHQ {
                displayName = "Georgetown HQ";
                spawnMarker = "cop_spawn_2";
                icon = "\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa";
                conditions = "";
            };
            class Air {
                displayName = $STR_MAR_Police_Air_HQ;
                spawnMarker = "cop_spawn_4";
                icon = "\a3\ui_f\data\map\Markers\NATO\b_air.paa";
                conditions = "call life_coplevel >= 2 && {license_cop_cAir}";
            };
            class HW {
                displayName = $STR_MAR_Highway_Patrol;
                spawnMarker = "cop_spawn_5";
                icon = "\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa";
                conditions = "call life_coplevel >= 3";
            };
        };
        class Medic {
            class SEHospital {
                displayName = $STR_SP_EMS_SE;
                spawnMarker = "medic_spawn_1";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };
            class TanoukaHospital {
                displayName = $STR_SP_EMS_Tan;
                spawnMarker = "medic_spawn_2";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };
            class NEAirportHospital {
                displayName = $STR_SP_EMS_NEair;
                spawnMarker = "medic_spawn_3";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };
        };
    };
};