#include "script_macros.hpp"
private["_container"];
params[["_unit", objNull, [objNull]], ["_container", objNull, [objNull]], ["_secContainer", objNull, [objNull]]];
scopeName "main";
private _list = ["LandVehicle", "Ship", "Air"]; {
    if (isNull _x) then {
        false breakOut "main"
    };
    private _containerType = typeOf _x;
    if (FETCH_CONFIG2(getNumber, "CfgVehicles", _containerType, "isBackpack") isEqualTo 1) exitWith {
        [localize "STR_MISC_Backpack", false] spawn domsg;
        true breakOut "main";
    };
    if (_containerType in ["Box_IND_Grenades_F", "B_supplyCrate_F"]) exitWith {
        private _house = nearestObject[player, "House"];
        if (! (_house in life_vehicles) && {
            _house getVariable["locked", true]
        }) exitWith {
            [localize "STR_House_ContainerDeny", false] spawn domsg;
            true breakOut "main";
        };
    };
    if (_container in [Komenda_kavala, Komenda_Athira] && side player in [civilian, independent]) exitWith {
        ["Nie możesz zaglądać do tej skrzyni", false] spawn domsg;
        true breakOut "main";
    };
    if (KINDOF_ARRAY(_x, _list)) exitWith {
        if (! (_x in life_vehicles) && {
            locked _x isEqualTo 2
        }) exitWith {
            [localize "STR_MISC_VehInventory", false] spawn domsg;
            true breakOut "main";
        };
    };
    if (_x isKindOf "CAManBase" && { ! alive _x
    }) exitWith {
        [localize "STR_NOTF_NoLootingPerson", false] spawn domsg;
        true breakOut "main";
    };
}
count[_container, _secContainer];
[] call life_fnc_playerSkins;