#include "script_macros.hpp"
if (!life_settings_tagson) exitWith {};
private["_ui", "_units", "_masks", "_uid"];#define iconID 78000#define scale 0.8
_uid = getPlayerUID player;
if (visibleMap || { ! alive player
} || {
    dialog
}) exitWith {
    500 cutText["", "PLAIN"];
};
_ui = uiNamespace getVariable["Life_HUD_nameTags", displayNull];
if (isNull _ui) then {
    500 cutRsc["Life_HUD_nameTags", "PLAIN"];
    _ui = uiNamespace getVariable["Life_HUD_nameTags", displayNull];
};
_units = nearestObjects[(visiblePosition player), ["CAManBase", "Land_Pallet_MilBoxes_F", "Land_Sink_F", "Land_InfoStand_V1_F", "Land_BusStop_01_sign_F"], 50];
_units = _units - [player];
if (!isNull _ui) then {
    {
        _idc = _ui displayCtrl _x;
        _idc ctrlShow false;
    }
    forEach life_nametags;
};
life_nametags = [];
_masks = LIFE_SETTINGS(getArray, "clothing_masks");
private _index = -1; {
    private "_text";
    _idc = _ui displayCtrl(iconID + _forEachIndex);
    if (! (lineIntersects[eyePos player, eyePos _x, player, _x]) && alive _x && { ! isNil {
            _x getVariable "realname"
        }
    }) then {
        _pos =
        switch (typeOf _x) do {
        case "Land_Pallet_MilBoxes_F":
            {
                [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]
            }; case "Land_Sink_F": {
                [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]
            };
        case "Land_InfoStand_V1_F":
            {
                [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]
            };
        case "Land_BusStop_01_sign_F":
            {
                [visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]
            };
        default {
                [visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld(_x selectionPosition "head")) select 2) + 0.70]
            };
        }; _sPos = worldToScreen _pos;
        _distance = _pos distance player;
        if (! ((headgear _x) in _masks || (goggles _x) in _masks || (uniform _x) in _masks)) then {
            if (count _sPos > 1 && {
                _distance < 10
            }) then {
                _text =
                switch (true) do {
                case(_x in (units group player) && playerSide isEqualTo civilian):
                    {
                        format["<t font='PuristaMedium' color='#F4B400' size='1' align='center'>%1</t>", (_x getVariable["realname", name _x])];
                    };
                case(side _x isEqualTo west && { ! isNil {
                            _x getVariable "rank"
                        }
                    }):
                    {
                        format["<img image='%1' size='1' align='center'></img><br/><t font='PuristaMedium' color='#4285F4' align='center'>%3</t><br/><t font='PuristaMedium' align='center'>%2</t>",
                        switch ((_x getVariable "rank")) do {
                        case 1:
                            {
                                "textures\ikony\1.paa"
                            };
                        case 2:
                            {
                                "textures\ikony\1.paa"
                            };
                        case 3:
                            {
                                "textures\ikony\3.paa"
                            };
                        case 4:
                            {
                                "textures\ikony\4.paa"
                            };
                        case 5:
                            {
                                "textures\ikony\5.paa"
                            };
                        case 6:
                            {
                                "textures\ikony\6.paa"
                            };
                        case 7:
                            {
                                "textures\ikony\7.paa"
                            };
                        case 8:
                            {
                                "textures\ikony\8.paa"
                            };
                        case 9:
                            {
                                "textures\ikony\9.paa"
                            };
                        case 10:
                            {
                                "textures\ikony\10.paa"
                            };
                        case 11:
                            {
                                "textures\ikony\11.paa"
                            };
                        case 12:
                            {
                                "textures\ikony\12.paa"
                            };
                        case 13:
                            {
                                "textures\ikony\13.paa"
                            };
                        case 14:
                            {
                                "textures\ikony\14.paa"
                            };
                        case 15:
                            {
                                "textures\ikony\15.paa"
                            };
                        case 16:
                            {
                                "textures\ikony\16.paa"
                            };
                        case 17:
                            {
                                "textures\ikony\zastkom.paa"
                            };
                        case 18:
                            {
                                "textures\ikony\KOM.paa"
                            };
                        case 19:
                            {
                                "textures\ikony\CH.paa"
                            };
                        default {
                                ""
                            };
                        },
                        _x getVariable["realname", name _x],
                        switch ((_x getVariable "rank")) do {
                        case 1:
                            {
                                "Kursant"
                            };
                        case 2:
                            {
                                "Posterunkowy"
                            };
                        case 3:
                            {
                                "St. Posterunkowy"
                            };
                        case 4:
                            {
                                "Sierżant"
                            };
                        case 5:
                            {
                                "St. Sierżant"
                            };
                        case 6:
                            {
                                "Sierżant Sztabowy"
                            };
                        case 7:
                            {
                                "Mł. Aspirant"
                            };
                        case 8:
                            {
                                "Aspirant"
                            };
                        case 9:
                            {
                                "St. Aspirant"
                            };
                        case 10:
                            {
                                "Aspirant Sztabowy"
                            };
                        case 11:
                            {
                                "Podkomisarz"
                            };
                        case 12:
                            {
                                "Komisarz"
                            };
                        case 13:
                            {
                                "Nadkomisarz"
                            };
                        case 14:
                            {
                                "Podinspektor"
                            };
                        case 15:
                            {
                                "Mł. Inspektor"
                            };
                        case 16:
                            {
                                "Inspektor"
                            };
                        case 17:
                            {
                                "Zast. Komendanta"
                            };
                        case 18:
                            {
                                "Komendant"
                            };
                        case 19:
                            {
                                "Chief AIAD'u"
                            };
                        default {
                                "Policja"
                            };
                        }]
                    };
                case(side _x isEqualTo independent && { ! isNil {
                            _x getVariable "rank"
                        }
                    }):
                    {
                        format["<img image='%1' size='1' align='center'></img><br/><t font='PuristaMedium' color='#0F9D58' align='center'>%3</t><br/><t font='PuristaMedium' align='center'>%2</t>",
                        switch ((_x getVariable "rank")) do {
                        case 1:
                            {
                                "a3\ui_f\data\map\MapControl\hospital_ca.paa"
                            };
                        case 2:
                            {
                                "a3\ui_f\data\map\MapControl\hospital_ca.paa"
                            };
                        case 3:
                            {
                                "a3\ui_f\data\map\MapControl\hospital_ca.paa"
                            };
                        case 4:
                            {
                                "a3\ui_f\data\map\MapControl\hospital_ca.paa"
                            };
                        case 5:
                            {
                                "a3\ui_f\data\map\MapControl\hospital_ca.paa"
                            };
                        case 6:
                            {
                                "a3\ui_f\data\map\MapControl\hospital_ca.paa"
                            };
                        case 7:
                            {
                                "a3\ui_f\data\map\MapControl\hospital_ca.paa"
                            };
                        case 8:
                            {
                                "a3\ui_f\data\map\MapControl\hospital_ca.paa"
                            };
                        case 9:
                            {
                                "a3\ui_f\data\map\MapControl\hospital_ca.paa"
                            };
                        case 10:
                            {
                                "a3\ui_f\data\map\MapControl\hospital_ca.paa"
                            };
                        case 11:
                            {
                                "a3\ui_f\data\map\MapControl\hospital_ca.paa"
                            };
                        default {
                                ""
                            };
                        },
                        _x getVariable["realname", name _x],
                        switch ((_x getVariable "rank")) do {
                        case 1:
                            {
                                "Aplikant"
                            };
                        case 2:
                            {
                                "Stażysta"
                            };
                        case 3:
                            {
                                "Pielęgniarz"
                            };
                        case 4:
                            {
                                "Mł.Ratownik"
                            };
                        case 5:
                            {
                                "Ratownik"
                            };
                        case 6:
                            {
                                "Lekarz stażysta"
                            };
                        case 7:
                            {
                                "Lekarz"
                            };
                        case 8:
                            {
                                "Ratownik LPR"
                            };
                        case 9:
                            {
                                "Dowódca LPR"
                            };
                        case 10:
                            {
                                "Z-ca Ordynatora"
                            };
                        case 11:
                            {
                                "Ordynator"
                            };
                        default {
                                "Medyk"
                            };
                        }]
                    };
                default {
                        if (!isNil {
                            (group _x) getVariable "gang_name"
                        }) then {
                            format["<t size='1' font='PuristaMedium' align='center'>%1</t><br/><t size='0.8' font='PuristaMedium' color='#BEBDB8' align='center'>%2</t>", _x getVariable["realname", name _x], (group _x) getVariable["gang_name", ""]];
                        } else {
                            if (alive _x) then {
                                format["<t size='1' font='PuristaMedium' align='center'>%1</t>", _x getVariable["realname", name _x]];
                            } else {
                                if (!isPlayer _x) then {
                                    _x getVariable["realname", "ERROR"];
                                };
                            };
                        };
                    };
                }; if ((_x getVariable "vip") > 0) then {
                    if (_uid == "76561198798549260") then {
                        _text = _text
                    } else {
                        _text = format["<t font='PuristaMedium' color='#FFD700' align='center'>VIP</t><br/>"] + _text
                    };
                };
                if ((_x getVariable "aiad") > 0) then {
                    _text = format["<img image='textures\ikony\aiad.paa' size='1' align='center'></img><t font='PuristaMedium' >  </t>"] + _text
                };
                if ((_x getVariable "cswat") > 0) then {
                    _text = format["<img image='textures\ikony\boa.paa' size='1' align='center'></img><t font='PuristaMedium' >  </t>"] + _text
                };
                if (_x getVariable["speaking", false]) then {
                    _text = "<t color='#7FFF00' align='center'><img image='\A3\ui_f\data\igui\rscingameui\rscdisplayvoicechat\microphone_ca.paa' size='1.5'></img></t>" + _text
                };
                _idc ctrlSetStructuredText parseText _text;
                _idc ctrlSetPosition[(_sPos select 0) - 0.15, _sPos select 1, 0.4, 0.65];
                _idc ctrlSetScale scale;
                _idc ctrlSetFade 0;
                _idc ctrlCommit 0;
                _idc ctrlShow true;
            } else {
                _idc ctrlShow false;
            };
        } else {
            _idc ctrlShow false;
        };
    } else {
        _idc ctrlShow false;
    };
    _index = _forEachIndex;
}
forEach _units;
(_ui displayCtrl(iconID + _index + 1)) ctrlSetStructuredText parseText "";