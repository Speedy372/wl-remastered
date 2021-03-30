#include "script_macros.hpp"
private["_display", "_list", "_moves"];
disableSerialization;
if (playerSide == west) then {
    _moves = [["[ANIM]Kung Fu", "AmovPercMstpSnonWnonDnon_exerciseKata"], ["[ANIM]Pompki", "AmovPercMstpSnonWnonDnon_exercisePushup"], ["[ANIM]Przysiady (Szybkie)", "AmovPercMstpSnonWnonDnon_exercisekneeBendB"], ["[ANIM]Przysiady (Normalne)", "AmovPercMstpSnonWnonDnon_exercisekneeBendA"], ["[ANIM]Przerażony", "AmovPercMstpSnonWnonDnon_Scared"], ["[ANIM]Siadanie", "AmovPercMstpSnonWnonDnon_AmovPsitMstpSnonWnonDnon_ground"], ["[ANIM]Salutowanie", "AmovPercMstpSnonWnonDnon_SaluteIn"], ["[ANIM]Sprawdzanie", "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"], ["[MOVE]Taniec 1", "ACTS_DANCE_02"], ["[MOVE]Taniec 2", "ACTS_DANCE_01"], ["[MOVE]Ból Ręki", "Acts_CivilInjuredArms_1"], ["[MOVE]Zawał serca", "Acts_CivilInjuredChest_1"], ["[MOVE]Patrzenie się w niebo", "Acts_HillTop_Calibration_Heli_in"]];
};
if (playerSide == independent) then {
    _moves = [["[ANIM]Kung Fu", "AmovPercMstpSnonWnonDnon_exerciseKata"], ["[ANIM]Pompki", "AmovPercMstpSnonWnonDnon_exercisePushup"], ["[ANIM]Przysiady (Szybkie)", "AmovPercMstpSnonWnonDnon_exercisekneeBendB"], ["[ANIM]Przysiady (Normalne)", "AmovPercMstpSnonWnonDnon_exercisekneeBendA"], ["[ANIM]Przerażony", "AmovPercMstpSnonWnonDnon_Scared"], ["[ANIM]Siadanie", "AmovPercMstpSnonWnonDnon_AmovPsitMstpSnonWnonDnon_ground"], ["[ANIM]Salutowanie", "AmovPercMstpSnonWnonDnon_SaluteIn"], ["[ANIM]Sprawdzanie", "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"], ["[MOVE]Taniec 1", "ACTS_DANCE_02"], ["[MOVE]Taniec 2", "ACTS_DANCE_01"], ["[MOVE]Ból Ręki", "Acts_CivilInjuredArms_1"], ["[MOVE]Zawał serca", "Acts_CivilInjuredChest_1"], ["[MOVE]Patrzenie się w niebo", "Acts_HillTop_Calibration_Heli_in"]];
};
if (playerSide == civilian) then {
    _moves = [["[ANIM]Kung Fu", "AmovPercMstpSnonWnonDnon_exerciseKata"], ["[ANIM]Pompki", "AmovPercMstpSnonWnonDnon_exercisePushup"], ["[ANIM]Przysiady (Szybkie)", "AmovPercMstpSnonWnonDnon_exercisekneeBendB"], ["[ANIM]Przysiady (Normalne)", "AmovPercMstpSnonWnonDnon_exercisekneeBendA"], ["[ANIM]Przerażony", "AmovPercMstpSnonWnonDnon_Scared"], ["[ANIM]Siadanie", "AmovPercMstpSnonWnonDnon_AmovPsitMstpSnonWnonDnon_ground"], ["[ANIM]Salutowanie", "AmovPercMstpSnonWnonDnon_SaluteIn"], ["[ANIM]Sprawdzanie", "AmovPercMstpSnonWnonDnon_AinvPknlMstpSnonWnonDnon"], ["[MOVE]Taniec 1", "ACTS_DANCE_02"], ["[MOVE]Taniec 2", "ACTS_DANCE_01"], ["[MOVE]Ból Ręki", "Acts_CivilInjuredArms_1"], ["[MOVE]Zawał serca", "Acts_CivilInjuredChest_1"], ["[MOVE]Patrzenie się w niebo", "Acts_HillTop_Calibration_Heli_in"]];
};
waitUntil { ! isNull(findDisplay 2900)
};
_display = findDisplay 2900;
_list = _display displayCtrl 2902;
lbClear _list; {
    _list lbAdd format["%1", _x select 0];
    _list lbSetdata[(lbSize _list) - 1, str(_x select 1)];
}
forEach _moves;