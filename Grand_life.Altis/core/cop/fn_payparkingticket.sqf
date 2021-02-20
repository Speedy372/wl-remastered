#include "script_macros.hpp"
private["_veh"];
_veh = cursorTarget;
_parkingTicket = 2000;
if (BANK < _parkingTicket) exitWith {};
if (_veh GVAR["parkingTicket", false]) then {
    _veh SVAR["parkingTicket", false, true];
    titleText["Zapłaciłeś mandat w wysokości $2,000 za nieprawidłowe parkowanie.", "PLAIN DOWN"];
    BANK = BANK - _parkingTicket;
};
[] call SOCK_fnc_updateRequest;