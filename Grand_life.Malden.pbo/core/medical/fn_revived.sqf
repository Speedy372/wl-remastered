#include "script_macros.hpp"
private["_medic", "_dir", "_reviveCost"];
_medic = param[0, "Unknown Medic", [""]];
_reviveCost = LIFE_SETTINGS(getNumber, "revive_fee");
[life_save_gear] spawn life_fnc_loadDeadGear;
hint format[localize "STR_Medic_RevivePay", _medic, [_reviveCost] call life_fnc_numberText];
closeDialog 0;
life_deathCamera cameraEffect["TERMINATE", "BACK"];
camDestroy life_deathCamera;
"ColorCorrections"
ppEffectEnable false;
"ColorCorrections"
ppEffectAdjust[1, 0.4, 0, [0, 0, 0, 0], [1, 1, 1, 0], [1, 1, 1, 1]];
"ColorCorrections"
ppEffectCommit 2;
"dynamicBlur"
ppEffectEnable false;
"dynamicBlur"
ppEffectAdjust[10];
"dynamicBlur"
ppEffectCommit 2;
if (BANK > _reviveCost) then {
    BANK = BANK - _reviveCost;
} else {
    BANK = 0;
};
player setDir(getDir life_corpse);
player setPosASL(visiblePositionASL life_corpse);
life_corpse setVariable["realname", nil, true];
life_corpse setVariable["Revive", nil, true];
life_corpse setVariable["Revive2", nil, true];
life_corpse setVariable["name", nil, true];
[life_corpse] remoteExecCall["life_fnc_corpse", RANY];
deleteVehicle life_corpse;
deadPlayer = false;
life_action_inUse = false;
life_is_alive = true;
player setVariable["Revive", nil, true];
player setVariable["Revive2", nil, true];
player setVariable["name", nil, true];
player setVariable["Reviving", nil, true];
[0, "STR_NHS_PlayerRevived", true, [profileName]] remoteExecCall["life_fnc_broadcast", RCLIENT];
[] call life_fnc_playerSkins;
[] call life_fnc_hudUpdate;
[] call SOCK_fnc_updateRequest;
life_nlrtimer_stop = true;
if (alive player) then {
    0 = ["DynamicBlur", 400, [3]] spawn {
        params["_name", "_priority", "_effect", "_handle"];
        while {
            _handle = ppEffectCreate[_name, _priority];
            _handle < 0
        }
        do {
            _priority = _priority + 1;
        }; _handle ppEffectEnable true;
        _handle ppEffectAdjust _effect;
        _handle ppEffectCommit 1;
        waitUntil {
            ppEffectCommitted _handle
        };
        [5] spawn life_fnc_hudeffects;
        ["Boli mnie głowa, powinno wkrótce przestać ...", false] spawn domsg;
        uiSleep 30;
        _handle ppEffectEnable false;
        ppEffectDestroy _handle;
        ["Zaczynam czuć sie lepiej.", false] spawn domsg;
    };
};
player switchmove "AinjPpneMstpSnonWnonDnon";
player setDamage 0.8;
sleep 10;
player switchmove "";