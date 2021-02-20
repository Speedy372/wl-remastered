myUpdate = false;
uisleep 2;
_myInjuriesToUpdate = player getVariable "playerInjuriesToUpdate";
player setVariable["playerInjuries", _myInjuriesToUpdate, true];
profileNamespace setVariable["playerInjuries", _myInjuriesToUpdate];
myUpdate = true;