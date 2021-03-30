_stage = param[0, 0, [0]];
switch (_stage) do {
case 1:
    {
        "colorCorrections"
        ppEffectEnable true;
        "colorCorrections"
        ppEffectAdjust[1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.01], [0, 0, 0, 0.0]];
        "colorCorrections"
        ppEffectCommit 0.3;
        uiSleep 3;
        "colorCorrections"
        ppEffectAdjust[1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1], [0, 0, 0, 0.0]];
        "colorCorrections"
        ppEffectCommit 3;
    };
case 2:
    {
        "colorCorrections"
        ppEffectEnable true;
        "colorCorrections"
        ppEffectAdjust[1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.11], [0, 0, 0, 0.0]];
        "colorCorrections"
        ppEffectCommit 0.3;
        uiSleep 2;
        "colorCorrections"
        ppEffectAdjust[1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1], [0, 0, 0, 0.0]];
        "colorCorrections"
        ppEffectCommit 3;
        uiSleep 2;
    };
case 3:
    {
        "colorCorrections"
        ppEffectEnable true;
        "colorCorrections"
        ppEffectAdjust[1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.011], [0, 0, 0, 0.0]];
        "colorCorrections"
        ppEffectCommit 0.3;
        uiSleep 8;
        "colorCorrections"
        ppEffectAdjust[1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1], [0, 0, 0, 0.0]];
        "colorCorrections"
        ppEffectCommit 3;
        uiSleep 2;
    };
case 4:
    {
        "colorCorrections"
        ppEffectEnable true;
        "colorCorrections"
        ppEffectAdjust[0, 0.4, -0.003, [0.8, 0.1, 0, 0.5], [0.1, 0.1, 0, 0.6], [1, 1, 1, 0.5]];
        "colorCorrections"
        ppEffectCommit 0.25;
        player forceWalk true;
        uisleep 0.1;
        "colorCorrections"
        ppEffectAdjust[1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1], [0, 0, 0, 0.0]];
        "colorCorrections"
        ppEffectCommit 0.7;
        player forceWalk false;
    };
case 5:
    {
        "colorCorrections"
        ppEffectEnable true;
        "colorCorrections"
        ppEffectAdjust[0, 0.4, -0.003, [0, 0.45, 0, 0.5], [0.1, 0.1, 0, 0.6], [0, 0, 0, 0.5]];
        "colorCorrections"
        ppEffectCommit 0.35;
        player forceWalk true;
        uisleep 0.15;
        "colorCorrections"
        ppEffectAdjust[1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1], [0, 0, 0, 0.0]];
        "colorCorrections"
        ppEffectCommit 0.7;
        player forceWalk false;
    };
case 6:
    {
        "colorCorrections"
        ppEffectEnable true;
        "colorCorrections"
        ppEffectAdjust[0, 0.4, -0.003, [1, 1, 1, 1], [0.1, 0.1, 0, 0.6], [1, 1, 1, 0.5]];
        "colorCorrections"
        ppEffectCommit 0.45;
        player forceWalk true;
        uisleep 0.15;
        "colorCorrections"
        ppEffectAdjust[1, 1, -0.003, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 1], [0, 0, 0, 0.0]];
        "colorCorrections"
        ppEffectCommit 0.7;
        player forceWalk false;
    };
case 7:
    {
        _colorInv = ppEffectCreate["ColorInversion", 11];
        _colorInv ppEffectEnable true;
        _colorInv ppEffectAdjust[0.1, 0, 0];
        _colorInv ppEffectCommit 2;
        sleep 16;
        ppEffectDestroy _colorInv;
    };
case 8:
    {
        private["_blur"];
        _n = 2;
        _t = 4;
        _blur = ppEffectCreate["DynamicBlur", 10];
        _blur ppEffectEnable true;
        _blur ppEffectAdjust[_n];
        _blur ppEffectCommit _t;
        sleep _t;
        _blur ppEffectAdjust[_n * 0.8];
        _blur ppEffectCommit _t;
        sleep _t;
        _blur ppEffectAdjust[_n * 0.6];
        _blur ppEffectCommit _t;
        sleep _t;
        _blur ppEffectAdjust[_n * 0.4];
        _blur ppEffectCommit _t;
        sleep _t;
        _blur ppEffectAdjust[_n * 0.2];
        _blur ppEffectCommit _t;
        sleep _t;
        ppEffectDestroy _blur;
    };
};