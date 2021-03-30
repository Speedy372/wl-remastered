#include "script_macros.hpp"
private["_itemArray", "_handle"];
[] call life_fnc_deleteGarbage;
player setVariable["inJob", false, true];
player setPos[3640.49, 13116, 0.00144005];
_itemArray = life_gearPrisoner;
waitUntil { ! (isNull(findDisplay 46))
};
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {
    scriptDone _handle
};
if (EQUAL(count _itemArray, 0)) exitWith {
    switch (playerSide) do {
    case west:
        {
            [] call life_fnc_copLoadout;
        };
    case civilian:
        {
            [] call life_fnc_civLoadout;
        };
    case independent:
        {
            [] call life_fnc_medicLoadout;
        };
    };
};
_itemArray params["_uniform", "_vest", "_backpack", "_goggles", "_headgear", ["_items", []], "_prim", "_seco", ["_uItems", []], ["_uMags", []], ["_bItems", []], ["_bMags", []], ["_vItems", []], ["_vMags", []], ["_pItems", []], ["_hItems", []], ["_yItems", []]];
if (! (EQUAL(_goggles, ""))) then {
    _handle = [_goggles, true, false, false, false] spawn life_fnc_handleItem;
    waitUntil {
        scriptDone _handle
    };
};
if (! (EQUAL(_headgear, ""))) then {
    _handle = [_headgear, true, false, false, false] spawn life_fnc_handleItem;
    waitUntil {
        scriptDone _handle
    };
};
if (! (EQUAL(_uniform, ""))) then {
    _handle = [_uniform, true, false, false, false] spawn life_fnc_handleItem;
    waitUntil {
        scriptDone _handle
    };
};
if (! (EQUAL(_vest, ""))) then {
    _handle = [_vest, true, false, false, false] spawn life_fnc_handleItem;
    waitUntil {
        scriptDone _handle
    };
};
if (! (EQUAL(_backpack, ""))) then {
    _handle = [_backpack, true, false, false, false] spawn life_fnc_handleItem;
    waitUntil {
        scriptDone _handle
    };
}; {
    _handle = [_x, true, false, false, false] spawn life_fnc_handleItem;
    waitUntil {
        scriptDone _handle
    };
}
forEach _items; {
    player addItemToUniform _x;
}
forEach(_uItems); {
    (uniformContainer player) addItemCargoGlobal[_x, 1];
}
forEach(_uMags); {
    player addItemToVest _x;
}
forEach(_vItems); {
    (vestContainer player) addItemCargoGlobal[_x, 1];
}
forEach(_vMags); {
    player addItemToBackpack _x;
}
forEach(_bItems); {
    (backpackContainer player) addItemCargoGlobal[_x, 1];
}
forEach(_bMags);
life_maxWeight = 100;
life_maxWeight = 24;
if (! (EQUAL(_prim, ""))) then {
    _handle = [_prim, true, false, false, false] spawn life_fnc_handleItem;
    waitUntil {
        scriptDone _handle
    };
};
if (! (EQUAL(_seco, ""))) then {
    _handle = [_seco, true, false, false, false] spawn life_fnc_handleItem;
    waitUntil {
        scriptDone _handle
    };
}; {
    if (! (EQUAL(_x, ""))) then {
        player addPrimaryWeaponItem _x;
    };
}
forEach(_pItems); {
    if (! (EQUAL(_x, ""))) then {
        player addHandgunItem _x;
    };
}
forEach(_hItems);
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemRadio";
player assignItem "ItemRadio";
[] call life_fnc_playerSkins;