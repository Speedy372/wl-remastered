if (!life_settings_revealObjects) exitWith {};
private _objects = nearestObjects[visiblePositionASL player, ["Land_CargoBox_V1_F", "Land_BottlePlastic_V1_F", "Land_TacticalBacon_F", "Land_Can_V3_F", "Land_CanisterFuel_F", "Land_Money_F", "Land_Suitcase_F", "Land_LuggageHeap_02_F", "Land_Defibrillator_F", "CAManBase"], 15]; {
    player reveal _x;
    (group player) reveal _x;
}
forEach _objects;