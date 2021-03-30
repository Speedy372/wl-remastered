player setVariable["inDrink", true, false];
sleep 4;
"chromAbberation"
ppEffectEnable true;
"radialBlur"
ppEffectEnable true;
enableCamShake true;
for "_i"
from 0 to 59 do {
    if (life_drink > 0.12) then {
        "chromAberration"
        ppEffectAdjust[0.16, random 0.16, true];
        "chromAberration"
        ppEffectCommit 1;
        "radialBlur"
        ppEffectAdjust[random 0.05, random 0.05, 0.3, 0.3];
        "radialBlur"
        ppEffectCommit 1;
        addcamShake[random 4, 2, random 4];
        sleep 1;
    } else {
        "chromAberration"
        ppEffectAdjust[random 0.05, random 0.05, true];
        "chromAberration"
        ppEffectCommit 1;
        "radialBlur"
        ppEffectAdjust[random 0.03, random 0.03, 0.4, 0.4];
        "radialBlur"
        ppEffectCommit 1;
        addcamShake[random 3, 1, random 3];
        sleep 1;
    };
}; if (life_drink > 0.40) then {
    titleText[localize "STR_MISC_DrunkBlackOut", "BLACK OUT"];
    player playMoveNow "Incapacitated";
    sleep 15;
    removeUniform player;
    removeVest player;
    player playMoveNow "AinjPpneMstpSnonWrflDnon_rolltoback";
    sleep 10;
    life_drink = 0;
    titleText[localize "STR_MISC_DrunkBlackOut1", "PLAIN"];
    player playMoveNow "amovppnemstpsraswrfldnon";
};
player setVariable["inDrink", false, true];
"chromAberration"
ppEffectAdjust[0, 0, true];
"chromAberration"
ppEffectCommit 5;
"radialBlur"
ppEffectAdjust[0, 0, 0, 0];
"radialBlur"
ppEffectCommit 5;
sleep 6;
"chromAberration"
ppEffectEnable false;
"radialBlur"
ppEffectEnable false;
resetCamShake;