class MAV_ctrlButton: MAV_ctrlDefaultButton {
    type = CT_BUTTON;
    style = ST_CENTER + ST_UPPERCASE;
    colorBackground[] = {
        0.1,
        0.1,
        0.1,
        1
    };
    colorBackgroundDisabled[] = {
        0.1,
        0.1,
        0.1,
        0.5
    };
    colorBackgroundActive[] = {
        0.1,
        0.1,
        0.1,
        0.5
    };
    colorFocused[] = {
        0.1,
        0.1,
        0.1,
        0.5
    };
    font = FONT2_THIN;
    text = "";
    colorText[] = {
        COLOR_TEXT_RGBA
    };
    colorDisabled[] = {
        COLOR_TEXT_RGB,
        0.25
    };
    borderSize = 0;
    colorBorder[] = {
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
    offsetX = 0;
    offsetY = 0;
    offsetPressedX = pixelW;
    offsetPressedY = pixelH;
    period = 0;
    periodFocus = 2;
    periodOver = 0.5;
    class KeyHints {
        class A {
            key = KEY_XBOX_A;
            hint = "KEY_XBOX_A";
        }
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
class MAV_ctrlButtonPicture: MAV_ctrlButton {
    style = ST_CENTER + ST_PICTURE;
};
class MAV_ctrlButtonPictureKeepAspect: MAV_ctrlButton {
    style = ST_CENTER + ST_PICTURE + ST_KEEP_ASPECT_RATIO;
};
class MAV_ctrlButtonOK: MAV_ctrlButton {
default = 1;
    idc = IDC_OK;
    text = $STR_DISP_OK;
};
class MAV_ctrlButtonCancel:
MAV_ctrlButton {
    idc = IDC_CANCEL;
    text = $STR_DISP_CANCEL;
};
class MAV_ctrlButtonClose: MAV_ctrlButtonCancel {
    text = $STR_DISP_CLOSE;
};
class MAV_ctrlButtonToolbar: MAV_ctrlButtonPictureKeepAspect {
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
};
class MAV_ctrlButtonSearch: MAV_ctrlButton {
    style = ST_CENTER + ST_PICTURE + ST_KEEP_ASPECT_RATIO;
    text = "\a3\3DEN\Data\Displays\Display3DEN\search_start_ca.paa";
    textSearch = "\a3\3DEN\Data\Displays\Display3DEN\search_end_ca.paa";
    tooltip = $STR_3den_display3den_menubar_search_text;
};
class MAV_ctrlButtonExpandAll: MAV_ctrlButtonToolbar {
    style = ST_CENTER + ST_PICTURE + ST_KEEP_ASPECT_RATIO;
    text = "\a3\3DEN\Data\Displays\Display3DEN\tree_expand_ca.paa";
    tooltip = $STR_3DEN_ctrlButtonExpandAll_text;
};
class MAV_ctrlButtonCollapseAll: MAV_ctrlButtonToolbar {
    style = ST_CENTER + ST_PICTURE + ST_KEEP_ASPECT_RATIO;
    text = "\a3\3DEN\Data\Displays\Display3DEN\tree_collapse_ca.paa";
    tooltip = $STR_3DEN_ctrlButtonCollapseAll_text;
};
class MAV_ctrlButtonFilter: MAV_ctrlButton {
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
        1,
        1,
        1,
        0.3
    };
    colorFocused[] = {
        0,
        0,
        0,
        0
    };
};