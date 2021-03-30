class MAV_ctrlToolbox: MAV_ctrlDefaultText {
    type = CT_TOOLBOX;
    style = ST_CENTER;
    colorText[] = {
        1,
        1,
        1,
        1
    };
    colorTextSelect[] = {
        1,
        1,
        1,
        1
    };
    rows = 1;
    columns = 1;
    strings[] = {};
    values[] = {};
    color[] = {
        1,
        0,
        1,
        1
    };
    colorSelect[] = {
        0,
        0,
        0,
        0
    };
    colorTextDisable[] = {
        0,
        0,
        0,
        0
    };
    colorDisable[] = {
        0,
        0,
        0,
        0
    };
    colorBackground[] = {
        1,
        1,
        1,
        0.05
    };
    colorSelectedBg[] = {
        0.99,
        0.49,
        0,
        1
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
    onToolBoxSelChanged = "";
};
class MAV_ctrlToolboxPicture: MAV_ctrlToolbox {
    style = ST_CENTER + ST_PICTURE;
};
class MAV_ctrlToolboxPictureKeepAspect: MAV_ctrlToolbox {
    style = ST_CENTER + ST_PICTURE + ST_KEEP_ASPECT_RATIO;
};