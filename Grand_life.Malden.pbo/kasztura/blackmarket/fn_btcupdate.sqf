if (gl_money_btc == kasztura_old_btc) exitWith {};
[gl_money_btc, (getPlayerUID player)] remoteExecCall["life_fnc_btc_update", 2];
kasztura_old_btc = gl_money_btc;