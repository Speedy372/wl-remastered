scriptName "fn_gang_kickinvite";
if ([220300, "dialog_gang_kickinvite"] call life_fnc_gang_activedialog) exitWith {
    hint localize "STR_aapps_gang_dialog_inuse"
};
disableSerialization;
createDialog "life_gang_kickinvite";
_display = findDisplay 220300;
_listbox1 = _display displayCtrl 220302;
_listbox2 = _display displayCtrl 220303;
life_gang_members = +((group player) getVariable["gang_members", []]);
['', ''] spawn life_fnc_gang_refreshinvite;
gang_invited_players = [];
gang_kicked_players = [];
_listbox1 ctrlSetEventHandler["LBDblClick", '
    _1 = lbCurSel 220302;
    if(_1 isEqualTo -1) exitWith {};
    _data = call compile(lbData[220302,_1]);
    if(_data isEqualTo []) exitWith {};
    _uid = _data select 0;
    _obj = _data select 1;
    if(_uid isEqualto (getplayeruid player)) exitWith {hint localize "STR_aapps_gang_edityourself"};
    _entry = 0;
    _found = false;
    {
        if((_x select 0) isEqualTo _uid) exitWith {_found = true};
        _entry = _entry + 1;
    } forEach life_gang_members;
    if(!_found) exitWith {};
    life_gang_members deleteAt _entry;
    lbDelete [220302,_1];
    if(!(_obj isEqualto "OFFLINEMEMBER")) then {
        _found = false;
        _obj = call compile _obj;
        {
            if(_x isEqualTo _obj) exitWith {
                if((getplayeruid _x) isEqualTo _uid) then {_found = true};
            };
        } forEach allPlayers;
        if(_found) then {
            if(lbData[220303, 0] isEqualTo "[]") then {
                lbDelete [220303, 0];
            };
            lbAdd[220303,name _obj];
            lbSetData[(lbSize 220303)-1,str _data];
            lbSort 220303;
        };
    };
    if(_data in gang_invited_players) then {
        gang_invited_players = gang_invited_players - _data;
    } else {
        gang_kicked_players pushBack _data;
    };
'];
_listbox1 ctrlSetEventHandler["LBDrag", '
    ctrl_gang_drag = lbCurSel 220302;
    if(ctrl_gang_drag isEquaLTo -1) exitWith {hint localize "STR_aapps_gang_selentry"};
    _data = call compile(lbData[220302,ctrl_gang_drag]);
    if(_data isEqualTo []) exitWith {ctrl_gang_drag = -1};
    if((_data select 0) isEqualTo (getplayeruid player)) exitWith {hint localize "STR_aapps_gang_edityourself";ctrl_gang_drag = -1};
'];
_listbox1 ctrlSetEventHandler["LBDrop", '
    _idc = _this select 3;
    _data = (_this select 4) select 0;
    _namearr = call compile (_data select 2);
    if(!(_idc isEqualTo 220303) OR {_namearr isEqualTo []} OR {ctrl_gang_drag isEqualTo -1}) exitWith {};
    _obj = _namearr select 1;
    _plainobj = call compile _obj;
    _name = name _plainobj;
    lbDelete[220303,ctrl_gang_drag];
    if((lbSize 220303) isEqualTo 0) then {
        lbAdd[220303, localize "STR_aapps_gang_nousers"];
        lbSetData[220303, 0,"-1"];
        lbSetValue[220303, 0, -1];
    };
    lbAdd[220302,format["[Member] %1",_name]];
    lbSetData[220302, (lbSize 220302)-1,str _namearr];
    lbSort 220302;
    life_gang_members pushback [(_namearr select 0),1,_name,_plainobj];
    if(_namearr in gang_kicked_players) then {
        gang_kicked_players = gang_kicked_players - _namearr;
    } else {
        gang_invited_players pushBack _namearr;
    };
'];
_listbox2 ctrlSetEventHandler["LbDblClick", '
    _1 = lbCurSel 220303;
    if(_1 isEqualTo -1) exitWith {};
    _data = call compile(lbData[220303,_1]);
    if(_data isEqualTo []) exitWith {};
    _obj = _data select 1;
    _plainobj = call compile _obj;
    lbDelete[220303,_1];
    if((lbSize 220303) isEqualTo 0) then {
        lbAdd[220303, localize "STR_aapps_gang_nousers"];
        lbSetData[220303, 0,"-1"];
        lbSetValue[220303, 0, -1];
    };
    _name = name _plainobj;
    lbAdd[220302,format["[Member] %1",_name]];
    lbSetData[220302,(lbSize 220302)-1,str _data];
    lbSort 220302;
    life_gang_members pushBack [(_data select 0),1,_name,_plainobj];
    if(_data in gang_kicked_players) then {
        gang_kicked_players = gang_kicked_players - _data;
    } else {
        gang_invited_players pushBack _data;
    };
'];
_listbox2 ctrlSetEventHandler["LBDrag", '
    ctrl_gang_drag = lbCurSel 220303;
    if(ctrl_gang_drag isEquaLTo -1) exitWith {hint localize "STR_aapps_gang_selentry"};
    _data = call compile(lbData[220303,ctrl_gang_drag]);
    if(_data isEqualTo []) exitWith {ctrl_gang_drag = -1};
'];
_listbox2 ctrlSetEventHandler["LBDrop", '
    _idc = _this select 3;
    _data = (_this select 4) select 0;
    _namearr = call compile (_data select 2);
    if(!(_idc isEqualTo 220302) OR {_namearr isEqualTo []} OR {ctrl_gang_drag isEqualTo -1}) exitWith {};
    _uid = _namearr select 0;
    _obj = _namearr select 1;
    _plainobj = call compile _obj;
    _name = name _plainobj;
    lbDelete[220302,ctrl_gang_drag];
    if((lbSize 220302) isEqualTo 0) then {
        lbAdd[220302, localize "STR_aapps_gang_nousers"];
        lbSetData[220302, 0,"-1"];
        lbSetValue[220302, 0, -1];
    };
    _entry = 0;
    _found = false;
    {
        if((_x select 0) isEqualTo _uid) exitWith {_found = true};
        _entry = _entry + 1;
    } forEach life_gang_members;
    if(!_found) exitWith {};
    life_gang_members deleteAt _entry;
    if(lbData[220303, 0] isEqualTo "[]") then {
        lbDelete[220303, 0];
    };
    lbAdd[220303,_name];
    lbSetData[220303, (lbSize 220302)-1,str _namearr];
    lbSort 220303;
    if(_namearr in gang_invited_players) then {
        gang_invited_players = gang_invited_players - _namearr;
    } else {
        gang_kicked_players pushBack _namearr;
    };
'];
_display displayAddEventHandler["Unload", '
    (group player) setVariable ["dialog_gang_kickinvite","[]",true];
    closeDialog 0;
'];