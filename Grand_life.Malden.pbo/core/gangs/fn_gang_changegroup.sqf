scriptName "fn_gang_changegroup";
if ([220080, "dialog_gang_changegroup"] call life_fnc_gang_activedialog) exitWith {
    hint localize "STR_aapps_gang_dialog_inuse"
};
disableSerialization;
createDialog "Life_gang_groupchange";
_display = findDisplay 220080;
_combo = _display displayCtrl 220080;
_listbox1 = _display displayCtrl 220081;
_listbox2 = _display displayCtrl 220082;
_group = group player;
life_gang_members = +(_group getVariable["gang_members", []]); {
    _combo lbAdd(_x select 1);
    _combo lbSetValue[_foreachindex, (_x select 0)];
}
forEach(_group getVariable["gang_permissions", []]);
_combo ctrlSetEventhandler["LBSelChanged", '
    (_this select 1) call life_fnc_gang_loadgroups;
    ctrlSetText[220083,format["Members of %1:",lbText[220080,lbCurSel 220080]]];
'];
if ((_group getVariable["gang_type", 0]) isEqualTo 0) then {
    _combo lbSetCurSel 1;
    _combo ctrlEnable false;
} else {
    _combo lbSetCurSel 0;
};
_listbox1 ctrlSetEventHandler["LBDblClick", '
    _1 = lbCurSel 220081;
    _data = call compile(lbData[220081,_1]);
    if((_1 isEqualTo -1) OR {_data isEqualTo []}) exitWith {};
    _uid = _data select 0;
    if(_uid isEqualto (getplayeruid player)) exitWith {hint localize "STR_aapps_gang_edityourself"};
    if(lbValue[220080,lbcursel 220080] isEqualTo 1) exitWith {hint localize "STR_aapps_gang_nosense"};
    _entry = 0;
    _entryarr = [];
    {
        if((_x select 0) isEqualTo _uid) exitWith {_entryarr = _x};
        _entry = _entry + 1;
    } forEach life_gang_members;
    _entryarr set [1,1];
    life_gang_members set [_entry,_entryarr];
    if(lbData[220082,0] isEqualTo "[]") then {lbClear 220082};
    _groupname = 1 call life_fnc_fetch_groupname;
    if(_groupname isEqualTo "") then {_groupname = "Deleted"};
    lbAdd[220082,format["[%2] %1",_data select 1,_groupname]];
    lbSetData[220082,(lbSize 220082)-1,str _data];
    lbsetvalue[220082,(lbSize 220082)-1,1];
    lbSort 220082;
    lbDelete[220081,_1];
    if((lbSize 220081) isEqualTo 0) then {
        lbAdd[220081, localize "STR_aapps_gang_nousers"];
        lbSetData[220081,0,"[]"];
        lbSetValue[220081,0,-1];
    };
'];
_listbox2 ctrlSetEventHandler["LBDblClick", '
    _1 = lbCurSel 220082;
    _data = call compile(lbData[220082,_1]);
    if((_1 isEqualTo -1) OR {_data isEqualTo []}) exitWith {};
    _uid = _data select 0;
    if(_uid isEqualto (getplayeruid player)) exitWith {hint localize "STR_aapps_gang_edityourself"};
    _entry = 0;
    _entryarr = [];
    {
        if((_x select 0) isEqualTo _uid) exitWith {_entryarr = _x};
        _entry = _entry + 1;
    } forEach life_gang_members;
    _rank = lbValue[220080,lbcursel 220080];
    _entryarr set [1,_rank];
    life_gang_members set [_entry,_entryarr];
    if(lbData[220081,0] isEqualTo "[]") then {lbClear 220081};
    _groupname = _rank call life_fnc_fetch_groupname;
    if(_groupname isEqualTo "") then {_groupname = "Deleted"};
    lbAdd[220081,_data select 1];
    lbSetData[220081,(lbSize 220081)-1,str _data];
    lbsetvalue[220081,(lbSize 220081)-1,_rank];
    lbSort 220081;
    lbDelete[220082,_1];
    if((lbSize 220082) isEqualTo 0) then {
        lbAdd[220082,localize "STR_aapps_gang_nousers"];
        lbSetData[220082,0,"[]"];
        lbSetValue[220082,0,-1];
    };
'];
_listbox1 ctrlSetEventHandler["LBDrag", '
    ctrl_gang_drag = lbCurSel 220081;
    if(ctrl_gang_drag isEquaLTo -1) exitWith {hint localize "STR_aapps_gang_selentry"};
    if(lbValue[220080,lbcursel 220080] isEqualTo 1) exitWith {hint localize "STR_aapps_gang_nosense";ctrl_gang_drag = -1};
'];
_listbox1 ctrlSetEventHandler["LBDrop", '
    _idc = _this select 3;
    _data = (_this select 4) select 0;
    _namearr = call compile (_data select 2);
    if(!(_idc isEqualTo 220082) OR {_namearr isEqualTo []} OR {ctrl_gang_drag isEqualTo -1}) exitWith {};
    _uid = _namearr select 0;
    if(_uid isEqualto (getplayeruid player)) exitWith {hint localize "STR_aapps_gang_edityourself"};
    _entry = 0;
    _entryarr = [];
    {
        if((_x select 0) isEqualTo _uid) exitWith {_entryarr = _x};
        _entry = _entry + 1;
    } forEach life_gang_members;
    _rank = lbValue[220080,lbcursel 220080];
    _entryarr set [1,_rank];
    life_gang_members set [_entry,_entryarr];
    lbDelete[220082,ctrl_gang_drag];
    if((lbSize 220082) isEqualTo 0) then {
        lbAdd[220082, localize "STR_aapps_gang_nousers"];
        lbSetData[220082,0,"[]"];
        lbSetValue[220082,0,-1];
    };
    if(lbData[220081,0] isEqualTo "[]") then {lbClear 220081};
    lbAdd[220081,_namearr select 1];
    lbSetData[220081,(lbSize 220081)-1,str _namearr];
    lbsetvalue[220081,(lbSize 220081)-1,_rank];
    lbSort 220081;
'];
_listbox2 ctrlSetEventHandler["LBDrag", '
    ctrl_gang_drag = lbCurSel 220082;
    if(ctrl_gang_drag isEquaLTo -1) exitWith {hint localize "STR_aapps_gang_selentry"};
'];
_listbox2 ctrlSetEventHandler["LBDrop", '
    _idc = _this select 3;
    _data = (_this select 4) select 0;
    _namearr = call compile (_data select 2);
    if(!(_idc isEqualTo 220081) OR {_namearr isEqualTo []} OR {ctrl_gang_drag isEqualTo -1}) exitWith {};
    _uid = _namearr select 0;
    if(_uid isEqualto (getplayeruid player)) exitWith {hint localize "STR_aapps_gang_edityourself"};
    _entry = 0;
    _entryarr = [];
    {
        if((_x select 0) isEqualTo _uid) exitWith {_entryarr = _x};
        _entry = _entry + 1;
    } forEach life_gang_members;
    _entryarr set [1,1];
    life_gang_members set [_entry,_entryarr];
    lbDelete[220081,ctrl_gang_drag];
    if((lbSize 220081) isEqualTo 0) then {
        lbAdd[220081,localize "STR_aapps_gang_nousers"];
        lbSetData[220081,0,"[]"];
        lbSetValue[220081,0,-1];
    };
    if(lbData[220082,0] isEqualTo "[]") then {lbClear 220082};
    _groupname = 1 call life_fnc_fetch_groupname;
    if(_groupname isEqualTo "") then {_groupname = "Deleted"};
    lbAdd[220082,format["[%2] %1",_namearr select 1,_groupname]];
    lbSetData[220082,(lbSize 220082)-1,str _namearr];
    lbsetValue[220082,(lbSize 220082)-1,1];
    lbSort 220082;
'];
_display displayAddEventHandler["UnLoad", '
    (group player) setVariable ["dialog_gang_changegroup","[]",true];
    closeDialog 0;
'];