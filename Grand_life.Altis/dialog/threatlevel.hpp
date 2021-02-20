class Life_Threat_Level {
    idd = 2720;
    name = "Life_Threat_Level";
    movingEnable = 0;
    enableSimulation = 1;
    onLoad = "";
    class controlsBackground {
        class MainBG: Life_RscText {
            idc = 1000;
            x = 0.3625;
            y = 0.42;
            w = 0.3;
            h = 0.4;
            colorBackground[] = {
                0,
                0,
                0,
                0.7
            };
        };
        class TOP: Life_RscText {
            idc = 2200;
            text = "KODY";
            x = 0.3625;
            y = 0.38;
            w = 0.3;
            h = 0.04;
            colorText[] = {
                0,
                0,
                0,
                1
            };
            colorBackground[] = {
                0,
                0.533,
                1,
                1
            };
        };
    };
    class Controls {
        class ThreatList: Life_RscListBox {
            idc = 1102;
            sizeEx = 0.035;
            x = 0.375;
            y = 0.44;
            w = 0.275;
            h = 0.36;
        };
        class submit: Life_RscButtonMenu {
            idc = 1105;
            x = 0.3625;
            y = 0.82;
            w = 0.15;
            h = 0.04;
            text = "Set";
            onButtonClick = "call life_fnc_ThreatLevelPressed;";
        };
        class cancel: Life_RscButtonMenu {
            idc = 1104;
            x = 0.5125;
            y = 0.82;
            w = 0.15;
            h = 0.04;
            text = "Close";
            onButtonClick = "closedialog 0;";
        };
    };
};