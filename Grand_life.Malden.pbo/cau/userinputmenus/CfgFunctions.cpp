class CAU_UserInputMenus {
    class Functions {#define FUNC(name) class name {
            file = cau\userinputmenus\systems\display##name##.sqf;
        };
        FUNC(colorPicker) FUNC(guiMessage) FUNC(listBox) FUNC(progressBar) FUNC(slider) FUNC(text)#undef FUNC
    };
};