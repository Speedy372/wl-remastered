params[["_target", ObjNull, [ObjNull]], ["_who", "", [""]], "_obj"];
if (isNull _target) exitWith {};
if (_target != player) exitWith {};
if (_who isEqualTo "") exitWith {};
["Zostales powalony.", false] spawn domsg;
player playMoveNow "Incapacitated";
_obj = "Land_ClutterCutter_small_F"
createVehicle(getPosATL player);
_obj setPosATL(getPosATL player);
player attachTo[_obj, [0, 0, 0]];
[_obj] spawn {
    params["_obj"];
    sleep 5;
    if (! (player getVariable["restrained", false]) && !(player getVariable["tied", false])) then {
        player playMoveNow "amovppnemstpsraswrfldnon";
    };
    if (! (player getVariable["escorting", false])) then {
        detach player;
    };
    deleteVehicle _obj;
};