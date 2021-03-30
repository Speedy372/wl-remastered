class MAV_ctrlCheckboxes: MAV_ctrlDefaultText {
    type = CT_CHECKBOXES;
    colorBackground[] = {
        COLOR_OVERLAY_RGBA
    };
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
    checked_strings[] = {};
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
    colorSelectedBg[] = {
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
    onCheckBoxesSelChanged = "";
};
class MAV_ctrlCheckboxesCheckbox: MAV_ctrlCheckboxes {
    style = ST_PICTURE;
    strings[] = {
        "\a3\3DEN\Data\Controls\ctrlCheckbox\textureUnchecked_ca.paa"
    };
    checked_strings[] = {
        "\a3\3DEN\Data\Controls\ctrlCheckbox\textureChecked_ca.paa"
    };
    colorBackground[] = {
        0,
        0,
        0,
        0
    };
    colorSelectedBg[] = {
        0,
        0,
        0,
        0
    };
};