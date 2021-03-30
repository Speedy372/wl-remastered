private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {
    scriptDone _handle
};
player addUniform "U_Rangemaster";
player addVest "V_TacVest_blk_POLICE";
player addHeadgear "H_Cap_police";
player addGoggles "G_Aviator";
player addWeapon "hgun_P07_snds_F";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio";
[] call life_fnc_playerSkins;
[] call life_fnc_saveGear;