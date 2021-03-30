class MAV_ctrlActiveText: MAV_ctrlDefaultButton {
    type = CT_ACTIVETEXT;
    text = "";
    color[] = {
        COLOR_ACTIVE_RGB,
        0.75
    };
    colorActive[] = {
        COLOR_ACTIVE_RGBA
    };
    colorDisabled[] = {
        COLOR_ACTIVE_RGBA
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
class MAV_ctrlActivePicture: MAV_ctrlActiveText {
    style = ST_PICTURE;
    color[] = {
        COLOR_TEXT_RGBA
    };
};
class MAV_ctrlActivePictureKeepAspect: MAV_ctrlActiveText {
    style = ST_PICTURE + ST_KEEP_ASPECT_RATIO;
};