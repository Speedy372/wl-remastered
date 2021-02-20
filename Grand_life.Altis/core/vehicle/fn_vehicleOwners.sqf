private["_return", "_format"];
_return = ""; {
    _format = format["%1<br/>", _x select 1];
    _return = _return + _format;
}
forEach(_this select 0);
_return;