class MAV_ctrlShortcutButton: MAV_ctrlDefaultButton {
    type = CT_SHORTCUTBUTTON;
    style = ST_UPPERCASE;
    colorBackground[] = {
        0,
        0,
        0,
        1
    };
    colorBackground2[] = {
        COLOR_ACTIVE_RGBA
    };
    colorBackgroundFocused[] = {
        COLOR_ACTIVE_RGBA
    };
    colorBackgroundActive[] = {
        COLOR_ACTIVE_RGBA
    };
    text = "";
    size = SIZEEX_PURISTA(SIZE_M);
    shadow = 0;
    color[] = {
        COLOR_TEXT_RGBA
    };
    color2[] = {
        COLOR_TEXT_RGBA
    };
    colorFocused[] = {
        COLOR_TEXT_RGBA
    };
    colorDisabled[] = {
        COLOR_TEXT_RGB,
        0.25
    };
    animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)";
    animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
    animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
    animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
    animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1)";
    animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
    period = 1;
    periodFocus = 1;
    periodOver = 0.5;
    shortcuts[] = {
        KEY_XBOX_A,
        DIK_RETURN,
        DIK_SPACE,
        DIK_NUMPADENTER
    };
    textureNoShortcut = "#(argb,8,8,3)color(1,1,1,1)";
    class Attributes {
        align = "center";
        color = "#ffffff";
        font = FONT2_THIN;
        shadow = 0;
    };
    class HitZone {
        left = 0;
        top = 0;
        right = 0;
        bottom = 0;
    };
    class TextPos {
        left = 0;
        top = 0;
        right = 0;
        bottom = 0;
    };
    class ShortcutPos {
        left = 0;
        top = 0;
        w = 0;
        h = 0;
    };
    onCanDestroy = "";
    onDestroy = "";
    onMouseEnter = "";
    onMouseExit = "";
    onSetFocus = "";
    onKillFocus = "";
    onKeyDown = "";
    onKeyUp = "";
    onMouseButtonDown = "";
    onMouseButtonUp = "";
    onMouseButtonClick = "";
    onMouseButtonDblClick = "";
    onMouseZChanged = "";
    onMouseMoving = "";
    onMouseHolding = "";
    onButtonClick = "";
    onButtonDown = "";
    onButtonUp = "";
};
class MAV_ctrlShortcutButtonOK: MAV_ctrlShortcutButton {
default = 1;
    idc = IDC_OK;
    text = $STR_DISP_OK;
};
class MAV_ctrlShortcutButtonCancel:
MAV_ctrlShortcutButton {
    idc = IDC_CANCEL;
    text = $STR_DISP_CANCEL;
};
class MAV_ctrlShortcutButtonSteam: MAV_ctrlShortcutButton {
    colorBackground[] = {
        0.0313725490196078,
        0.7215686274509804,
        0.9176470588235294,
        1.0
    };
    textureNoShortcut = "\a3\3DEN\Data\Controls\CtrlShortcutButton\steam_ca.paa";
    class TextPos {
        left = 1.5 * SIZE_M * GRID_W;
        top = 0;
        right = 0;
        bottom = 0;
    };
    class ShortcutPos {
        left = 0;
        top = 0;
        w = SIZE_M * GRID_W;
        h = SIZE_M * GRID_H;
    };
};