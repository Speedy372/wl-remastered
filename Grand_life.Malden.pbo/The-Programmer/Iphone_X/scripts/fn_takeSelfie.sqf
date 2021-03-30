_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
_soundToPlay = _soundPath + "The-Programmer\Iphone_X\sounds\selfie.ogg";
playSound3D[_soundToPlay, player, false, getPosASL player, 15, 1, 5];
screenshot "";
"colorCorrections"
ppEffectEnable true;
"colorCorrections"
ppEffectAdjust[1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 1], [0.3, 0.3, 0.3, 0.05]];
"colorCorrections"
ppEffectCommit 0;
"colorCorrections"
ppEffectAdjust[1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1], [1, 1, 1, 1]];
"colorCorrections"
ppEffectCommit 0.05;
sleep 0.1337;
"colorCorrections"
ppEffectAdjust[1, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.5, 0.0, 1], [0.3, 0.3, 0.3, 0.05]];
"colorCorrections"
ppEffectCommit 0;
"colorCorrections"
ppEffectAdjust[1, 1, 0, [1, 1, 1, 0.0], [1, 1, 1, 1], [1, 1, 1, 1]];
"colorCorrections"
ppEffectCommit 0.05;
sleep 0.234;
"colorCorrections"
ppEffectEnable false;