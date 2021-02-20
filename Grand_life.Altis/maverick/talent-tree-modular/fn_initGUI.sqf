scriptName "fn_initGUI";#define __filename "fn_initGUI.sqf"
if (isServer && !hasInterface) exitWith {};
0 spawn compileFinal preprocessFileLineNumbers "maverick\talent-tree-modular\gui\_init.sqf";