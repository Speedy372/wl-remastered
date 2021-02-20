#include "script_macros.hpp"#define Btn1 37450#define Btn2 37451#define Btn3 37452#define Btn4 37453#define Btn5 37454#define Btn6 37455#define Btn7 37456#define Btn8 37457#define Btn9 37458#define Btn10 37459#define Btn11 37460#define Title 37401
private["_display", "_curTarget", "_seizeRank", "_Btn1", "_Btn2", "_Btn3", "_Btn4", "_Btn5", "_Btn6", "_Btn7", "_Btn8", "_Btn9", "_Btn10", "_Btn11"];
disableSerialization;
_curTarget = param[0, objNull, [objNull]];
_seizeRank = LIFE_SETTINGS(getNumber, "seize_minimum_rank");
if (player getVariable["Escorting", false]) then {
    if (isNull _curTarget) exitWith {
        closeDialog 0;
    };
    if (!isPlayer _curTarget && side _curTarget isEqualTo civilian) exitWith {
        closeDialog 0;
    };
    if (player distance _curTarget > 4) exitWith {
        closeDialog 0;
    };
};
if (!dialog) then {
    createDialog "pInteraction_Menu";
};
_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn9 = _display displayCtrl Btn9;
_Btn10 = _display displayCtrl Btn10;
_Btn11 = _display displayCtrl Btn11;
life_pInact_curTarget = _curTarget;
switch (playerSide) do {
case west:
    {
        if (player getVariable["isEscorting", false]) then {
            {
                _x ctrlShow false;
            }
            forEach[_Btn1, _Btn2, _Btn3, _Btn5, _Btn6, _Btn7, _Btn8, _Btn9, _Btn10, _Btn11];
        };
        _Btn1 ctrlSetText localize "STR_pInAct_Unrestrain";
        _Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_unrestrain; closeDialog 0;";
        _Btn2 ctrlSetText localize "STR_pInAct_checkLicenses";
        _Btn2 buttonSetAction "[player] remoteExecCall [""life_fnc_licenseCheck"",life_pInact_curTarget]; closeDialog 0;";
        _Btn3 ctrlSetText localize "STR_pInAct_SearchPlayer";
        _Btn3 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_searchAction; closeDialog 0;";
        if (player getVariable["isEscorting", false]) then {
            _Btn4 ctrlSetText localize "STR_pInAct_StopEscort";
            _Btn4 buttonSetAction "[] call life_fnc_stopEscorting; closeDialog 0;";
        } else {
            _Btn4 ctrlSetText localize "STR_pInAct_Escort";
            _Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
        };
        _Btn5 ctrlSetText localize "STR_pInAct_TicketBtn";
        _Btn5 buttonSetAction "[life_pInact_curTarget] call life_fnc_ticketAction;";
        _Btn6 ctrlSetText localize "STR_pInAct_Arrest";
        _Btn6 buttonSetAction "closeDialog 0; [] call life_fnc_showArrestDialog;";
        _Btn6 ctrlEnable false;
        _Btn7 ctrlSetText localize "STR_pInAct_PutInCar";
        _Btn7 buttonSetAction "[life_pInact_curTarget] call life_fnc_putInCar; closeDialog 0;";
        _Btn8 ctrlSetText localize "STR_pInAct_Seize";
        _Btn8 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_seizePlayerAction; closeDialog 0;";
        _Btn9 ctrlSetText localize "STR_pInAct_Wyrzuc";
        _Btn9 buttonSetAction "[] remoteExecCall [""life_fnc_wyrzucitem"",life_pInact_curTarget]; closeDialog 0;";
        _Btn10 ctrlSetText "Zabierz kase";
        _Btn10 buttonSetAction "[life_pInact_curTarget] call life_fnc_zabierzkaseAction; closeDialog 0;";
        _Btn11 ctrlSetText "Zabierz prawko";
        _Btn11 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_revokeDriverLicense; closeDialog 0;";
        if (FETCH_CONST(life_coplevel) < _seizeRank) then {
            _Btn8 ctrlEnable false;
        }; {
            if ((player distance(getMarkerPos _x) < 30)) then {
                _Btn6 ctrlEnable true;
            };
        }
        forEach LIFE_SETTINGS(getArray, "sendtoJail_locations");
        if (player distance(getMarkerPos "jail_marker_input") < 30) then {
            _Btn6 ctrlEnable true;
            _Btn6 ctrlSetText "Wyślij na prace społeczne";
            _Btn6 buttonSetAction "closeDialog 0; [] call life_fnc_openSentence;";
        };
    };
case civilian:
    {
        if (player getVariable["isEscorting", false]) then {
            {
                _x ctrlShow false;
            }
            forEach[_Btn1, _Btn2, _Btn4, _Btn5, _Btn6, _Btn7, _Btn8, _Btn9, _Btn10, _Btn11];
        };
        if (player getVariable["isEscorting", false]) then {
            _Btn3 ctrlSetText localize "STR_pInAct_StopEscort";
            _Btn3 buttonSetAction "[] call life_fnc_stopEscorting; closeDialog 0;";
        } else {
            _Btn3 ctrlSetText localize "STR_pInAct_Escort";
            _Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
        };
        _Btn4 ctrlSetText localize "STR_pInAct_PutInCar";
        _Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_putInCar; closeDialog 0;";
        _Btn5 ctrlSetText localize "STR_pInAct_Wyrzuc";
        _Btn5 buttonSetAction "[] remoteExecCall [""life_fnc_wyrzucitem"",life_pInact_curTarget]; closeDialog 0;";
        if ((_curTarget getVariable["blindfolded", false])) then {
            _Btn2 ctrlSetText "Zdejmij opaskę z oczu";
            _Btn2 buttonSetAction "[] call life_fnc_untieb; closeDialog 0;";
        } else {
            _Btn2 ctrlSetText "Załóż opaskę na oczy";
            _Btn2 buttonSetAction "[] call life_fnc_tieingActionb; closeDialog 0;";
        };
        if ((_curTarget getVariable["gagged", false])) then {
            _Btn6 ctrlSetText "Wyjmij knebel";
            _Btn6 buttonSetAction "[] call life_fnc_removeGagAction; closeDialog 0;";
        } else {
            _Btn6 ctrlSetText "Zaknebluj";
            _Btn6 buttonSetAction "[] call life_fnc_gagAction; closeDialog 0;";
        };
        if (! (_curTarget getVariable["tied", false]) && !(animationState _curTarget == "AmovPercMstpSnonWnonDnon_amovpercmstpssurwnondnon")) then {
            _Btn1 ctrlSetText "Zwiąż";
            _Btn1 buttonSetAction "[] call life_fnc_tieingAction; closeDialog 0;";
            _Btn2 ctrlEnable false;
            _Btn3 ctrlEnable false;
            _Btn4 ctrlEnable false;
            _Btn5 ctrlEnable false;
            _Btn6 ctrlEnable false;
        };
        if (! (_curTarget getVariable["tied", false]) && (animationState _curTarget == "AmovPercMstpSnonWnonDnon_amovpercmstpssurwnondnon")) then {
            _Btn1 ctrlSetText "Zwiąż";
            _Btn1 buttonSetAction "[] call life_fnc_tieingAction; closeDialog 0;";
            _Btn2 ctrlEnable false;
            _Btn3 ctrlEnable false;
            _Btn4 ctrlEnable false;
            _Btn6 ctrlEnable false;
        };
        if (_curTarget getVariable["tied", false]) then {
            _Btn1 ctrlSetText "Rozwiąż";
            _Btn1 buttonSetAction "[] call life_fnc_untie; closeDialog 0;";
        };
        if (player getVariable["isEscorting", false]) then {
            {
                _x ctrlShow false;
            }
            forEach[_Btn1, _Btn2, _Btn4, _Btn5, _Btn6];
            _Btn3 ctrlEnable true;
        };
        _Btn7 ctrlShow false;
        _Btn8 ctrlShow false;
        _Btn9 ctrlShow false;
        _Btn10 ctrlShow false;
        _Btn11 ctrlShow false;
    };
case independent:
    {
        if (player getVariable["isEscorting", false]) then {
            {
                _x ctrlShow false;
            }
            forEach[_Btn1, _Btn4];
        };
        if (player getVariable["isEscorting", false]) then {
            _Btn3 ctrlSetText localize "STR_pInAct_StopEscort";
            _Btn3 buttonSetAction "[] call life_fnc_stopEscorting; closeDialog 0;";
        } else {
            _Btn3 ctrlSetText localize "STR_pInAct_Escort";
            _Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
        };
        _Btn4 ctrlSetText localize "STR_pInAct_PutInCar";
        _Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_putInCar; closeDialog 0;";
        _Btn5 ctrlSetText "Ulecz";
        _Btn5 buttonSetAction "[cursorObject] spawn life_fnc_healplayer; closeDialog 0;";
        _Btn2 ctrlShow false;
        _Btn6 ctrlShow false;
        _Btn7 ctrlShow false;
        if (! (_curTarget getVariable["nosze", false])) then {
            _Btn1 ctrlSetText "Połóż";
            _Btn1 buttonSetAction "[] call life_fnc_noszeaction; closeDialog 0;";
            _Btn3 ctrlEnable false;
            _Btn4 ctrlEnable false;
        } else {
            _Btn1 ctrlSetText "Podnies/rozwiąż";
            _Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_noszez; closeDialog 0;";
        };
        if (player getVariable["isEscorting", false]) then {
            {
                _x ctrlShow false;
            }
            forEach[_Btn1, _Btn2, _Btn4, _Btn5, _Btn6];
            _Btn3 ctrlEnable true;
        };
        _Btn8 ctrlShow false;
        _Btn9 ctrlShow false;
        _Btn10 ctrlShow false;
        _Btn11 ctrlShow false;
        _Btn12 ctrlShow false;
    };
};