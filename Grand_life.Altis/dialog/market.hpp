#define GUI_GRID_X(0)#define GUI_GRID_Y(0)#define GUI_GRID_W(0.025)#define GUI_GRID_H(0.04)#define GUI_GRID_WAbs(1)#define GUI_GRID_HAbs(1)
class marketView {
    idd = 39500;
    movingEnabled = 0;
    enableSimulation = 1;
    class controlsBackground {
        class RscStructuredText_1100: Life_RscStructuredText {
            idc = 1100;
            text = "<t size='1.2' align='center'>MARKET</t>";
            x = 5 * GUI_GRID_W + GUI_GRID_X;
            y = 1 * GUI_GRID_H + GUI_GRID_Y;
            w = 30 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            colorBackground[] = {
                0,
                0,
                0,
                0.8
            };
        };
        class IGUIBack_2200: IGUIBack {
            idc = 2200;
            x = 5 * GUI_GRID_W + GUI_GRID_X;
            y = 2 * GUI_GRID_H + GUI_GRID_Y;
            w = 30 * GUI_GRID_W;
            h = 21 * GUI_GRID_H;
        };
        class lblResourceName: Life_RscText {
            idc = 1000;
            text = "Resource";
            x = 16.5 * GUI_GRID_W + GUI_GRID_X;
            y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 18 * GUI_GRID_W;
            h = 2.5 * GUI_GRID_H;
            sizeEx = 2 * GUI_GRID_H;
        };
        class IGUIBack_2201: IGUIBack {
            idc = 2201;
            x = 17 * GUI_GRID_W + GUI_GRID_X;
            y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 17 * GUI_GRID_W;
            h = 2.5 * GUI_GRID_H;
        };
        class lblResourcePrice: Life_RscText {
            idc = 1001;
            text = "XXXXXXXXXXXXX$";
            x = 17 * GUI_GRID_W + GUI_GRID_X;
            y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 17 * GUI_GRID_W;
            h = 2.5 * GUI_GRID_H;
            colorText[] = {
                0,
                1,
                0,
                1
            };
            sizeEx = 1.3 * GUI_GRID_H;
        };
        class IGUIBack_2202: IGUIBack {
            idc = 2202;
            x = 17 * GUI_GRID_W + GUI_GRID_X;
            y = 10 * GUI_GRID_H + GUI_GRID_Y;
            w = 17 * GUI_GRID_W;
            h = 12 * GUI_GRID_H;
        };
        class RscStructuredText_1101: Life_RscStructuredText {
            idc = 1101;
            text = "<t align='center'>Kurs</t>";
            x = 17 * GUI_GRID_W + GUI_GRID_X;
            y = 9 * GUI_GRID_H + GUI_GRID_Y;
            w = 17 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            colorBackground[] = {
                0,
                0,
                0,
                0.8
            };
        };
        class picTrendGlobal: Life_RscPicture {
            idc = 1200;
            text = "#(argb,8,8,3)color(1,1,1,1)";
            x = 17.5 * GUI_GRID_W + GUI_GRID_X;
            y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3 * GUI_GRID_W;
            h = 2.5 * GUI_GRID_H;
        };
        class picTrendLocal: Life_RscPicture {
            idc = 1201;
            text = "#(argb,8,8,3)color(1,1,1,1)";
            x = 17.5 * GUI_GRID_W + GUI_GRID_X;
            y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 3 * GUI_GRID_W;
            h = 2.5 * GUI_GRID_H;
        };
        class RscText_1002: Life_RscText {
            idc = 1002;
            text = "W długim czasie";
            x = 20.5 * GUI_GRID_W + GUI_GRID_X;
            y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 13 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            sizeEx = 1.2 * GUI_GRID_H;
        };
        class RscText_1003: Life_RscText {
            idc = 1003;
            text = "W krótkim czasie";
            x = 20.5 * GUI_GRID_W + GUI_GRID_X;
            y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 13 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            sizeEx = 1.2 * GUI_GRID_H;
        };
        class lblTrendGlobal: Life_RscText {
            idc = 1004;
            text = "xxxxxxxx$";
            x = 20.5 * GUI_GRID_W + GUI_GRID_X;
            y = 11.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 13 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class lblTrendLocal: Life_RscText {
            idc = 1005;
            text = "xxxxxxxx$";
            x = 20.5 * GUI_GRID_W + GUI_GRID_X;
            y = 14.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 13 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
    };
    class controls {
        class bClose: Life_RscButtonMenu {
            idc = 2400;
            text = "Close";
            x = 5 * GUI_GRID_W + GUI_GRID_X;
            y = 23 * GUI_GRID_H + GUI_GRID_Y;
            w = 30 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
            onButtonClick = "closeDialog 0;";
        };
        class listResources: Life_RscListBox {
            idc = 1500;
            x = 5.5 * GUI_GRID_W + GUI_GRID_X;
            y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 10.5 * GUI_GRID_W;
            h = 19.5 * GUI_GRID_H;
            onLBSelChanged = "[] spawn life_fnc_refreshMarketView";
        };
    };
};