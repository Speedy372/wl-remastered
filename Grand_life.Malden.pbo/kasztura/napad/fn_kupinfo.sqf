#include "script_macros.hpp"
switch (param[0, 10]) do {
case 0:
    {
        _test = player getVariable["tajny_kod_zapa_1", false];
        if ! (_test) then {
            _kapusta = getNumber(missionConfigFile >> "kasztura_config" >> "Kapusta_Za_Info");
            hint format["Uff, na szczęście zdążyłem wyskoczyć w ostatniej chwili. W śmigłowcu został laptop z tajnymi danymi jak chcesz to
			powiem ci gdzie spadł za %1$", _kapusta];
            uisleep 2;
            _action = [format["Czy chcesz zapłacić %1$ za informacje ?", _kapusta], "Opłata", localize "STR_Global_Yes", localize "STR_Global_No"] call BIS_fnc_guiMessage;
            if (_action) then {
                if (_kapusta > CASH) exitWith {
                    hint "Masz za mało pieniędzy !"
                };
                CASH = CASH - _kapusta;
                _tkod = NPC_Naoad_K getVariable["tajny_kod_1", "ERROR"];
                [format["Twój tajny kod: %1 ?", _tkod], "Tajny Kod", "Zamknij", "Zamknij"] call BIS_fnc_guiMessage;
                if ((LAPTOP_Naoad_K getVariable["tajny_kod_2", "nil"]) isEqualTo "nil") then {
                    ["move_wrak"] remoteExec["life_fnc_initnapad", 2]
                };
                player setVariable["tajny_kod_zapa_1", true, false];
                while {
                    isnil(LAPTOP_Naoad_K getVariable "kordy")
                }
                do {}; hint format["Wrak śmigłowca znajduje się w: %1", mapGridPosition LAPTOP_Naoad_K];
            } else {
                hint "Anulowano !";
            };
        } else {
            hint format["Wrak śmigłowca znajduje się w: %1 - Tajny kod: %2", (mapGridPosition LAPTOP_Naoad_K), (NPC_Naoad_K getVariable["tajny_kod_1", "ERROR"])];
        };
    };
case 1:
    {
        _test = player getVariable["tajny_kod_zapa_2", false];
        if ! (_test) then {
            createdialog "laptop_napad"
        } else {
            hint format["Tajny kod: %1", (LAPTOP_Naoad_K getVariable["tajny_kod_2", "ERROR"])];
        };
    };
case 2:
    {
        private["_value"];
        _value = (ctrlText 2702);
        if (count _value != 20) exitWith {
            hint format["ERROR, zgłoś to Adminowi. _value = %1", _value]
        };
        if ! (_value isEqualTo(NPC_Naoad_K getVariable["tajny_kod_1", "ERROR"])) exitWith {
            hint "Dostęp zabroniony: kod niepoprawny !";
            ctrlSetText[2703, "Dostęp zabroniony: kod niepoprawny !"];
        };
        ctrlSetText[2703, format["Twój nowy kod: %1", (LAPTOP_Naoad_K getVariable["tajny_kod_2", "ERROR: zgłoś to Adminowi"])]];
        player setVariable["tajny_kod_zapa_2", true, false];
        ctrlEnable[1601, false];
        _test = player getVariable["tajny_kod_zapa_2", false];
        if ! (_test) then {
            _tbl = []; {
                if (side _x == west) then {
                    _tbl pushBack _x
                };
            }
            forEach allPlayers;
            if ! (_tbl isEqualTo[]) then {
                ["laptop"] remoteExecCall["life_fnc_pdinfo", _tbl]
            };
        };
    };
default {};
};