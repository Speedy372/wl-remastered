class MAV_ctrlSliderV: MAV_ctrlDefault {
    type = CT_SLIDER;
    style = SL_VERT;
    color[] = {
        0,
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
    colorActive[] = {
        COLOR_ACTIVE_RGBA
    };
    sliderRange[] = {
        0,
        1
    };
    sliderPosition = 1;
    lineSize = 0.1;
    pageSize = 3;
    class Title {
        idc = -1;
        colorBase[] = {
            1,
            1,
            1,
            1
        };
        colorActive[] = {
            COLOR_ACTIVE_RGBA
        };
    };
    class Value {
        idc = -1;
        format = "%.f";
        type = SPTPlain;
        colorBase[] = {
            1,
            1,
            1,
            1
        };
        colorActive[] = {
            COLOR_ACTIVE_RGBA
        };
    };
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
    onSliderPosChanged = "";
};
class MAV_ctrlSliderH: MAV_ctrlSliderV {
    style = SL_HORZ;
};