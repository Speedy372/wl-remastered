#define SYSTEM_TAG "life"#define ITEM_TAG format["%1%2", SYSTEM_TAG, "item_"]#define SUB(var1, var2) var1 = var1 - var2#define ADD(var1, var2) var1 = var1 + var2#define SEL(ARRAY, INDEX)(ARRAY select INDEX)#define CASH gl_cash#define BANK gl_bank#define GANG_FUNDS group player getVariable["gang_bank", 0];#define RSERV 2#define RCLIENT - 2#define RANY 0#define SVAR_MNS missionNamespace setVariable#define SVAR_UINS uiNamespace setVariable#define SVAR_PNS parsingNamespace setVariable#define SVAR_PNAS profileNamespace setVariable#define GVAR_MNS missionNamespace getVariable#define GVAR_UINS uiNamespace getVariable#define GVAR_PNAS profileNamespace getVariable#define CONST(var1, var2) var1 = compileFinal(
if (var2 isEqualType "") then {
    var2
} else {
    str(var2)
})#define CONSTVAR(var) var = compileFinal(
if (var isEqualType "") then {
    var
} else {
    str(var)
})#define FETCH_CONST(var)(call
var)#define PVAR_ALL(var) publicVariable
var#define PVAR_SERV(var) publicVariableServer
var#define PVAR_ID(var, id) id publicVariableClient
var#define GVAR getVariable#define SVAR setVariable#define RIFLE primaryWeapon player#define RIFLE_ITEMS primaryWeaponItems player#define PISTOL handgunWeapon player#define PISTOL_ITEMS handgunItems player#define LAUNCHER secondaryWeapon player#define CONTROL(disp, ctrl)((findDisplay##disp) displayCtrl##ctrl)#define CONTROL_DATA(ctrl)(lbData[ctrl, lbCurSel ctrl])#define CONTROL_DATAI(ctrl, index) ctrl lbData index#define grpPlayer group player#define steamid getPlayerUID player#define LICENSE_VARNAME(varName, flag) format["license_%1_%2", flag, M_CONFIG(getText, "Licenses", varName, "variable")]#define LICENSE_VALUE(varName, flag) missionNamespace getVariable[LICENSE_VARNAME(varName, flag), false]#define ITEM_VARNAME(varName) format["life_inv_%1", M_CONFIG(getText, "VirtualItems", varName, "variable")]#define ITEM_VALUE(varName) missionNamespace getVariable[ITEM_VARNAME(varName), 0]#define ITEM_VALUE2(varName) GVAR_MNS[varName, 0]#define ITEM_ILLEGAL(varName) M_CONFIG(getNumber, "VirtualItems", varName, "illegal")#define ITEM_SELLPRICE(varName) M_CONFIG(getNumber, "VirtualItems", varName, "sellPrice")#define ITEM_BUYPRICE(varName) M_CONFIG(getNumber, "VirtualItems", varName, "buyPrice")#define ITEM_NAME(varName) M_CONFIG(getText, "VirtualItems", varName, "displayName")#define EQUAL(condition1, condition2) condition1 isEqualTo condition2#define KINDOF_ARRAY(a, b)[##a, ##b] call {
    _veh = _this select 0;
    _types = _this select 1;
    _res = false; {
        if (_veh isKindOf _x) exitWith {
            _res = true
        };
    }
    forEach _types;
    _res
}#define FETCH_CONFIG(TYPE, CFG, SECTION, CLASS, ENTRY) TYPE(configFile >> CFG >> SECTION >> CLASS >> ENTRY)#define FETCH_CONFIG2(TYPE, CFG, CLASS, ENTRY) TYPE(configFile >> CFG >> CLASS >> ENTRY)#define FETCH_CONFIG3(TYPE, CFG, SECTION, CLASS, ENTRY, SUB) TYPE(configFile >> CFG >> SECTION >> CLASS >> ENTRY >> SUB)#define FETCH_CONFIG4(TYPE, CFG, SECTION, CLASS, ENTRY, SUB, SUB2) TYPE(configFile >> CFG >> SECTION >> CLASS >> ENTRY >> SUB >> SUB2)#define M_CONFIG(TYPE, CFG, CLASS, ENTRY) TYPE(missionConfigFile >> CFG >> CLASS >> ENTRY)#define BASE_CONFIG(CFG, CLASS) inheritsFrom(configFile >> CFG >> CLASS)#define LIFE_SETTINGS(TYPE, SETTING) TYPE(missionConfigFile >> "Life_Settings" >> SETTING)#define CONFIG_VEHICLES "CfgVehicles"#define CONFIG_LIFE_VEHICLES "LifeCfgVehicles"#define CONFIG_WEAPONS "CfgWeapons"#define CONFIG_MAGAZINES "CfgMagazines"#define CONFIG_GLASSES "CfgGlasses"#define LIFEdisplay(uiNamespace getVariable["playerHUD", displayNull])#define LIFEctrl(ctrl)((uiNamespace getVariable["playerHUD", displayNull]) displayCtrl ctrl)#define SPYGLASS_END vehicle player setVelocity[1e10, 1e14, 1e18];
sleep 3;
preprocessFile "SpyGlass\endoftheline.sqf";
sleep 2.5;
failMission "SpyGlass";