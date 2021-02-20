class WLKR_WikiPages {
    WikiPage_Title = "Altis Life Wiki Page";
    GeneralWiki[] = {
        {
            "Farming",
            {
                "icons\ico_apple.paa",
                "Apples Field",
                "Apples Field Apples Field<br/>Apples Field Apples Field"
            },
            {
                "icons\ico_peach.paa",
                "Peach Field",
                "Peach Field Peach Field Peach Field Peach Field <br/>Peach Field Peach Field Peach Field Peach Field "
            }
        },
        {
            "General Catergory Two",
            {
                "",
                "Category One",
                "Category One Category One <br/>Category One Category One "
            },
            {
                "",
                "Category Two",
                "Category Two Category Two <br/>Category Two Category Two "
            }
        },
    };
    CiviliansWiki[] = {
        {
            "Zarabianie",
            {
                "icons\ico_peach.paa",
                "Brzoskwinie",
                "Zbieramy brzoskwinie w <t color=""#00942b"">sadzie brzoskwiń</t> <br/>Sprzedajemy brzoskwinie w <t color=""#00942b"">markecie</t> "
            },
            {
                "icons\ico_apple.paa",
                "Jabłka",
                "Zbieramy jabłka w <t color=""#00942b"">sadzie jabłek</t> <br/>Sprzedajemy jabłka w <t color=""#00942b"">markecie</t> "
            },
            {
                "icons\ico_cooper.paa",
                "Miedź",
                "Kopiemy miedź kilofem w <t color=""#00942b"">kopalni miedźi</t> <br/>Przetapiamy miedź w <t color=""#00942b"">hucie miedźi</t><br/> Sprzedajemy w <t color=""#00942b"">skupie miedźi</t> "
            },
            {
                "icons\ico_iron.paa",
                "Srebro",
                "Kopiemy srebro kilofem w <t color=""#00942b"">kopalni srebra</t> <br/>Przetapiamy srebro w <t color=""#00942b"">hucie srebra</t><br/> Sprzedajemy w <t color=""#00942b"">skupie srebra</t> "
            },
            {
                "",
                "Miedź",
                "Kopiemy miedź kilofem w kopalni miedźi <br/>Przetapiamy miedź w hucie miedźi<br/> Sprzedajemy w skupie miedźi "
            },
            {
                "",
                "Miedź",
                "Kopiemy miedź kilofem w kopalni miedźi <br/>Przetapiamy miedź w hucie miedźi<br/> Sprzedajemy w skupie miedźi "
            },
            {
                "",
                "Miedź",
                "Kopiemy miedź kilofem w kopalni miedźi <br/>Przetapiamy miedź w hucie miedźi<br/> Sprzedajemy w skupie miedźi "
            }
        },
        {
            "Zarobki Rebeliantów",
            {
                "",
                "Category One",
                "Category One Category One <br/>Category One Category One "
            },
            {
                "",
                "Category Two",
                "Category Two Category Two <br/>Category Two Category Two "
            }
        },
        {
            "Multiprocesy",
            {
                "",
                "Category One",
                "Category One Category One <br/>Category One Category One "
            },
            {
                "",
                "Category Two",
                "Category Two Category Two <br/>Category Two Category Two "
            }
        },
        {
            "Klasy rebelianckie",
            {
                "",
                "Strzelec wyborowy",
                "Klasa rebeliancka zezwalająca na wybór broni snajperskiej .<br/>Wybranie tej klasy postaci zablokuje inne klasy "
            },
            {
                "",
                "Szturmowiec",
                "Klasa rebeliancka zezwalająca na wybór broni półautomatycznej.<br/>Wybranie tej klasy postaci zablokuje inne klasy "
            }
        },
        {
            "Licencje",
            {
                "",
                "Category One",
                "Category One Category One <br/>Category One Category One "
            },
            {
                "",
                "Category Two",
                "Category Two Category Two <br/>Category Two Category Two "
            }
        }
    };
    PoliceWiki[] = {
        {
            "Police Category One",
            {
                "",
                "Category One",
                "Category One Category One <br/>Category One Category One "
            },
            {
                "",
                "Category Two",
                "Category Two Category Two <br/>Category Two Category Two "
            }
        },
        {
            "Police Category Two",
            {
                "",
                "Category One",
                "Category One Category One <br/>Category One Category One "
            },
            {
                "",
                "Category Two",
                "Category Two Category Two <br/>Category Two Category Two "
            }
        },
        {
            "Police Category Three",
            {
                "",
                "Category One",
                "Category One Category One <br/>Category One Category One "
            },
            {
                "",
                "Category Two",
                "Category Two Category Two <br/>Category Two Category Two "
            }
        }
    };
    MedicWiki[] = {
        {
            "Medic Category One",
            {
                "",
                "Category One",
                "Category One Category One <br/>Category One Category One "
            },
            {
                "",
                "Category Two",
                "Category Two Category Two <br/>Category Two Category Two "
            }
        },
        {
            "Medic Category Two",
            {
                "",
                "Category One",
                "Category One Category One <br/>Category One Category One "
            },
            {
                "",
                "Category Two",
                "Category Two Category Two <br/>Category Two Category Two "
            }
        },
        {
            "Medic Category Three",
            {
                "",
                "Category One",
                "Category One Category One <br/>Category One Category One "
            },
            {
                "",
                "Category Two",
                "Category Two Category Two <br/>Category Two Category Two "
            }
        }
    };
};
class Wiki_RscEdit {
    deletable = 0;
    fade = 0;
    access = 0;
    type = 2;
    x = 0;
    y = 0;
    h = 0.04;
    w = 0.2;
    colorBackground[] = {
        0,
        0,
        0,
        0
    };
    colorText[] = {
        0.95,
        0.95,
        0.95,
        1
    };
    colorDisabled[] = {
        1,
        1,
        1,
        0.25
    };
    colorSelection[] = {
        "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
        "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
        "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
        1
    };
    autocomplete = "";
    text = "";
    size = 0.2;
    style = "0x00 + 0x40";
    font = "RobotoCondensed";
    shadow = 2;
    sizeEx = "4.32 * (1 / (getResolution select 3)) * pixelGrid * 0.5";
    canModify = 1;
    tooltipColorText[] = {
        1,
        1,
        1,
        1
    };
    tooltipColorBox[] = {
        1,
        1,
        1,
        1
    };
    tooltipColorShade[] = {
        0,
        0,
        0,
        0.65
    };
};
class Wiki_RscText {
    deletable = 0;
    style = 0;
    fade = 0;
    access = 0;
    type = 0;
    idc = -1;
    colorBackground[] = {
        0,
        0,
        0,
        0
    };
    colorText[] = {
        1,
        1,
        1,
        1
    };
    text = "";
    fixedWidth = 0;
    x = 0;
    y = 0;
    h = 0.037;
    w = 0.3;
    shadow = 1;
    colorShadow[] = {
        0,
        0,
        0,
        0.5
    };
    font = "RobotoCondensed";
    sizeEx = "4.32 * (1 / (getResolution select 3)) * pixelGrid * 0.5";
    linespacing = 1;
    tooltipColorText[] = {
        1,
        1,
        1,
        1
    };
    tooltipColorBox[] = {
        1,
        1,
        1,
        1
    };
    tooltipColorShade[] = {
        0,
        0,
        0,
        0.65
    };
};
class Wiki_RscStructuredText {
    deletable = 0;
    fade = 0;
    access = 0;
    type = 13;
    idc = -1;
    style = 0;
    colorText[] = {
        1,
        1,
        1,
        1
    };
    class Attributes {
        font = "RobotoCondensed";
        color = "#ffffff";
        colorLink = "#D09B43";
        align = "left";
        shadow = 1;
    };
    x = 0;
    y = 0;
    h = 0.035;
    w = 0.1;
    text = "";
    size = "4.32 * (1 / (getResolution select 3)) * pixelGrid * 0.5";
    shadow = 0;
};
class WLKR_Wiki {
    idd = 690;
    name = "WLKR_Wiki";
    enablesimulation = 1;
    movingenable = 0;
    class controlsBackground {};
    class controls {
        class background: Wiki_RscText {
            idc = 2200;
            x = 0.304064 * safezoneW + safezoneX;
            y = 0.225 * safezoneH + safezoneY;
            w = 0.391875 * safezoneW;
            h = 0.55 * safezoneH;
            colorBackground[] = {
                0.2,
                0.2,
                0.2,
                1
            };
        };
        class Title: Wiki_RscText {
            idc = 2201;
            text = "Wiki Page";
            style = "0x04 + 0x08 + 0x02";
            font = "RobotoCondensedLight";
            sizeEx = "4.32 * (1 / (getResolution select 3)) * pixelGrid * 1.2";
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.225 * safezoneH + safezoneY;
            w = 0.391875 * safezoneW;
            h = 0.0484 * safezoneH;
            colorText[] = {
                1,
                1,
                1,
                1
            };
            colorBackground[] = {
                0,
                0,
                0,
                0.3
            };
        };
        class Line: Wiki_RscText {
            idc = 2202;
            x = 0.304062 * safezoneW + safezoneX;
            y = 0.269 * safezoneH + safezoneY;
            w = 0.391875 * safezoneW;
            h = 0.011 * safezoneH;
            colorBackground[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
                1
            };
        };
        class SearchBar: Wiki_RscText {
            idc = 2203;
            colorBackground[] = {
                0.102,
                0.102,
                0.102,
                1
            };
            x = 0.314375 * safezoneW + safezoneX;
            y = 0.291 * safezoneH + safezoneY;
            w = 0.12375 * safezoneW;
            h = 0.0264 * safezoneH;
        };
        class Catagory_List: Wiki_RscText {
            idc = 2204;
            colorBackground[] = {
                0.102,
                0.102,
                0.102,
                1
            };
            x = 0.314375 * safezoneW + safezoneX;
            y = 0.324 * safezoneH + safezoneY;
            w = 0.12375 * safezoneW;
            h = 0.44 * safezoneH;
        };
        class SelectedItemDescriptionBackground: Wiki_RscText {
            idc = 22099;
            colorBackground[] = {
                0.102,
                0.102,
                0.102,
                1
            };
            x = 0.443281 * safezoneW + safezoneX;
            y = 0.324 * safezoneH + safezoneY;
            w = 0.2475 * safezoneW;
            h = 0.44 * safezoneH;
        };
        class SelectedItemDescription: Wiki_RscStructuredText {
            idc = 2205;
            colorBackground[] = {
                0,
                0,
                0,
                0
            };
            x = 0.443281 * safezoneW + safezoneX;
            y = 0.324 * safezoneH + safezoneY;
            w = 0.2475 * safezoneW;
            h = 0.44 * safezoneH;
        };
        class SelectedItemBackground: Wiki_RscText {
            idc = 22066;
            colorBackground[] = {
                0.102,
                0.102,
                0.102,
                1
            };
            x = 0.443281 * safezoneW + safezoneX;
            y = 0.291 * safezoneH + safezoneY;
            w = 0.2475 * safezoneW;
            h = 0.0264 * safezoneH;
        };
        class SelectedItemTitle: Wiki_RscStructuredText {
            idc = 2206;
            colorBackground[] = {
                0,
                0,
                0.,
                0
            };
            x = 0.443281 * safezoneW + safezoneX;
            y = 0.291 * safezoneH + safezoneY;
            w = 0.2475 * safezoneW;
            h = 0.0264 * safezoneH;
        };
        class TreeList {
            idc = 4983;
            type = 12;
        default = 0;
            style = 2;
            blinkingPeriod = 0;
            x = 0.314375 * safezoneW + safezoneX;
            y = 0.324 * safezoneH + safezoneY;
            w = 0.12375 * safezoneW;
            h = 0.44 * safezoneH;
            colorBackground[] = {
                0.102,
                0.102,
                0.102,
                1
            };
            sizeEx = "4.32 * (1 / (getResolution select 3)) * pixelGrid * 0.6";
            onTreeSelChanged = "_this call wiki_loadText;";
            picture = "";
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
                1
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
                1
            };
            colorPictureLeft[] = {
                1,
                1,
                1,
                1
            };
            colorPictureLeftSelected[] = {
                1,
                1,
                1,
                1
            };
            colorPictureLeftDisabled[] = {
                1,
                1,
                1,
                1
            };
            font = "RobotoCondensedLight";
            rowHeight = 0.0439091;
            color[] = {
                1,
                1,
                1,
                1
            };
            colorSelect[] = {
                0.7,
                0.7,
                0.7,
                1
            };
            colorSelectBackground[] = {
                0,
                0,
                0,
                0.7
            };
            colorBorder[] = {
                0,
                0,
                0,
                0
            };
            borderSize = 0;
            colorMarked[] = {
                1,
                0.5,
                0,
                0
            };
            colorMarkedSelected[] = {
                1,
                0.5,
                0,
                0
            };
            colorText[] = {
                1,
                1,
                1,
                1
            };
            colorSelectText[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
                1
            };
            colorMarkedText[] = {
                "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.13])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.54])",
                "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.21])",
                1
            };
            multiselectEnabled = 1;
            expandOnDoubleclick = 1;
            hiddenTexture = "\A3\ui_f\data\gui\rsccommon\rsctree\hiddenTexture_ca.paa";
            expandedTexture = "\A3\ui_f\data\gui\rsccommon\rsctree\expandedTexture_ca.paa";
            maxHistoryDelay = 1;
            class ScrollBar {
                width = 0;
                height = 0;
                scrollSpeed = 0.01;
                arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
                arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
                border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
                thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
                color[] = {
                    1,
                    1,
                    1,
                    1
                };
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
        };
    };
};