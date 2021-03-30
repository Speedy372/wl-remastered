#define LIFE_SETTINGS(TYPE, SETTING) TYPE(missionConfigFile >> "Life_Settings" >> SETTING)
if (LIFE_SETTINGS(getNumber, "player_deathLog") isEqualTo 0) exitWith {};
_this select 0 addMPEventHandler["MPKilled", {
    _this call fn_whoDoneIt
}];