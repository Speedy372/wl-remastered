class maverick_navigation_cfg {
    class bindings {
        keyCode = 49;
        reqShift = 0;
        reqAlt = 0;
        reqCtrl = 1;
    };
    option_list[] = {
        {
            "Current Route",
            "maverick\navigation\data\currentroute.paa",
            "!isNil 'mav_gps_v_markers'",
            "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationCurrent';"
        },
        {
            "New Route",
            "maverick\navigation\data\newroute.paa",
            "isNil 'mav_gps_v_markers'",
            "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationNew';"
        },
        {
            "Saved Routes",
            "maverick\navigation\data\savedroutes.paa",
            "true",
            "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationSaved';"
        },
        {
            "GPS Settings",
            "maverick\navigation\data\mapsettings.paa",
            "true",
            "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationSettings';"
        },
        {
            "GPS Information",
            "maverick\navigation\data\help.paa",
            "false",
            "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationHelp';"
        }
    };
    class presets {
        class Altis {
            presetLocations[] = {};
        };
        class Malden {
            presetLocations[] = {};
        };
        class Stratis {
            presetLocations[] = {};
        };
        class Tanoa {
            presetLocations[] = {};
        };
    };
    class localization {
        msgStartPosInvalid = "Pozycja początkowa była nieprawidłowa";
        msgEndPosInvalid = "Pozycja końcowa była nieprawidłowa";
        msgCheckpointInvalid = "Pozycja punktu kontrolnego była nieprawidłowa";
        msgNoRoadsegmentFound = "Nie można znaleźć odcinka drogi w obrębie %1 metrów na pozycji %2, przerywanie...";
        msgAbortCurrentRoute = "Aby uzyskać dostęp do tej funkcji, musisz zakończyć obecną trasę!";
        msgSettingsSaved = "Ustawienia nawigacji zostały zapisane!";
        msgPositionReset = "Pozycja GPS GUI została pomyślnie zresetowana!";
        msgCalcRoadDirs = "Obliczanie kierunków";
        msgCalcRoadDirsProgress = "Obliczanie kierunków (%1/%2)";
        msgOneMinute = "&lt; 1 min";
        msgSmallerThanMinute = "< 1 min";
        msgMinutesLeft = "%1 min";
        msgReachDestination = "Dotrzesz do miejsca docelowego w %1";
        msgFollowThenTurnLeft = "Postępuj zgodnie z drogą dla %1, a następnie skręć w lewo";
        msgFollowThenTurnRight = "Postępuj zgodnie z drogą dla %1, a następnie skręć w prawo";
        msgArrivedFormatted = "<t align='center'>Przybył!</t>";
        msgReachedDestination = "Dotarłeś do celu";
        msgNoRoadsFound = "Nie znaleziono drogi";
        msgInvalidRoadSegment = "Na tej trasie brak dostępnych tras";
        msgCurrentLocation = "Aktualna lokalizacja";
        msgStart = "Start";
        msgCheckpoint = "Punkt-środkowy";
        msgDestination = "Przeznaczenie";
        msgPressSpace = "Naciśnij [SPACE], aby zapisać pozycję GUI";
        msgGpsPosSaved = "Pozycja GUI GPS została pomyślnie zapisana!";
        msgNoRouteFound = "Nie znaleziono trasy";
        msgTimedOut = "Przekroczono limit czasu ... Spróbuj ponownie!";
        msgRouteFound = "Znalejziono trase";
        msgRouteInfo = "Informacje o trasie";
        msgFrom = "Od";
        msgTo = "Do";
        msgTotalDistance = "Całkowity dystans";
        msgTotalravelTime = "Całkowity czas podróży";
        msgRoadPreference = "Preferencje dróg";
        msgRouteCalculate = "Trasa jest obliczana...";
        msgCancelConfirm = "Czy na pewno chcesz anulować bieżącą trasę??";
        msgCancelRoute = "Anuluj trasę";
        msgCancel = "Anuluj";
        msgProceed = "Kontynuować";
        msgNoRouteNameGiven = "Nie podano nazwy trasy.";
        msgRouteNameLimit = "Nazwa trasy powyżej 30 znaków!";
        msgIllegalChars = "Nazwa trasy zawiera zastrzeżone znaki!";
        msgRouteLimit = "Osiągnąłeś limit zapisanych tras! Musisz usunąć trasę.";
        msgRouteSaved = "Trasa została pomyślnie zapisana!";
        msgRouteDeleted = "Trasa została pomyślnie usunięta!";
        msgFinishRouteFirst = "Musisz albo zakończyć aktualną trasę, albo ją anulować!";
        msgNoSavedRoutes = "Nie zapisano tras...";
        msgTurnNow = "Włącz teraz";#define dialogMainMenu "Navigator - Menu"#define dialogClose "Zamknij"#define dialogCurrentRoute "Navigator - Aktualna trasa"#define dialogResetRoute "Anuluj trasę"#define dialogRecalculate "Ponowne ustalanie trasy"#define dialogNewRoute "Navigator - Nowa Trasa"#define dialogCalcRoute "Obliczanie drogi"#define dialogBack "Wstecz"#define dialogStart "Start"#define dialogLoad "Wczytaj"#define dialogCheckpoint "Środek"#define dialogDestination "Destination"#define dialogCommonDest "Common Destination Points"#define dialogSavedRouts "Zapisane trasy"#define dialogMenuSettings "Navigator - Ustawienia"#define dialogSave "Zapisz"#define dialogUnitSpeed "Prędkość"#define dialogPreference "Preferowana trasa"#define dialogGpsPos "GPS GUI Position"#define dialogCustomize "Własna"#define dialogReset "Reset"#define dialogGpsColor "GPS Color"#define dialogDragHere "Przęciągnij tu"#define dialogSavedTitle "Navigator - Zapisz trasę"#define dialogDelete "Usuń"#define dialogCalcProgress "<t size='1.2' align='center'>Oblicznie trasy...</t>"#define dialogNavigation "navigation"#define dialogSaveRoute "Navigator - Zapisz trasę"#define dialogRouteName "Wprowadz nazwę trasy"#define dialogCalculating "Obliczanie..."#define dialogRouteInfo "Informacje o trasie"#define dialogRouteMapPrev "Podgląd trasy"#define dialogVoiceSetting "Voice Announcements"#define dialogCalculationH "Navigator - Route Calculations"
    };
    class AlgorithmParameters {
        class Chernarus_Summer {
            greedy = 3.2;
        };
        class australia {
            greedy = 3.2;
        };
        class Malden {
            radius = 45;
        };
        class Sara {
            radius = 66;
        };
    };#include "maverick\navigation\sounds\voicepacks\config.cpp"
};#include "maverick\navigation\gui\gps_gui_master.cpp"