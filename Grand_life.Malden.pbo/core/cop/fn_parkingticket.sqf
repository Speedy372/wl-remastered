#include "script_macros.hpp"
private["_veh"];
_veh = param[0, ObjNull, [ObjNull]];
if (player distance cursorObject > 10) exitWith {};
if (! (_veh isKindOf "LandVehicle")) exitWith {};
if (_veh in life_vehicles) exitWith {
    hint "To jest twój pojazd!";
};
if (_veh GVAR["parkingTicket", false]) exitWith {
    hint "Ten pojazd już ma wystawiony mandat!";
};
_veh SVAR["parkingTicket", TRUE, TRUE];
titleText["Wystawiłeś mandat za za nieprawidłowe parkowanie w wysokości $2,000.", "PLAIN DOWN"];