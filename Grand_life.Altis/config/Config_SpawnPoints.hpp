class CfgSpawnPoints {
    class Altis {
        class Civilian {
            class Kavala {
                displayName = "Kavala";
                spawnMarker = "Kozak_Kavala_civ_resp";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class Athira {
                displayName = "Athira";
                spawnMarker = "civ_spawn_3";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class Pyrgos {
                displayName = "Pyrgos";
                spawnMarker = "civ_spawn_pyrgos";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class Sofia {
                displayName = "Sofia";
                spawnMarker = "civ_spawn_4";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class RebelE {
                displayName = "Miasto rebeliantów";
                spawnMarker = "Rebelop_2";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_rebel";
            };
            class Donatorka {
                displayName = "Donatorka";
                spawnMarker = "spawn_donator";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_donatorgun";
            };
        };
        class Cop {
            class Kavala {
                displayName = "Komenda Główna Policji";
                spawnMarker = "cop_spawn_kav";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class Athira {
                displayName = "Posterunek - Athira";
                spawnMarker = "cop_spawn_ath";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class Pyrgos {
                displayName = "Posterunek - Pyrgos";
                spawnMarker = "cop_spawn_pyr";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class Air {
                displayName = "Baza lotnicza - Athira";
                spawnMarker = "cop_spawn_air";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class Sofia {
                displayName = "Posterunek - Sofia";
                spawnMarker = "cop_spawn_sof";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
            class PunktKontrolny {
                displayName = "Punkt kontrolny";
                spawnMarker = "cop_spawn_pk_kav";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
        };
        class Medic {
            class Kavala {
                displayName = "Szpital - Kavala";
                spawnMarker = "medic_spawn_1";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };
            class Athira {
                displayName = "Szpital - Athira";
                spawnMarker = "medic_spawn_2";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };
            class LPR {
                displayName = "Baza LPR - Athira";
                spawnMarker = "medic_spawn_LPR";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "license_med_LPR";
            };
            class Pyrgos {
                displayName = "Przychodnia - Pyrgos";
                spawnMarker = "medic_spawn_3";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };
            class Sofia {
                displayName = "Przychodnia - Sofia";
                spawnMarker = "medic_spawn_4";
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