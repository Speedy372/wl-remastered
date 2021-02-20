hintSilent parseText format["<t size='1.' color='#81B518'>|DP|ScrollMenu|DP| Zostało Wczytane Poprawnie!</t>"];
player addaction["<t color='#2621BA'> > Włącz Menu", "[]spawn fn_gmenu"];
titleText["Cheats created by DonPedroTV <3", "PLAIN"];
fn_gmenu = {
    removeAllActions player;
    player addaction["<t color='#529E10'> ------|DP|ScrollMenu|DP|--------", ""];
    player addaction["<t color='#2534BA'> > Funkcje", "[]spawn fn_funkcje"];
    player addaction["<t color='#2534BA'> > Troll", "[]spawn fn_troll"];
    player addaction["<t color='#2534BA'> > Respienie itemow", "[]spawn fn_respitemow"];
    player addaction["<t color='#2534BA'> > Wyłącz Menu!", "[]spawn fn_Wylacz"];
};
fn_Wylacz = {
    removeAllActions player;
    player addaction["<t color='#529E10'> ------Czy Napewno Chcesz Wyłączyć to Menu?--------", ""];
    player addaction["<t color='#529E10'> Tak!", "removeAllActions player;"];
    player addaction["<t color='#529E10'> Nie!", "[]spawn fn_gmenu"];
};
fn_tryby = {
    removeAllActions player;
    player addaction["<t color='#529E10'> ------|DP|ScrollMenu|DP|--------", ""];
    player addaction["<t color='#2534BA'> > Silent", "[]spawn fn_Silent"];
    player addaction["<t color='#2534BA'> > Silent + ESP", "[]spawn fn_SilentE"];
    player addaction["<t color='#2534BA'> > Wróć", "[]spawn fn_gmenu"];
};
fn_funkcje = {
    removeAllActions player;
    player addaction["<t color='#529E10'> ------|DP|ScrollMenu|DP|--------", ""];
    player addaction["<t color='#2534BA'> > NoRecoil", "player setUnitRecoilCoefficient 0"];
    player addaction["<t color='#2534BA'> > Custom Recoil", "player setUnitRecoilCoefficient 0.3"];
    player addaction["<t color='#2534BA'> > NoWeaponSway", "Player setCustomAimCoef 0.00"];
    player addaction["<t color='#2534BA'> > Wyłącz Trawe", "[]spawn fn_BrakTrawy"];
    player addaction["<t color='#2534BA'> > Dodaj Klucze", "[]spawn fn_DodajKlucze"];
    player addaction["<t color='#2534BA'> > Usuń Wszystkie Efekty", "player allowdamage true; player setUnitRecoilCoefficient 1; Player setCustomAimCoef 1.00;"];
    player addaction["<t color='#2534BA'> > Wróć", "[]spawn fn_gmenu"];
};
fn_troll = {
    removeAllActions player;
    player addaction["<t color='#529E10'> ------|DP|ScrollMenu|DP|--------", ""];
    player addaction["<t color='#2534BA'> > Wysadź", "cursortarget setdamage 1"];
    player addaction["<t color='#2534BA'> > Wyślij do Więzienia!", "[]spawn fn_DoWiezienia"];
    player addaction["<t color='#2534BA'> > Pomaluj", "[]spawn fn_MalowanieCelu"];
    player addaction["<t color='#2534BA'> > Dodaj Matriał", "[]spawn fn_Matrial"];
    player addaction["<t color='#2534BA'> > Wróć", "[]spawn fn_gmenu"];
};
fn_MalowanieCelu = {
    removeAllActions player;
    player addaction["<t color='#529E10'> ------|DP|ScrollMenu|DP|--------", ""];
    player addaction["<t color='#2534BA'> > NoRecoil", "player setUnitRecoilCoefficient 0"];;
    player addAction["<t color=""#00FF00""> > Zielony", {
        cursorTarget setObjectTextureGlobal[0, "#(rgb,8,8,3)color(0,1,0,1)"];
    }];
    player addAction["<t color=""#0000FF""> > Niebieski", {
        cursorTarget setObjectTextureGlobal[0, "#(rgb,8,8,3)color(0,0,1,1)"];
    }];
    player addAction["<t color=""#FFFF00""> > Żółty", {
        cursorTarget setObjectTextureGlobal[0, "#(rgb,8,8,3)color(1,1,0,1)"];
    }];
    player addAction["<t color=""#FF00FF""> > Fioletowy", {
        cursorTarget setObjectTextureGlobal[0, "#(rgb,8,8,3)color(1,0,1,1)"];
    }];
    player addAction["<t color=""#00FFFF""> > JasnoNiebieski", {
        cursorTarget setObjectTextureGlobal[0, "#(rgb,8,8,3)color(0,1,1,1)"];
    }];
    player addAction["<t color=""#000000""> > Czarny", {
        cursorTarget setObjectTextureGlobal[0, "#(rgb,8,8,3)color(0,0,0,0)"];
    }];
    player addAction["<t color=""#FFFFFF""> > Biały", {
        cursorTarget setObjectTextureGlobal[0, "#(rgb,8,8,3)color(1,1,1,1)"];
    }];
    player addaction["<t color='#2534BA'> > Wróć do TrollMenu", "[]spawn fn_troll"];
};
fn_respitemow = {
    removeAllActions player;
    player addaction["<t color='#529E10'> ------|DP|ScrollMenu|DP|--------", ""];
    player addaction["<t color='#2534BA'> > Narzedzia", {
        [true, "toolkit", 2] call life_fnc_handleInv
    }];
    player addaction["<t color='#2534BA'> > zipties", {
        [true, "zipties", 2] call life_fnc_handleInv
    }];
    player addaction["<t color='#2534BA'> > Wróć do Menu", "[]spawn fn_gmenu"];
};
fn_Matrial = {
    removeAllActions player;
    player addaction["<t color='#529E10'> ------|DP|ScrollMenu|DP|--------", ""];
    player addaction["<t color='#2534BA'> > Chrome", "[]spawn fn_rainbow"];
    player addaction["<t color='#2534BA'> > Rainow", "[]spawn fn_chrome"];
    player addaction["<t color='#2534BA'> > Wróć do TrollMenu", "[]spawn fn_troll"];
};
fn_Malowanie = {
    removeAllActions player;
    player addaction["<t color='#529E10'> ------|DP|ScrollMenu|DP|--------", ""];
    player addAction["<t color=""#FF0000""> > Czerwony", {
        player setObjectTextureGlobal[0, "#(rgb,8,8,3)color(1,0,0,1)"];
    }];
    player addAction["<t color=""#00FF00""> > Zielony", {
        player setObjectTextureGlobal[0, "#(rgb,8,8,3)color(0,1,0,1)"];
    }];
    player addAction["<t color=""#0000FF""> > Niebieski", {
        player setObjectTextureGlobal[0, "#(rgb,8,8,3)color(0,0,1,1)"];
    }];
    player addAction["<t color=""#FFFF00""> > Żółty", {
        player setObjectTextureGlobal[0, "#(rgb,8,8,3)color(1,1,0,1)"];
    }];
    player addAction["<t color=""#FF00FF""> > Fioletowy", {
        player setObjectTextureGlobal[0, "#(rgb,8,8,3)color(1,0,1,1)"];
    }];
    player addAction["<t color=""#00FFFF""> > JasnoNiebieski", {
        player setObjectTextureGlobal[0, "#(rgb,8,8,3)color(0,1,1,1)"];
    }];
    player addAction["<t color=""#000000""> > Czarny", {
        player setObjectTextureGlobal[0, "#(rgb,8,8,3)color(0,0,0,0)"];
    }];
    player addAction["<t color=""#FFFFFF""> > Biały", {
        player setObjectTextureGlobal[0, "#(rgb,8,8,3)color(1,1,1,1)"];
    }];
    player addaction["<t color='#2534BA'> > Wróć do TrollMenu", "[]spawn fn_troll"];
};
fn_ESP = {
    removeAllActions player;
    player addaction["<t color='#529E10'> ------|DP|ScrollMenu|DP|--------", ""];
    player addaction["<t color='#2534BA'> > ESP[1] - HFPS", "[]spawn fn_ESP1"];
    player addaction["<t color='#2534BA'> > ESP[2] - LFPS", "[]spawn fn_ESP2"];
    player addaction["<t color='#2534BA'> > Wróć", "[]spawn fn_gmenu"];
};
fn_ESP2 = {
    addMissionEventHandler["Draw3D", {
        {
            if ((isPlayer _x) && ((side _x) == (side player)) && ((player distance _x) < 1000) && (getplayeruid _x != "")) then {
                _pos = getposatl _x;
                _eyepos = ASLtoATL eyepos _x;
                if ((getTerrainHeightASL[_pos select 0, _pos select 1]) < 0) then {
                    _eyepos = eyepos _x;
                    _pos = getposasl _x;
                };
                _1 = _x modelToWorld[-0.5, 0, 0];
                _2 = _x modelToWorld[0.5, 0, 0];
                _3 = _x modelToWorld[-0.5, 0, 0];
                _4 = _x modelToWorld[0.5, 0, 0];
                _1 set[2, _pos select 2];
                _2 set[2, _pos select 2];
                _3 set[2, (_eyepos select 2) + 0.25];
                _4 set[2, (_eyepos select 2) + 0.25];
                _HP = (damage _x - 1) * -100;
                _fontsize = 0.02;
                _eyepos set[2, (_3 select 2) - 0.1];
                drawIcon3D["", [0, 1, 0, 1], _eyepos, 0.1, 0.1, 45, format["%1(%2m) - %3HP", name _x, round(player distance _x), round(_HP)], 1, _fontsize, 'EtelkaNarrowMediumPro'];
                drawLine3D[_1, _2, [0, 1, 0, 1]];
                drawLine3D[_2, _4, [0, 1, 0, 1]];
                drawLine3D[_4, _3, [0, 1, 0, 1]];
                drawLine3D[_3, _1, [0, 1, 0, 1]];
            };
            if ((isPlayer _x) && ((side _x) != (side player)) && ((player distance _x) < 1400) && (getplayeruid _x != "")) then {
                _pos = getposatl _x;
                _eyepos = ASLtoATL eyepos _x;
                _1 = _x modelToWorld[-0.5, 0, 0];
                _2 = _x modelToWorld[0.5, 0, 0];
                _3 = _x modelToWorld[-0.5, 0, 0];
                _4 = _x modelToWorld[0.5, 0, 0];
                _1 set[2, _pos select 2];
                _2 set[2, _pos select 2];
                _3 set[2, (_eyepos select 2) + 0.25];
                _4 set[2, (_eyepos select 2) + 0.25];
                _HP = (damage _x - 1) * -100;
                _fontsize = 0.02;
                _eyepos set[2, (_3 select 2) - 0.1];
                drawIcon3D["", [1, 0, 0, 1], _eyepos, 0.1, 0.1, 45, format["%1(%2m) - %3HP", name _x, round(player distance _x), round(_HP)], 1, _fontsize, 'EtelkaNarrowMediumPro'];
                drawLine3D[_1, _2, [1, 0, 0, 1]];
                drawLine3D[_2, _4, [1, 0, 0, 1]];
                drawLine3D[_4, _3, [1, 0, 0, 1]];
                drawLine3D[_3, _1, [1, 0, 0, 1]];
            };
        }
        forEach allUnits;
    }];
};
fn_BrakTrawy = {
    setTerrainGrid 50;
    hint "Trawa Wyłączona";
    cutText[format["Trawa Wyłączona"], "PLAIN DOWN"];
};
fn_DodajKlucze = {
    life_vehicles set[count life_vehicles, cursorTarget];
    cutText[format["Otrzymałeś Klucze!"], "PLAIN DOWN"];
};
fn_ESP1 = {
    if (isnil("andy_andy_swas")) then {
        andy_andy_swas = 0;
    };
    if (andy_andy_swas == 0) then {
        andy_andy_swas = 1;
        hint "ESP Zostało Włączone!";
    } else {
        andy_andy_swas = 0;
        hint "ESP Zostało wyłączone!";
    };
    if (andy_andy_swas == 1) then {
        onEachFrame {
            _l49 = nearestobjects[player, ["CAManBase"], 1400]; {
                if ((side _x != side player) && (getPlayerUID _x != "") && ((player distance _x) < 1400)) then {
                    drawIcon3D["", [1, 0, 0, 1], [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1], 0.1, 0.1, 18, (format["%2 : %1m", round(player distance _x), name _x]), 1, 0.04, "TahomaB"]
                } else {
                    if ((getPlayerUID _x != "") && ((player distance _x) < 1000)) then {
                        drawIcon3D["", [0, 0.5, 1, 1], [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1], 0.1, 0.1, 18, (format["%2 : %1m", round(player distance _x), name _x]), 1, 0.04, "TahomaB"]
                    };
                };
            }
            foreach playableUnits;
        };
    } else {
        onEachFrame {
            nil
        };
    };
};
fn_Silent = {
    player setUnitRecoilCoefficient 0.3;
    Player setCustomAimCoef 0.00;
    [] spawn fn_BrakTrawy;
};
fn_SilentE = {
    player setUnitRecoilCoefficient 0.3;
    Player setCustomAimCoef 0.00;
    [] spawn fn_BrakTrawy;
    [] spawn fn_ESP1
};
fn_usunposzukiwanie = {
    [[getPlayerUID player], "life_fnc_wantedRemove", false, false];
};
fn_usunposzukiwaniec = {
    _player = cursorTarget;
    [[getPlayerUID _player], "life_fnc_wantedRemove", false, false];
};
fn_DoWiezienia = {
    cursorTarget setPos(getMarkerPos "jail_marker");
};
fn_Zamroz = {
    target = cursortarget;
    _freezeInput = format["if(name player == '%1') then {disableUserInput true;};", target];
    [_freezeInput] call RemExe;
    cutText[format["Zamrożony!"], "PLAIN"];
};
fn_rainbow = {
    _tex1 = 'a3\data_f\rainbow_ca.paa';
    _mat1 = 'A3\characters_f_bootcamp\Data\VR_Soldier_F.rvmat';
    vehicle player setObjectTextureGlobal[0, _tex1];
    vehicle player setObjectTextureGlobal[1, _tex1];
    vehicle player setObjectTextureGlobal[2, _tex1];
    vehicle player setObjectMaterialGlobal[0, _mat1];
    vehicle player setObjectMaterialGlobal[1, _mat1];
    vehicle player setObjectMaterialGlobal[2, _mat1];
};
fn_chrome = {};
fn_teleport = {
    openMap[true, false];
    cutText[format["Kliknij na mapie gdzie chciałbyś się teleportować!"], "PLAIN"];
    onMapSingleClick 'player setpos _pos;openMap[false,false];onMapSingleClick "";false';
};
fn_rotor = {
    cursortarget setHitPointDamage["HitVRotor", 1.0];
};