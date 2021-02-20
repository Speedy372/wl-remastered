class MAV_ctrlXSliderV: MAV_ctrlDefault {
    type = CT_XSLIDER;
    style = SL_VERT;
    color[] = {
        1,
        1,
        1,
        0.6
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
        0.25
    };
    sliderRange[] = {
        0,
        1
    };
    sliderPosition = 1;
    lineSize = 0.1;
    arrowEmpty = "\a3\3DEN\Data\Controls\CtrlXSlider\arrowEmpty_ca.paa";
    arrowFull = "\a3\3DEN\Data\Controls\CtrlXSlider\arrowFull_ca.paa";
    border = "\a3\3DEN\Data\Controls\CtrlXSlider\border_ca.paa";
    thumb = "\a3\3DEN\Data\Controls\CtrlXSlider\thumb_ca.paa";
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
class MAV_ctrlXSliderH: MAV_ctrlXSliderV {
    style = SL_HORZ;
};