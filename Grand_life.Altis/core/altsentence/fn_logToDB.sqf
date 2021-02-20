params["_array", "_mode"];
if (_mode == "") exitWith {};
private _query = "";
private _splitArray = _array splitString "@";
switch (_mode) do {
case "BankLog":
    {
        if (_splitArray select 1 == "DEPOSIT" || _splitArray select 1 == "WITHDRAW") then {
            _query = format["INSERT INTO BankLog (created_at, action, who, who_id, amount, cash, bank) VALUES('%1', '%2', '%3', '%4', '%5', '%6', '%7')", _splitArray select 0, _splitArray select 1, _splitArray select 2, _splitArray select 3, _splitArray select 4, _splitArray select 5, _splitArray select 6];
            [_query, 1] call DB_fnc_asyncCall;
        };
        if (_splitArray select 1 == "TRANSFER") then {
            _query = format["INSERT INTO BankLog (created_at, action, who, who_id, amount, to_who, to_who_id) VALUES('%1', '%2', '%3', '%4', '%5', '%6', '%7')", _splitArray select 0, _splitArray select 1, _splitArray select 2, _splitArray select 3, _splitArray select 4, _splitArray select 5, _splitArray select 6];
            [_query, 1] call DB_fnc_asyncCall;
        };
    }; case "BuyLog": {
        if (_splitArray select 1 == "VEHICLE") then {
            _query = format["INSERT INTO BuyLog (created_at, action, who, who_id, what, price, cash) VALUES('%1', '%2', '%3', '%4', '%5', '%6', '%7')", _splitArray select 0, _splitArray select 1, _splitArray select 2, _splitArray select 3, _splitArray select 4, _splitArray select 5, _splitArray select 6];
            [_query, 1] call DB_fnc_asyncCall;
        };
        if (_splitArray select 1 == "VIRT") then {
            _query = format["INSERT INTO BankLog (created_at, action, who, who_id, what, amount, price, cash) VALUES('%1', '%2', '%3', '%4', '%5', '%6', '%7', '%8')", _splitArray select 0, _splitArray select 1, _splitArray select 2, _splitArray select 3, _splitArray select 4, _splitArray select 5, _splitArray select 6, _splitArray select 7];
            [_query, 1] call DB_fnc_asyncCall;
        };
    };
};