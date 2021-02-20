#include "script_macros.hpp"
private _altisArray = ["Land_i_Shop_01_V1_F", "Land_i_Shop_01_V2_F", "Land_i_Shop_01_V3_F", "Land_i_Shop_02_V1_F", "Land_i_Shop_02_V2_F", "Land_i_Shop_02_V3_F"];
private _tanoaArray = ["Land_House_Small_01_F"];
private _spawnBuildings = [[["Altis", _altisArray], ["Tanoa", _tanoaArray]]] call TON_fnc_terrainSort;
waitUntil { ! (isNull(findDisplay 46))
};
if (life_is_alive && !life_is_arrested) then {
    player setVehiclePosition[life_civ_position, [], 0, "CAN_COLLIDE"];
} else {
    if (!life_is_alive && !life_is_arrested) then {
        if (LIFE_SETTINGS(getNumber, "save_civilian_positionStrict") isEqualTo 1) then {
            _handle = [] spawn life_fnc_civLoadout;
            waitUntil {
                scriptDone _handle
            };
            CASH = 0;
            [0] call SOCK_fnc_updatePartial;
        };
        waitUntil {
            player getVariable["gang_init_done", false]
        };
        [] call cat_spawn_fnc_spawnMenu;
        waitUntil { ! isNull(findDisplay 38500)
        };
        waitUntil {
            isNull(findDisplay 38500)
        };
    } else {
        if (life_is_arrested) then {
            life_is_arrested = false;
            [player, true] spawn life_fnc_jail;
        };
    };
};
if ((str(player) in ["civ_1", "civ_2", "civ_3", "civ_4", "civ_5"])) then {
    if (FETCH_CONST(life_donator) == 0) then {
        ["NotDonator", false, true] call BIS_fnc_endMission;
        sleep 35;
    };
};
player setVariable["vip", (FETCH_CONST(life_donator)), true];
life_is_alive = true;
[] call life_fnc_initPayChecks;
[] call life_fnc_jebacinsygnie