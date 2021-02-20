class MAV_ctrlXListbox: MAV_ctrlDefaultText {
    type = CT_XLISTBOX;
    style = SL_HORZ + ST_CENTER + LB_TEXTURES;
    color[] = {
        1,
        1,
        1,
        1
    };
    colorActive[] = {
        COLOR_ACTIVE_RGBA
    };
    colorText[] = {
        COLOR_TEXT_RGBA
    };
    colorSelect[] = {
        COLOR_ACTIVE_RGBA
    };
    colorDisabled[] = {
        COLOR_TEXT_RGB,
        0.25
    };
    colorPicture[] = {
        1,
        1,
        1,
        1
    };
    cycle = 1;
    arrowEmpty = "\a3\3DEN\Data\Controls\CtrlXSlider\arrowEmpty_ca.paa";
    arrowFull = "\a3\3DEN\Data\Controls\CtrlXSlider\arrowFull_ca.paa";
    border = "\a3\3DEN\Data\Controls\CtrlXSlider\border_ca.paa";
    soundSelect[] = {
        "\A3\ui_f\data\sound\RscListbox\soundSelect",
        0.09,
        1
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
    onLBSelChanged = "";
    onLBDblClick = "";
};