params["_pos", "_name"];
if ! (playerSide in [west, independent]) exitWith {
    hint "Nie mozesz tego użyc!"
};
_chuj = _pos;
_chuj2 = _name;
hintSilent parseText format["<t size='1.5' color='#ff0000'>%1 <br/>POTRZEBUJE POMOCY </t>", _chuj2];
_markerpannic = createMarkerLocal["markerpannic", _chuj];
"markerpannic"
setMarkerShapeLocal "ICON";
"markerpannic"
setMarkerTypeLocal "mil_objective";
"markerpannic"
setMarkerColorLocal "ColorRed";
"markerpannic"
setMarkerTextLocal "PANIC BUTTON";
playSound "Alarm";
[] spawn {
    sleep 60;
    deleteMarkerlocal "markerpannic";
};