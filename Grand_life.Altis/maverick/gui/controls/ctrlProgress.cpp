class MAV_ctrlProgress: MAV_ctrlDefault {
    type = CT_PROGRESS;
    texture = "#(argb,8,8,3)color(1,1,1,1)";
    colorBar[] = {
        COLOR_ACTIVE_RGBA
    };
    colorFrame[] = {
        0,
        0,
        0,
        1
    };
    onCanDestroy = "";
    onDestroy = "";
};