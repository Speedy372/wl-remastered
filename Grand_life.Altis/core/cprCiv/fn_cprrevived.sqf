#include "script_macros.hpp"
private["_dir"];
[life_save_gear] spawn life_fnc_loadDeadGear;
life_corpse setVariable["realname", nil, true];
[life_corpse] remoteExecCall["life_fnc_corpse", RANY];
_dir = getDir life_corpse;
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
player setDir _dir;
player setPosASL(visiblePositionASL life_corpse);
life_corpse setVariable["Revive", nil, TRUE];
life_corpse setVariable["Revive2", nil, TRUE];
life_corpse setVariable["name", nil, TRUE];
[life_corpse] remoteExecCall["life_fnc_corpse", RANY];
deleteVehicle life_corpse;
deadPlayer = false;
life_action_inUse = false;
life_is_alive = true;
player setVariable["Revive", nil, TRUE];
player setVariable["Revive2", nil, TRUE];
player setVariable["name", nil, TRUE];
player setVariable["Reviving", nil, TRUE];
[] call life_fnc_playerSkins;
[] call life_fnc_hudUpdate;
[] call SOCK_fnc_updateRequest;
[] call life_fnc_handleDamage;
life_nlrtimer_stop = true;
if (alive player) then {
    0 = ["DynamicBlur", 400, [10]] spawn {
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