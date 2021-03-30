createDialog "The_Programmer_Iphone_Weather_Menu";
disableSerialization;
_display = findDisplay 25800;
_weather_image_NOW = _display displayCtrl 25801;
_weather_text_NOW = _display displayCtrl 25802;
_weather_image_NEXT = _display displayCtrl 25803;
_overcast = overcast;
_fog = fog;
_curImg = "";
_curTxt = "";
_nextImg = "";
switch (true) do {
case(_fog > 0.9):
    {
        _curImg = "The-Programmer\Iphone_X\textures\weather\orage.paa";
        _curTxt = "Stormy";
    };
case(_fog > 0.7):
    {
        _curImg = "The-Programmer\Iphone_X\textures\weather\pluie.paa";
        _curTxt = "Rainy";
    };
case(_fog > 0.4):
    {
        _curImg = "The-Programmer\Iphone_X\textures\weather\nuage.paa";
        _curTxt = "Cloudy";
    };
default {
        _curImg = "The-Programmer\Iphone_X\textures\weather\soleil.paa";
        _curTxt = "Sunny";
    };
}; switch (true) do {
case(_overcast > 0.9):
    {
        _nextImg = "The-Programmer\Iphone_X\textures\weather\orage.paa";
    };
case(_overcast > 0.7):
    {
        _nextImg = "The-Programmer\Iphone_X\textures\weather\pluie.paa";
    };
case(_overcast > 0.4):
    {
        _nextImg = "The-Programmer\Iphone_X\textures\weather\nuage.paa";
    };
default {
        _nextImg = "The-Programmer\Iphone_X\textures\weather\soleil.paa";
    };
}; _weather_image_NOW ctrlSetText _curImg;
_weather_text_NOW ctrlSetStructuredText parseText format["<t align='center'><t size='1.6'>%1</t></t>", _curTxt];
_weather_image_NEXT ctrlSetText _nextImg;