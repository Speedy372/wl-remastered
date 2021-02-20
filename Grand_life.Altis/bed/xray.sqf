if (playerside != independent) exitWith {
    hint "Nie jestes Doktorem!"
};
if (vehicle player != player) exitWith {};
[] spawn {
    sleep 3;
    [player, "xray"] remoteExec["life_fnc_say3D", 0];
    sleep 30;
    _xrayimg = ["textures\xrays\xray.paa", "textures\xrays\xray1.paa", "textures\xrays\xray2.paa", "textures\xrays\xray3.paa", "textures\xrays\xray4.paa", "textures\xrays\xray5.paa", "textures\xrays\xray6.paa", "textures\xrays\xray7.paa", "textures\xrays\xray8.paa", "textures\xrays\xray9.paa"];
    xraymonitor setObjectTextureGlobal[0, selectRandom _xrayimg];
    sleep 120;
    xraymonitor setObjectTextureGlobal[0, "textures\xrays\xrayblank.paa"];
};