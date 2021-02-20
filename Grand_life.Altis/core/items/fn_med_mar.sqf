private["_first", "_final"];
closeDialog 0;
PP_colorC = ppEffectCreate["ColorCorrections", 1500];
PP_colorC ppEffectEnable true;
for "_i"
from 0 to 6 step 1 do {
    PP_colorC ppEffectAdjust[0.96, 1, 0.2, [0.3, 0.77, -0.33, 0.38], [1, 1, 1, 1], [0.33, 0.33, 0.33, 0], [0.63, 0.87, 0.43, 0, 0, 0.51, 5]];
    PP_colorC ppEffectCommit 0.25;
    _first = getDammage player;
    _final = _first - 0.05;
    player setDamage _final;
    sleep 4;
}; hint "Ten lizak jakiś skoksowany był!";
PP_colorC ppEffectAdjust[1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 1], [0.33, 0.33, 0.33, 0], [0, 0, 0.43, 0, 0, 0.51, 5]];
PP_colorC ppEffectCommit 0.25;
sleep 1;
PP_colorC ppEffectEnable false;
ppEffectDestroy PP_colorC;