[] spawn {
    _messages = ["Jeśli potrzebujesz pomocy, sprawdź nasze forum: <br/> <t color='#e32828' size='1.5'>https://grandlife.pl/</t>", "Serdecznie zapraszamy na nasz serwer TeamSpeak3: <br/><t color='#e32828' size='1.5'>grandlife</t>"];
    _refreshTime = 900;
    _i = 0;
    while {
        true
    }
    do {
        _count = count _messages;
        _message = _messages select _i;
        hint parseText format["<t color='#ffffff' size='2'>Grand</t><t color='#2ecc40' size='2'>Life</t><br/><br/><img shadown='false' size='6' image='textures\cop_uniform.jpg'/><br/><br/>%1", _message];
        sleep _refreshTime;
        if (_i == (_count - 1)) then {
            _i = 0;
        } else {
            _i = _i + 1;
        };
    };
};