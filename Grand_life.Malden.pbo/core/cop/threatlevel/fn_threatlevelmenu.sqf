#include < core\cop\threatlevel\macro.h >
if (__GETC__(life_coplevel) <= 7) exitWith {
    closeDialog 0;
    hint "Nie jesteś uprawniony do kożystania z poziomów zagrożenia!";
};
private["_index"];
createDialog "Life_Threat_Level";
waitUntil { ! (isNull(findDisplay 2720))
};
_kody = [["Zielony", "0"], ["Pomaranczowy", "1"], ["Czerwony", "2"], ["Czarny", "3"]]; {
    _index = lbAdd[1102, _x select 0];
    lbSetData[1102, _index, _x select 1]
}
forEach _kody;
lbSetCurSel[1102, 0];