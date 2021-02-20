#include < core\treasure_hunting\macro.h > private["_amount", "_artifacts", "_txt", "_itemToAdd", "_itemArr", "_baseContents", "_containerLoot", "_finding", "_contentsAmount", "_combinedWeight", "_lvl"];
if (playerSide == west) exitWith {
    hint "Policja nie może otwierać kufrów.";
};
if (playerSide == east) exitWith {
    hint "Pomoc drogowa nie może otwierać kufrów.";
};
if (playerSide == independent) exitWith {
    hint "Medycy nie mogą otwierać kufrów.";
};
closeDialog 0;
closeDialog 0;
_container = _this select 0;
_amount = 1;
_itemArr = [];
_containerLoot = [];
_combinedWeight = 0;
switch (_container) do {
case "woodencontainer":
    {
        _lvl = 0;
        _baseContents = 6;
        _itemArr = [["silvercoins", 15], ["pottery", 15], ["stoneknife", 15], ["stoneaxe", 10], ["goldcoins", 5], ["jewellery", 5]]
    }; case "smallchest": {
        _lvl = 0;
        _baseContents = 7;
        _itemArr = [["silvercoins", 15], ["pottery", 15], ["stoneknife", 15], ["stoneaxe", 10], ["goldcoins", 5], ["jewellery", 5]]
    };
case "mediumchest":
    {
        _lvl = 5;
        _baseContents = 10;
        _itemArr = [["silvercoins", 15], ["pottery", 15], ["stoneknife", 15], ["stoneaxe", 11], ["goldcoins", 5], ["jewellery", 5]]
    };
case "leadbox":
    {
        _lvl = 10;
        _baseContents = 10;
        _itemArr = [["silvercoins", 15], ["pottery", 15], ["stoneknife", 16], ["stoneaxe", 12], ["goldcoins", 6], ["jewellery", 6]]
    };
case "largechest":
    {
        _lvl = 15;
        _baseContents = 12;
        _itemArr = [["silvercoins", 15], ["pottery", 15], ["stoneknife", 16], ["stoneaxe", 12], ["goldcoins", 7], ["jewellery", 7]]
    };
case "hugechest":
    {
        _lvl = 20;
        _baseContents = 15;
        _itemArr = [["silvercoins", 15], ["pottery", 15], ["stoneknife", 16], ["stoneaxe", 13], ["goldcoins", 8], ["jewellery", 8]]
    };
}; _contentsAmount = round(random[_baseContents - floor(_baseContents / 2), _baseContents, _baseContents + floor(_baseContents * 2)]);
for "_i"
from 0 to _contentsAmount do {
    _finding = [_itemArr] call HL_SelectByChance;
    _containerLoot pushBack _finding;
    _weight = M_CONFIG(getNumber, "VirtualItems", _finding, "weight");
    _combinedWeight = _combinedWeight + _weight;
}; if (_combinedWeight > (life_maxWeight - life_carryWeight)) then {
    hint "Za mało miejsca w ekwipunku.";
} else {
    [false, _container, 1] call life_fnc_handleInv; {
        [true, _x, 1] call life_fnc_handleInv;
    }
    forEach _containerLoot;
};