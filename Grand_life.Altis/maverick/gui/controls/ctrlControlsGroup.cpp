class MAV_ctrlControlsGroup: MAV_ctrlDefault {
    type = CT_CONTROLS_GROUP;
    style = LB_TEXTURES;
    x = 0;
    y = 0;
    w = 1;
    h = 1;
    class VScrollBar: ScrollBar {
        width = 2 * GRID_W;
        height = 0;
        autoScrollEnabled = 0;
        autoScrollDelay = 1;
        autoScrollRewind = 1;
        autoScrollSpeed = 1;
    };
    class HScrollBar: ScrollBar {
        width = 0;
        height = 2 * GRID_H;
    };
    onCanDestroy = "";
    onDestroy = "";
    onMouseButtonDown = "";
    onMouseButtonUp = "";
    onMouseButtonClick = "";
    onMouseButtonDblClick = "";
    onMouseZChanged = "";
    onMouseMoving = "";
    onMouseHolding = "";
};
class MAV_ctrlControlsGroupNoScrollbars: MAV_ctrlControlsGroup {
    class VScrollbar: VScrollbar {
        width = 0;
    };
    class HScrollbar: HScrollbar {
        height = 0;
    };
};
class MAV_ctrlControlsGroupNoHScrollbars: MAV_ctrlControlsGroup {
    class HScrollbar: HScrollbar {
        height = 0;
    };
};
class MAV_ctrlControlsGroupNoVScrollbars: MAV_ctrlControlsGroup {
    class VScrollbar: VScrollbar {
        width = 0;
    };
};