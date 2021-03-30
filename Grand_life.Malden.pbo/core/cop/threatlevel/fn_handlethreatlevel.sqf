_poziom = _this select 0;
[_poziom] remoteExec["life_fnc_changeCode", -2];
switch (_poziom) do {
case "0":
    {
        codeVar setVariable["threatlevel", 1, true];
    }; case "1": {
        codeVar setVariable["threatlevel", 2, true];
    };
case "2":
    {
        codeVar setVariable["threatlevel", 3, true];
    };
case "3":
    {
        codeVar setVariable["threatlevel", 4, true];
    };
};