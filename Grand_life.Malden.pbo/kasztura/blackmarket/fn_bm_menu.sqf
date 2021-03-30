#include "script_macros.hpp"
params[["_shopNPC", objNull, [objNull]], "", ""];
_shopType = "wymiana_btc";
if (isNull _shopNPC || {
    _shopType isEqualTo ""
}) exitWith {};
private _shopSide = M_CONFIG(getText, "VirtualShops", _shopType, "side");
life_shop_type = "wymiana_btc";
life_shop_npc = _shopNPC;
private _exit = false;
if ! (_shopSide isEqualTo "") then {
    private _flag =
    switch (playerSide) do {
    case west:
        {
            "cop"
        };
    case independent:
        {
            "med"
        };
    default {
            "civ"
        };
    }; if ! (_flag isEqualTo _shopSide) then {
        _exit = true
    };
};
if (_exit) exitWith {};
createDialog "czorny_rynek_klamek";
[] call life_fnc_bm_update;