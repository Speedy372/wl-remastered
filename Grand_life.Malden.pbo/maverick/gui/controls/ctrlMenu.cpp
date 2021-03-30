class MAV_ctrlMenu: MAV_ctrlDefaultText {
    type = CT_MENU;
    font = FONT_NORMAL;
    colorBorder[] = {
        0,
        0,
        0,
        0
    };
    colorBackground[] = {
        0,
        0,
        0,
        1
    };
    colorText[] = {
        COLOR_TEXT_RGBA
    };
    colorSelect[] = {
        0,
        0,
        0,
        1
    };
    colorSelectBackground[] = {
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
    colorPictureSelect[] = {
        0,
        0,
        0,
        1
    };
    colorPictureDisabled[] = {
        1,
        1,
        1,
        0.5
    };
    arrow = "\a3\3DEN\Data\Controls\ctrlMenu\arrow_ca.paa";
    rowHeight = 0;
    itemSpacingW = 0.01;
    itemSpacingH = 0.01;
    pictureCheckboxEnabled = "\a3\3DEN\Data\Controls\CtrlMenu\pictureCheckboxEnabled_ca.paa";
    pictureCheckboxDisabled = "#(argb,8,8,3)color(0,0,0,0)";
    pictureRadioEnabled = "\a3\3DEN\Data\Controls\CtrlMenu\pictureRadioEnabled_ca.paa";
    pictureRadioDisabled = "#(argb,8,8,3)color(0,0,0,0)";
};