class WLKR_Background {
    type = 0;
    idc = 124;
    style = 128;
    text = "";
    colorText[] = {
        0,
        0,
        0,
        0
    };
    font = "RobotoCondensed";
    sizeEx = 0;
    shadow = 0;
    x = 0.1;
    y = 0.1;
    w = 0.1;
    h = 0.1;
    colorbackground[] = {
        "(profilenamespace getvariable ['IGUI_BCG_RGB_R',0])",
        "(profilenamespace getvariable ['IGUI_BCG_RGB_G',1])",
        "(profilenamespace getvariable ['IGUI_BCG_RGB_B',1])",
        1
    };
};
class WLKR_RscButton_NavInvi {
    deletable = 0;
    fade = 0;
    access = 0;
    type = 1;
    text = "";
    colorText[] = {
        1,
        1,
        1,
        1
    };
    colorDisabled[] = {
        0.5,
        0.5,
        0.5,
        1
    };
    colorBackground[] = {
        0,
        0,
        0,
        0
    };
    colorBackgroundDisabled[] = {
        0,
        0,
        0,
        0
    };
    colorBackgroundActive[] = {
        0,
        0,
        0,
        0
    };
    colorFocused[] = {
        0,
        0,
        0,
        0
    };
    colorShadow[] = {
        0,
        0,
        0,
        0
    };
    colorBorder[] = {
        0,
        0,
        0,
        0
    };
    soundEnter[] = {
        "\A3\ui_f\data\sound\RscButton\soundEnter",
        0.09,
        1
    };
    soundPush[] = {
        "\A3\ui_f\data\sound\RscButton\soundPush",
        0.09,
        1
    };
    soundClick[] = {
        "\A3\ui_f\data\sound\RscButton\soundClick",
        0.09,
        1
    };
    soundEscape[] = {
        "\A3\ui_f\data\sound\RscButton\soundEscape",
        0.09,
        1
    };
    idc = -1;
    style = 2;
    x = 0;
    y = 0;
    w = 0.095589;
    h = 0.039216;
    shadow = 0;
    font = "PuristaMedium";
    sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    url = "";
    offsetX = 0;
    offsetY = 0;
    offsetPressedX = 0;
    offsetPressedY = 0;
    borderSize = 0;
};
class WLKR_RscButton {
    deletable = 0;
    fade = 0;
    access = 0;
    type = 1;
    text = "";
    colorText[] = {
        1,
        1,
        1,
        1
    };
    colorDisabled[] = {
        0.3,
        0.3,
        0.3,
        1
    };
    colorBackground[] = {
        0.055,
        0.161,
        0.294,
        1
    };
    colorBackgroundDisabled[] = {
        0.059,
        0.165,
        0.298,
        1
    };
    colorBackgroundActive[] = {
        0.114,
        0.325,
        0.588,
        1
    };
    colorFocused[] = {
        0,
        0,
        0,
        1
    };
    colorShadow[] = {
        0,
        0,
        0,
        0
    };
    colorBorder[] = {
        0,
        0,
        0,
        1
    };
    soundEnter[] = {
        "\A3\ui_f\data\sound\RscButton\soundEnter",
        0.09,
        1
    };
    soundPush[] = {
        "\A3\ui_f\data\sound\RscButton\soundPush",
        0.09,
        1
    };
    soundClick[] = {
        "\A3\ui_f\data\sound\RscButton\soundClick",
        0.09,
        1
    };
    soundEscape[] = {
        "\A3\ui_f\data\sound\RscButton\soundEscape",
        0.09,
        1
    };
    idc = -1;
    style = 2;
    x = 0;
    y = 0;
    w = 0.095589;
    h = 0.039216;
    shadow = 0;
    font = "PuristaLight";
    sizeEx = "4.32 * (1 / (getResolution select 3)) * pixelGrid * 0.5";
    url = "";
    offsetX = 0;
    offsetY = 0;
    offsetPressedX = 0;
    offsetPressedY = 0;
    borderSize = 0;
    period = 0;
    periodFocus = 0;
    periodOver = 999;
};
class WLKR_RscControlsGroup {
    deletable = 0;
    fade = 0;
    class VScrollbar {
        color[] = {
            0.055,
            0.161,
            0.294,
            1
        };
        colorActive[] = {
            1,
            1,
            1,
            1
        };
        colorDisabled[] = {
            1,
            1,
            1,
            0.3
        };
        colorBackground[] = {
            0,
            0,
            0,
            0
        };
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
        arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
        arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
        border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
        shadow = 0;
        scrollSpeed = 0.06;
        width = 0.021;
        height = 0;
        autoScrollEnabled = 1;
        autoScrollSpeed = -1;
        autoScrollDelay = 5;
        autoScrollRewind = 0;
    };
    class HScrollbar: VScrollbar {
        height = 0.023;
    };
    class Controls {};
    type = 15;
    idc = -1;
    x = 0;
    y = 0;
    w = 1;
    h = 1;
    shadow = 0;
    style = 16;
};
class WLKR_RscText {
    deletable = 0;
    fade = 0;
    access = 0;
    type = 0;
    idc = -1;
    colorBackground[] = {
        0,
        0,
        0,
        0
    };
    colorText[] = {
        1,
        1,
        1,
        1
    };
    text = "";
    fixedWidth = 0;
    x = 0;
    y = 0;
    h = 0.037;
    w = 0.3;
    style = 0;
    shadow = 0;
    colorShadow[] = {
        0,
        0,
        0,
        0
    };
    font = "RobotoCondensedLight";
    sizeEx = "4.32 * (1 / (getResolution select 3)) * pixelGrid * 0.65";
    linespacing = 1;
    tooltipColorText[] = {
        1,
        1,
        1,
        1
    };
    tooltipColorBox[] = {
        1,
        1,
        1,
        1
    };
    tooltipColorShade[] = {
        0,
        0,
        0,
        0.65
    };
};
class WLKR_RscEdit {
    deletable = 0;
    fade = 0;
    access = 0;
    type = 2;
    x = 0;
    y = 0;
    h = 0.04;
    w = 0.2;
    colorBackground[] = {
        1,
        1,
        1,
        1
    };
    colorText[] = {
        0.65,
        0.65,
        0.65,
        1
    };
    colorDisabled[] = {
        1,
        1,
        1,
        0.25
    };
    colorSelection[] = {
        "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
        "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
        "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
        1
    };
    autocomplete = "";
    text = "";
    size = 0.2;
    style = "0x00 + 0x40 + 512";
    font = "RobotoCondensedLight";
    shadow = 0;
    sizeEx = "4.32 * (1 / (getResolution select 3)) * pixelGrid * 0.5";
    canModify = 1;
    tooltipColorText[] = {
        1,
        1,
        1,
        1
    };
    tooltipColorBox[] = {
        1,
        1,
        1,
        1
    };
    tooltipColorShade[] = {
        0,
        0,
        0,
        0.65
    };
};
class WLKR_RscCombo {
    deletable = 0;
    fade = 0;
    access = 0;
    type = 4;
    colorSelect[] = {
        0,
        0,
        0,
        1
    };
    colorText[] = {
        1,
        1,
        1,
        1
    };
    colorBackground[] = {
        0.055,
        0.161,
        0.294,
        1
    };
    colorScrollbar[] = {
        1,
        0,
        0,
        1
    };
    colorDisabled[] = {
        1,
        1,
        1,
        0.25
    };
    colorPicture[] = {
        1,
        1,
        1,
        1
    };
    colorPictureSelected[] = {
        1,
        1,
        1,
        1
    };
    colorPictureDisabled[] = {
        1,
        1,
        1,
        0.25
    };
    colorPictureRight[] = {
        1,
        1,
        1,
        1
    };
    colorPictureRightSelected[] = {
        1,
        1,
        1,
        1
    };
    colorPictureRightDisabled[] = {
        1,
        1,
        1,
        0.25
    };
    colorTextRight[] = {
        1,
        1,
        1,
        1
    };
    colorSelectRight[] = {
        0,
        0,
        0,
        1
    };
    colorSelect2Right[] = {
        0,
        0,
        0,
        1
    };
    tooltipColorText[] = {
        1,
        1,
        1,
        1
    };
    tooltipColorBox[] = {
        1,
        1,
        1,
        1
    };
    tooltipColorShade[] = {
        0,
        0,
        0,
        0.65
    };
    soundSelect[] = {
        "\A3\ui_f\data\sound\RscCombo\soundSelect",
        0.1,
        1
    };
    soundExpand[] = {
        "\A3\ui_f\data\sound\RscCombo\soundExpand",
        0.1,
        1
    };
    soundCollapse[] = {
        "\A3\ui_f\data\sound\RscCombo\soundCollapse",
        0.1,
        1
    };
    maxHistoryDelay = 1;
    class ComboScrollBar {
        color[] = {
            1,
            1,
            1,
            1
        };
    };
    style = "0x10 + 0x200";
    font = "RobotoCondensedLight";
    sizeEx = "4.32 * (1 / (getResolution select 3)) * pixelGrid * 0.65";
    shadow = 0;
    x = 0;
    y = 0;
    w = 0.12;
    h = 0.035;
    colorSelectBackground[] = {
        1,
        1,
        1,
        0.7
    };
    arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
    arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
    wholeHeight = 0.45;
    colorActive[] = {
        1,
        0,
        0,
        1
    };
};
class WLKR_RscListBox {
    deletable = 0;
    fade = 0;
    access = 0;
    type = 5;
    rowHeight = 0;
    colorText[] = {
        1,
        1,
        1,
        1
    };
    colorDisabled[] = {
        1,
        1,
        1,
        0.25
    };
    colorScrollbar[] = {
        1,
        0,
        0,
        0
    };
    colorSelect[] = {
        0,
        0,
        0,
        1
    };
    colorSelect2[] = {
        0,
        0,
        0,
        1
    };
    colorSelectBackground[] = {
        0.95,
        0.95,
        0.95,
        0
    };
    colorSelectBackground2[] = {
        1,
        1,
        1,
        0
    };
    colorBackground[] = {
        0,
        0,
        0,
        0.3
    };
    soundSelect[] = {
        "\A3\ui_f\data\sound\RscListbox\soundSelect",
        0.09,
        1
    };
    autoScrollSpeed = -1;
    autoScrollDelay = 5;
    autoScrollRewind = 0;
    arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
    arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
    colorPicture[] = {
        1,
        1,
        1,
        1
    };
    colorPictureSelected[] = {
        1,
        1,
        1,
        1
    };
    colorPictureDisabled[] = {
        1,
        1,
        1,
        0.25
    };
    colorPictureRight[] = {
        1,
        1,
        1,
        1
    };
    colorPictureRightSelected[] = {
        1,
        1,
        1,
        1
    };
    colorPictureRightDisabled[] = {
        1,
        1,
        1,
        0.25
    };
    colorTextRight[] = {
        1,
        1,
        1,
        1
    };
    colorSelectRight[] = {
        0,
        0,
        0,
        1
    };
    colorSelect2Right[] = {
        0,
        0,
        0,
        1
    };
    tooltipColorText[] = {
        1,
        1,
        1,
        1
    };
    tooltipColorBox[] = {
        1,
        1,
        1,
        1
    };
    tooltipColorShade[] = {
        0,
        0,
        0,
        0.65
    };
    class ListScrollBar {
        color[] = {
            0.055,
            0.161,
            0.294,
            1
        };
        colorActive[] = {
            1,
            1,
            1,
            1
        };
        colorDisabled[] = {
            1,
            1,
            1,
            0.3
        };
        colorBackground[] = {
            0,
            0,
            0,
            0
        };
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
        arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
        arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
        border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
        shadow = 0;
        scrollSpeed = 0.06;
        width = 0.021;
        height = 0;
        autoScrollEnabled = 1;
        autoScrollSpeed = -1;
        autoScrollDelay = 5;
        autoScrollRewind = 0;
    };
    x = 0;
    y = 0;
    w = 0.3;
    h = 0.3;
    style = 16;
    font = "RobotoCondensedLight";
    sizeEx = "4.32 * (1 / (getResolution select 3)) * pixelGrid * 0.65";
    shadow = 0;
    colorShadow[] = {
        0,
        0,
        0,
        0.5
    };
    period = 1.2;
    maxHistoryDelay = 1;
};
class WLKR_RscStructuredText {
    deletable = 0;
    fade = 0;
    access = 0;
    type = 13;
    idc = -1;
    style = 0;
    colorText[] = {
        1,
        1,
        1,
        1
    };
    class Attributes {
        font = "RobotoCondensed";
        color = "#ffffff";
        colorLink = "#D09B43";
        align = "left";
        shadow = 1;
    };
    x = 0;
    y = 0;
    h = 0.035;
    w = 0.1;
    text = "";
    size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    shadow = 1;
};
class WLKR_RscPicture {
    deletable = 0;
    fade = 0;
    access = 0;
    type = 0;
    idc = -1;
    style = 48;
    colorBackground[] = {
        0,
        0,
        0,
        0
    };
    colorText[] = {
        1,
        1,
        1,
        1
    };
    font = "TahomaB";
    sizeEx = 0;
    lineSpacing = 0;
    text = "";
    fixedWidth = 0;
    shadow = 0;
    x = 0;
    y = 0;
    w = 0.2;
    h = 0.15;
    tooltipColorText[] = {
        1,
        1,
        1,
        1
    };
    tooltipColorBox[] = {
        1,
        1,
        1,
        1
    };
    tooltipColorShade[] = {
        0,
        0,
        0,
        0.65
    };
};
class wlkr_RscXSliderH {
    style = 1024;
    type = 43;
    shadow = 2;
    x = 0;
    y = 0;
    h = 0.029412;
    w = 0.400000;
    color[] = {
        1,
        1,
        1,
        0.7
    };
    colorActive[] = {
        1,
        1,
        1,
        1
    };
    colorDisabled[] = {
        1,
        1,
        1,
        0.500000
    };
    arrowEmpty = "\A3\ui_f\data\gui\cfg\slider\arrowEmpty_ca.paa";
    arrowFull = "\A3\ui_f\data\gui\cfg\slider\arrowFull_ca.paa";
    border = "\A3\ui_f\data\gui\cfg\slider\border_ca.paa";
    thumb = "\A3\ui_f\data\gui\cfg\slider\thumb_ca.paa";
};