class MAV_ctrlTree: MAV_ctrlDefaultText {
    type = CT_TREE;
    colorBorder[] = {
        0,
        0,
        0,
        0
    };
    colorLines[] = {
        0,
        0,
        0,
        0
    };
    colorBackground[] = {
        0,
        0,
        0,
        0.2
    };
    colorSelect[] = {
        1,
        0.5,
        0,
        0.5
    };
    colorSelectBackground[] = {
        0,
        0,
        0,
        0
    };
    colorMarked[] = {
        1,
        0.5,
        0,
        0.5
    };
    colorMarkedSelected[] = {
        1,
        0.5,
        0,
        1
    };
    colorText[] = {
        COLOR_TEXT_RGBA
    };
    colorSelectText[] = {
        1,
        1,
        1,
        1
    };
    colorMarkedText[] = {
        1,
        1,
        1,
        1
    };
    colorSearch[] = {
        COLOR_ACTIVE_RGBA
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
    multiselectEnabled = 0;
    expandOnDoubleclick = 1;
    hiddenTexture = "\a3\3DEN\Data\Controls\ctrlTree\hiddenTexture_ca.paa";
    expandedTexture = "\a3\3DEN\Data\Controls\ctrlTree\expandedTexture_ca.paa";
    maxHistoryDelay = 1;
    disableKeyboardSearch = 0;
    class ScrollBar: ScrollBar {
        scrollSpeed = 0.05;
    };
    colorDisabled[] = {
        0,
        0,
        0,
        0
    };
    colorArrow[] = {
        0,
        0,
        0,
        0
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
    onTreeSelChanged = "";
    onTreeLButtonDown = "";
    onTreeDblClick = "";
    onTreeExpanded = "";
    onTreeCollapsed = "";
    onTreeMouseExit = "";
};