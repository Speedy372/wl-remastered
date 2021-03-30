class MAV_ctrlListNBox: MAV_ctrlDefaultText {
    type = CT_LISTNBOX;
    style = ST_LEFT + LB_TEXTURES;
    colorSelectBackground[] = {
        0.2,
        0.2,
        0.2,
        0.75
    };
    colorSelectBackground2[] = {
        0.2,
        0.2,
        0.2,
        0.75
    };
    colorText[] = {
        COLOR_TEXT_RGBA
    };
    colorDisabled[] = {
        COLOR_TEXT_RGB,
        0.25
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
    colorShadow[] = {
        0,
        0,
        0,
        0.5
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
    columns[] = {
        0
    };
    drawSideArrows = 0;
    idcLeft = -1;
    idcRight = -1;
    period = 1;
    disableOverflow = 0;
    rowHeight = SIZEEX_PURISTA(SIZEEX_M);
    maxHistoryDelay = 1;
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
};