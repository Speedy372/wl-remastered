private["_pName", "_pUID", "_pReason"];
_pName = [_this, 0, "", [""]] call BIS_fnc_param;
_pUID = [_this, 1, "", [""]] call BIS_fnc_param;
_pReason = [_this, 2, "", [""]] call BIS_fnc_param;
if (_pName isEqualTo "" || _pUID isEqualTo "" || _pReason isEqualTo "") exitWith {};
diag_log format[localize "STR_SpyDetect_Observes", _pName, _pUID, _pReason];