params[["_player", objNull, [objNull]]];
if (!isServer) exitWith {};
if ! (_player in allPlayers) exitWith {};
if (count(mav_taxi_v_callQueue select {
    (_x param[0, objNull]) isEqualTo _player
}) == 0) exitWith {};
mav_taxi_v_callQueue = mav_taxi_v_callQueue select {
    (_x param[0, objNull]) != _player
};
publicVariable "mav_taxi_v_callQueue";