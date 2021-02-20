private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {
    scriptDone _handle
};
_clothings = ["U_C_Poloshirt_stripped"];
player addUniform(selectRandom _clothings);
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player addItem "ItemRadio";
player assignItem "ItemRadio";
[] call life_fnc_playerSkins;
[] call life_fnc_saveGear;