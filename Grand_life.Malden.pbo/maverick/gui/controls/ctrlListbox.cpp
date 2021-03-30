class MAV_ctrlListbox: MAV_ctrlDefaultText {
    type = CT_LISTBOX;
    style = ST_LEFT + LB_TEXTURES;
    colorBackground[] = {
        0,
        0,
        0,
        0.2
    };
    colorSelectBackground[] = {
        1,
        0.5,
        0,
        0.5
    };
    colorSelectBackground2[] = {
        1,
        0.5,
        0,
        0.5
    };
    colorShadow[] = {
        0,
        0,
        0,
        0
    };
    colorDisabled[] = {
        COLOR_TEXT_RGB,
        0.25
    };
    colorText[] = {
        COLOR_TEXT_RGBA
    };
    colorSelect[] = {
        1,
        1,
        1,
        1
    };
    colorSelect2[] = {
        1,
        1,
        1,
        1
    };
    colorTextRight[] = {
        COLOR_TEXT_RGBA
    };
    colorSelectRight[] = {
        1,
        1,
        1,
        1
    };
    colorSelect2Right[] = {
        1,
        1,
        1,
        1
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
    period = 1;
    rowHeight = SIZEEX_PURISTA(SIZEEX_M);
    itemSpacing = 0;
    maxHistoryDelay = 1;
    canDrag = 0;
    soundSelect[] = {
        "\A3\ui_f\data\sound\RscListbox\soundSelect",
        0.09,
        1
    };
    class ListScrollBar: ScrollBar {};
    onCanDestroy = "";
    onDestroy = "";
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
    onLBSelChanged = "";
    onLBDblClick = "";
    onLBDrag = "";
    onLBDragging = "";
    onLBDrop = "";
};