_unit = _this select 0;
if (_unit isEqualTo player) then {
    player playMove "Acts_AidlPercMstpSlowWrflDnon_pissing";
};
if (player distance _unit > 1000) exitWith {};
sleep 4;
life_pee = true;
_dir = getDir _unit;
_PS1 = '#particlesource'
createVehicleLocal[0, 0, 0];
_PS1 setParticleRandom[0, [0.004, 0.004, 0.004], [0.01, 0.01, 0.01], 30, 0.01, [0, 0, 0, 0], 1, 0.02, 360];
_PS1 setDropInterval 0.001;
_PS1 attachTo[_unit, [0.1, 0.15, -0.10], 'Pelvis'];
for '_i'
from 0 to 1 step 0.01 do {
    _PS1 setParticleParams[['\a3\data_f\ParticleEffects\Universal\Universal.p3d', 16, 12, 8], '', 'BillBoard', 1, 3, [0, 0, 0], [sin(_dir) * _i, cos(_dir) * _i, 0], 0, 1.5, 1, 0.1, [_size, 0.02, 0.1], [[0.8, 0.7, 0.2, 0.1], [0.8, 0.7, 0.2, 0.1], [0.8, 0.7, 0.2, 0]], [1], 1, 0, '', '', _PS1, 0, true, 0.1, [[0.8, 0.7, 0.2, 0]]];
    sleep 0.02;
}; sleep 4;
for '_i'
from 1 to 0.4 step - 0.01 do {
    _PS1 setParticleParams[['\a3\data_f\ParticleEffects\Universal\Universal.p3d', 16, 12, 8], '', 'BillBoard', 1, 3, [0, 0, 0], [sin(_dir) * _i, cos(_dir) * _i, 0], 0, 1.5, 1, 0.1, [_size, 0.02, 0.1], [[0.8, 0.7, 0.2, 0.1], [0.8, 0.7, 0.2, 0.1], [0.8, 0.7, 0.2, 0]], [1], 1, 0, '', '', _PS1, 0, true, 0.1, [[0.8, 0.7, 0.2, 0]]];
    sleep 0.02;
}; for '_i'
from 0.4 to 0.8 step 0.02 do {
    _PS1 setParticleParams[['\a3\data_f\ParticleEffects\Universal\Universal.p3d', 16, 12, 8], '', 'BillBoard', 1, 3, [0, 0, 0], [sin(_dir) * _i, cos(_dir) * _i, 0], 0, 1.5, 1, 0.1, [_size, 0.02, 0.1], [[0.8, 0.7, 0.2, 0.1], [0.8, 0.7, 0.2, 0.1], [0.8, 0.7, 0.2, 0]], [1], 1, 0, '', '', _PS1, 0, true, 0.1, [[0.8, 0.7, 0.2, 0]]];
    sleep 0.02;
}; for '_i'
from 0.8 to 0.2 step - 0.01 do {
    _PS1 setParticleParams[['\a3\data_f\ParticleEffects\Universal\Universal.p3d', 16, 12, 8], '', 'BillBoard', 1, 3, [0, 0, 0], [sin(_dir) * _i, cos(_dir) * _i, 0], 0, 1.5, 1, 0.1, [_size, 0.02, 0.1], [[0.8, 0.7, 0.2, 0.1], [0.8, 0.7, 0.2, 0.1], [0.8, 0.7, 0.2, 0]], [1], 1, 0, '', '', _PS1, 0, true, 0.1, [[0.8, 0.7, 0.2, 0]]];
    sleep 0.02;
}; for '_i'
from 0.2 to 0.3 step 0.02 do {
    _PS1 setParticleParams[['\a3\data_f\ParticleEffects\Universal\Universal.p3d', 16, 12, 8], '', 'BillBoard', 1, 3, [0, 0, 0], [sin(_dir) * _i, cos(_dir) * _i, 0], 0, 1.5, 1, 0.1, [_size, 0.02, 0.1], [[0.8, 0.7, 0.2, 0.1], [0.8, 0.7, 0.2, 0.1], [0.8, 0.7, 0.2, 0]], [1], 1, 0, '', '', _PS1, 0, true, 0.1, [[0.8, 0.7, 0.2, 0]]];
    sleep 0.02;
}; for '_i'
from 0.3 to 0.1 step - 0.01 do {
    _PS1 setParticleParams[['\a3\data_f\ParticleEffects\Universal\Universal.p3d', 16, 12, 8], '', 'BillBoard', 1, 3, [0, 0, 0], [sin(_dir) * _i, cos(_dir) * _i, 0], 0, 1.5, 1, 0.1, [_size, 0.02, 0.1], [[0.8, 0.7, 0.2, 0.1], [0.8, 0.7, 0.2, 0.1], [0.8, 0.7, 0.2, 0]], [1], 1, 0, '', '', _PS1, 0, true, 0.1, [[0.8, 0.7, 0.2, 0]]];
    sleep 0.02;
}; for '_i'
from 0.1 to 0 step - 0.01 do {
    _PS1 setParticleParams[['\a3\data_f\ParticleEffects\Universal\Universal.p3d', 16, 12, 8], '', 'BillBoard', 1, 3, [0, 0, 0], [sin(_dir) * _i, cos(_dir) * _i, 0], 0, 1.5, 1, 0.1, [_size, 0.02, 0.1], [[0.8, 0.7, 0.2, _i], [0.8, 0.7, 0.2, _i], [0.8, 0.7, 0.2, 0]], [1], 1, 0, '', '', _PS1, 0, true, 0.1, [[0.8, 0.7, 0.2, 0]]];
    sleep 0.02;
}; deleteVehicle _PS1;
life_pee = false;