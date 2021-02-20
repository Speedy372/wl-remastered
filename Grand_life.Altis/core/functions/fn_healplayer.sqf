if (!isPlayer cursorObject) exitWith {};
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
uiSleep 2;
remoteExec["life_fnc_doHealth", cursorObject];