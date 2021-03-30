private["_obj", "_dat", "_cString", "_adString"];
_obj = objNull;
_dat = [];
_adString = "CAN_COLLIDE";
_cString = {
    _obj = (_dat select 0) createVehicleLocal[0, 0, 0];
    if ((_dat select 4) == 0) then {
        _obj enableSimulation false
    };
    if ((_dat select 8) == 0) then {
        _obj allowDamage false
    };
    _obj setdir(_dat select 2);
    if ((_dat select 3) == -100) then {
        _obj setposATL(call compile(_dat select 1));
        if ((_dat select 5) == 0) then {
            _obj setVectorUp[0, 0, 1]
        } else {
            _obj setVectorUp(surfacenormal(getPosATL _obj))
        };
    } else {
        _obj setposworld[((call compile(_dat select 1)) select 0), ((call compile(_dat select 1)) select 1), (_dat select 3)];
        [_obj, ((_dat select 7) select 0), ((_dat select 7) select 1)] call BIS_fnc_setPitchBank;
    };
    if (count(_dat select 6) > 0) then {
        {
            call _x
        }
        foreach(_dat select 6)
    };
    _obj setVariable["garbageOwner", getPlayerUID player, true];
    life_garbageArray pushback _obj;
    _obj addAction["Zbierz śmieci", life_fnc_collectGarbage, "", 0, false, false, "", ''];
};
_dat = ["Land_GarbageBags_F", "[3504.599609,13022.75,0.00502872]", 1.00179e-005, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_01_F", "[3513.214111,12894.553711,0.190763]", 297.76, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_01_F", "[3504.889404,12912.441406,0.161474]", 289.558, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_01_F", "[3545.8396,12891.273438,0.162694]", 311.34, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_01_F", "[3548.57251,12981.457031,0.0108633]", 209.673, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3602.736572,12979.404297,0.136178]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3603.134766,13012.0175781,0.29887]", 87.9058, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3594.0310059,13062.0332031,0.238205]", 227.362, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3592.0744629,13101.958008,0.264308]", 175.327, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3612.58252,13144.211914,0.163145]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3518.231689,13145.443359,0.0428314]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3554.0749512,13109.556641,0.221159]", 254.51, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3554.39917,13186.0791016,0.214271]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3601.629883,13224.361328,0.0830574]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3489.69873,13285.180664,0.239648]", 205.883, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_02_F", "[3428.203369,13245.113281,0.187943]", 228.172, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3439.860352,13231.475586,-0.00422835]", 224.751, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3434.120117,13227.796875,0.253601]", 226.132, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3385.81958,13191.461914,0.278261]", 233.325, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3438.737305,13197.104492,0.105535]", 136.25, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3416.337891,13179.611328,0.138398]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3429.202148,13183.852539,0.00880647]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3444.95874,13179.738281,0.228357]", 315.321, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3465.566406,13180.739258,0.178314]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_02_F", "[3460.76123,13223.583008,0.214889]", 311.791, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3428.758057,13166.46582,0.285605]", 53.7856, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3445.686035,13191.164063,3.78513]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3361.773926,13105.363281,0.155961]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3366.779297,13095.078125,0.0088191]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3488.91626,13107.176758,0.179007]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3483.213867,13087.00195313,0.0148439]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3470.911865,13087.109375,0.0174122]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3472.199707,13041.421875,5.02023]", 336, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_01_F", "[3520.696289,13055.990234,0.134108]", 41.8048, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3532.270752,13043.700195,0.16681]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3466.158447,12982.265625,0.277361]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3473.139893,12994.313477,0.273684]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3423.490234,12983.751953,0.118865]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_01_F", "[3496.279541,12930.853516,0.138666]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_01_F", "[3454.129639,12944.93457,0.192694]", 172.151, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_01_F", "[3407.264893,12936.154297,0.23792]", 219.008, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3383.327393,13002.901367,0.127991]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3403.902588,13071.547852,0.0088191]", 1.00179e-005, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3427.264404,13148.100586,0.0088191]", 1.00179e-005, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3440.535156,13153.767578,0.285605]", 53.7856, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageHeap_03_F", "[3414.0859375,13122.295898,0.285605]", 53.7856, -100, 0, 0, [], [0, 0], 0];
call _cString;
_dat = ["Land_GarbageBags_F", "[3528.481201,13111.333008,0.179007]", 360, -100, 0, 0, [], [0, 0], 0];
call _cString;