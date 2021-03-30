class MAV_ctrlEdit: MAV_ctrlDefaultText {
    type = CT_EDIT;
    colorBackground[] = {
        COLOR_OVERLAY_RGBA
    };
    text = "";
    colorText[] = {
        COLOR_TEXT_RGBA
    };
    colorDisabled[] = {
        COLOR_TEXT_RGB,
        0.25
    };
    colorSelection[] = {
        COLOR_ACTIVE_RGBA
    };
    canModify = 1;
    autocomplete = "";
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
};
class MAV_ctrlEditMulti: MAV_ctrlEdit {
    style = ST_MULTI;
};