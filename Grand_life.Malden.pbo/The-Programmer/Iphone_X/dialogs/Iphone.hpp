class The_Programmer_Iphone_Home_Menu {
    idd = 542647;
    name = "The_Programmer_Iphone_Home_Menu";
    movingenable = 1;
    enablesimulation = 1;
    class controlsBackground {
        class FondPrincipale: Life_RscPicture {
            text = "The-Programmer\Iphone_X\textures\fond.paa";
            idc = -1;
            x = 0.6379405 * safezoneW + safezoneX;
            y = 0.288744481809243 * safezoneH + safezoneY;
            w = 0.21 * safezoneW;
            h = 0.7 * safezoneH;
        };
    };
    class controls {
        class Fermer: Life_RscButtonInvisible {
            idc = -1;
            onbuttonclick = "closeDialog 0;";
            tooltip = "Zamknij";
            x = 0.732093666666666 * safezoneW + safezoneX;
            y = 0.907587959685349 * safezoneH + safezoneY;
            w = 0.025877 * safezoneW;
            h = 0.0439812 * safezoneH;
        };
        class ButtonSettings: Life_RscButtonInvisible {
            idc = -1;
            onbuttonclick = "closeDialog 0; [] call CHVD_fnc_openDialog;";
            x = 0.744 * safezoneW + safezoneX;
            y = 0.734 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonMyGang: Life_RscButtonInvisible {
            idc = 2011;
            text = "";
            onbuttonclick = "0 call life_fnc_gang_openDialog";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.810 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonLicences: Life_RscButtonInvisible {
            idc = 1602;
            onbuttonclick = "[] call the_programmer_iphone_fnc_Licences_Menu;";
            x = 0.787 * safezoneW + safezoneX;
            y = 0.734 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonKeys: Life_RscButtonInvisible {
            idc = 2013;
            text = "";
            onbuttonclick = "createDialog ""The_Programmer_Iphone_Key_Menu"";";
            x = 0.787 * safezoneW + safezoneX;
            y = 0.810 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonCell: Life_RscButtonInvisible {
            idc = 2014;
            onbuttonclick = "";
            x = 0.6578125 * safezoneW + safezoneX;
            y = 0.810 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonSyncData: Life_RscButtonInvisible {
            idc = -1;
            text = "";
            onbuttonclick = "[] call SOCK_fnc_syncData;";
            x = 0.658 * safezoneW + safezoneX;
            y = 0.734 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonBanking: Life_RscButtonInvisible {
            idc = -1;
            text = "";
            onbuttonclick = "[] call the_programmer_iphone_fnc_PayEasy;";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.734 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonPlayerMenu: Life_RscButtonInvisible {
            idc = -1;
            onbuttonclick = "createDialog ""The_Programmer_Iphone_Stuff_Menu"";";
            x = 0.744 * safezoneW + safezoneX;
            y = 0.810 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class pay: Life_RscPicture {
            idc = 1001;
            tooltip = "PayEasy";
            text = "The-Programmer\Iphone_X\textures\icons\banque.paa";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.734 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class message: Life_RscPicture {
            idc = 1002;
            tooltip = "Wiadomosci";
            text = "The-Programmer\Iphone_X\textures\icons\chat.paa";
            x = 0.658 * safezoneW + safezoneX;
            y = 0.810 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class groupe: Life_RscPicture {
            idc = 1003;
            tooltip = "Gang";
            text = "The-Programmer\Iphone_X\textures\icons\groupe.paa";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.810 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class settings: Life_RscPicture {
            idc = 1004;
            tooltip = "Ustawienia";
            text = "The-Programmer\Iphone_X\textures\icons\reglage.paa";
            x = 0.744 * safezoneW + safezoneX;
            y = 0.734 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class sac: Life_RscPicture {
            idc = 1005;
            tooltip = "Ekwipunek";
            text = "The-Programmer\Iphone_X\textures\icons\sac.paa";
            x = 0.744 * safezoneW + safezoneX;
            y = 0.810 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class licences: Life_RscPicture {
            idc = 1006;
            tooltip = "Licencje";
            text = "The-Programmer\Iphone_X\textures\icons\licence.paa";
            x = 0.787 * safezoneW + safezoneX;
            y = 0.734 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class clefs: Life_RscPicture {
            idc = 1000;
            tooltip = "Klucze";
            text = "The-Programmer\Iphone_X\textures\icons\clef.paa";
            x = 0.787 * safezoneW + safezoneX;
            y = 0.810 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class Heure: Life_RscStructuredText {
            idc = 2101;
            x = 0.740 * safezoneW + safezoneX;
            y = 0.307551622418879 * safezoneH + safezoneY;
            h = 0.05 * safezoneH;
            w = 0.1 * safezoneW;
        };
        class syncro: Life_RscPicture {
            idc = 1007;
            tooltip = "Zapisz dane";
            text = "The-Programmer\Iphone_X\textures\icons\syncro.paa";
            x = 0.658 * safezoneW + safezoneX;
            y = 0.734 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class Reboot: Life_RscButtonInvisible {
            idc = -1;
            tooltip = "Restart";
            onbuttonclick = "[] call the_programmer_iphone_fnc_reboot;";
            x = 0.807 * safezoneW + safezoneX;
            y = 0.312 * safezoneH + safezoneY;
            w = 0.01 * safezoneW;
            h = 0.02 * safezoneH;
        };
        class ButtonWeather: Life_RscButtonInvisible {
            idc = -1;
            onbuttonclick = "[] spawn the_programmer_iphone_fnc_weatherMenu;";
            x = 0.787 * safezoneW + safezoneX;
            y = 0.658 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class BoutonWeather: Life_RscPicture {
            idc = -1;
            tooltip = "Pogoda";
            text = "The-Programmer\Iphone_X\textures\icons\Meteo.paa";
            x = 0.787 * safezoneW + safezoneX;
            y = 0.658 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonCamera: Life_RscButtonInvisible {
            idc = 31258;
            text = "";
            onbuttonclick = "closeDialog 0; [] spawn the_programmer_iphone_fnc_cameraMenu;";
            x = 0.744 * safezoneW + safezoneX;
            y = 0.658 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class BoutonCamera: Life_RscPicture {
            idc = 31259;
            tooltip = "Aparat";
            text = "The-Programmer\Iphone_X\textures\icons\camera.paa";
            x = 0.744 * safezoneW + safezoneX;
            y = 0.658 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonMarket: Life_RscButtonInvisible {
            idc = 2137;
            text = "";
            onButtonClick = "[] call life_fnc_marketMenu";
            x = 0.744 * safezoneW + safezoneX;
            y = 0.582 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class BoutonMarket: Life_RscPicture {
            idc = 2237;
            tooltip = "Market";
            text = "The-Programmer\Iphone_X\textures\icons\MARKET.paa";
            x = 0.744 * safezoneW + safezoneX;
            y = 0.582 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonDrzewko: Life_RscButtonInvisible {
            idc = -1;
            text = "";
            onbuttonclick = "closeDialog 0; createDialog ""TTM_GUI_RscDisplayTalentOverview"";";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.658 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class BoutonDrzewko: Life_RscPicture {
            idc = -1;
            tooltip = "Drzewko talentow";
            text = "The-Programmer\Iphone_X\textures\icons\DRZEWKOTALENTOW.paa";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.658 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonNav: Life_RscButtonInvisible {
            idc = -1;
            text = "";
            onbuttonclick = "closeDialog 0; [] call mav_gps_fnc_initNavigation;";
            x = 0.658 * safezoneW + safezoneX;
            y = 0.658 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class BoutonNav: Life_RscPicture {
            idc = -1;
            tooltip = "GPS";
            text = "The-Programmer\Iphone_X\textures\icons\GPS2.paa";
            x = 0.658 * safezoneW + safezoneX;
            y = 0.658 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonTaxi: Life_RscButtonInvisible {
            idc = 2138;
            text = "";
            onbuttonclick = "closeDialog 0; createDialog ""RscDisplayTaxiMenu"";";
            x = 0.787 * safezoneW + safezoneX;
            y = 0.582 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class BoutonTaxi: Life_RscPicture {
            idc = 2238;
            tooltip = "Taxi";
            text = "The-Programmer\Iphone_X\textures\icons\TAXI.paa";
            x = 0.787 * safezoneW + safezoneX;
            y = 0.582 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonCompanies: Life_RscButtonInvisible {
            idc = 2105;
            onbuttonclick = "[] spawn max_entreprise_fnc_openMenu;";
            text = "";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.658 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class BoutonCompanies: Life_RscPicture {
            idc = 2106;
            tooltip = "Company";
            text = "The-Programmer\Iphone_X\textures\icons\Entreprise.paa";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.658 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonGovernement: Life_RscButtonInvisible {
            idc = 2107;
            onbuttonclick = "closeDialog 0; [] spawn max_gouvernement_fnc_selectGovernementMenu;";
            text = "";
            x = 0.657 * safezoneW + safezoneX;
            y = 0.658 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class BoutonGovernement: Life_RscPicture {
            idc = 2108;
            tooltip = "Government";
            text = "The-Programmer\Iphone_X\textures\icons\Gouvernement.paa";
            x = 0.657 * safezoneW + safezoneX;
            y = 0.658 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonGPS: Life_RscButtonInvisible {
            idc = 2100;
            onbuttonclick = "[] call gps_menu_fnc_loadGPSMenu;";
            x = 0.787 * safezoneW + safezoneX;
            y = 0.581 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class BoutonGPS: Life_RscPicture {
            idc = 2104;
            tooltip = "GPS";
            text = "The-Programmer\Iphone_X\textures\icons\gps.paa";
            x = 0.787 * safezoneW + safezoneX;
            y = 0.581 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonCall: Life_RscButtonInvisible {
            idc = 2102;
            text = "";
            onbuttonclick = "createDialog ""The_Programmer_Iphone_Clavier_Menu"";";
            x = 0.744 * safezoneW + safezoneX;
            y = 0.581 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class BoutonCall: Life_RscPicture {
            idc = 2103;
            tooltip = "Number Pad";
            text = "The-Programmer\Iphone_X\textures\icons\call.paa";
            x = 0.744 * safezoneW + safezoneX;
            y = 0.581 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonFacture: Life_RscButtonInvisible {
            idc = 2110;
            onbuttonclick = "createDialog ""facture_list"";";
            text = "";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.581 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class BoutonFacture: Life_RscPicture {
            idc = 2109;
            tooltip = "Bills";
            text = "The-Programmer\Iphone_X\textures\icons\facture.paa";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.581 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class ButtonAdminMenu: Life_RscButtonInvisible {
            idc = 2021;
            text = "";
            onbuttonclick = "createDialog ""life_admin_menu"";";
            x = 0.787 * safezoneW + safezoneX;
            y = 0.438 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class admin: Life_RscPicture {
            idc = 1011;
            tooltip = "Admin Menu";
            text = "The-Programmer\Iphone_X\textures\icons\admin.paa";
            x = 0.787 * safezoneW + safezoneX;
            y = 0.438 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class CallsManagement: Life_RscButtonInvisible {
            idc = 5061;
            text = "";
            onbuttonclick = "[] spawn max_callsmanage_fnc_openCallsManagementMenu;";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.438 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class CallsManagementPIC: Life_RscPicture {
            idc = 5060;
            tooltip = "Dispatch Center";
            text = "The-Programmer\Iphone_X\textures\icons\dispatch.paa";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.438 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class Interpol: Life_RscButtonInvisible {
            idc = 2012;
            onbuttonclick = "";
            text = "";
            x = 0.657 * safezoneW + safezoneX;
            y = 0.438 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class InterpolPIC: Life_RscPicture {
            idc = 1010;
            tooltip = "Lista poszukiwanych";
            text = "The-Programmer\Iphone_X\textures\icons\police.paa";
            x = 0.657 * safezoneW + safezoneX;
            y = 0.438 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class wikipedia: Life_RscButtonInvisible {
            idc = -1;
            onbuttonclick = "[] spawn WLKR_OpenWikiPages";
            text = "";
            x = 0.657 * safezoneW + safezoneX;
            y = 0.582 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class wikipedia2: Life_RscPicture {
            idc = -1;
            tooltip = "Wikipedia";
            text = "The-Programmer\Iphone_X\textures\icons\wiki.paa";
            x = 0.657 * safezoneW + safezoneX;
            y = 0.582 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class kodyz: Life_RscButtonInvisible {
            idc = 696969;
            onbuttonclick = "[] spawn life_fnc_ThreatLevelMenu";
            text = "";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.582 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class kodyz2: Life_RscPicture {
            idc = 6969692;
            tooltip = "Kody zagrożenia";
            text = "The-Programmer\Iphone_X\textures\icons\kody.paa";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.582 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class Barierki: Life_RscButtonInvisible {
            idc = 2139;
            onbuttonclick = "[] spawn life_fnc_placeablesMenu; closeDialog 0;";
            text = "";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.438 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class BarierkiPIC: Life_RscPicture {
            idc = 2239;
            tooltip = "Barierki";
            text = "The-Programmer\Iphone_X\textures\icons\BARIERKI.paa";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.438 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class BarierkiMed: Life_RscButtonInvisible {
            idc = 2140;
            onbuttonclick = "[] spawn life_fnc_placeablesMenu; closeDialog 0;";
            text = "";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.438 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class BarierkiMedPIC: Life_RscPicture {
            idc = 2240;
            tooltip = "Barierki";
            text = "The-Programmer\Iphone_X\textures\icons\BARIERKI.paa";
            x = 0.701 * safezoneW + safezoneX;
            y = 0.438 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class Strefy: Life_RscButtonInvisible {
            idc = 2141;
            onbuttonclick = "closeDialog 0; createDialog ""life_marker"";";
            text = "";
            x = 0.744 * safezoneW + safezoneX;
            y = 0.438 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
        class StrefyPIC: Life_RscPicture {
            idc = 2241;
            tooltip = "Strefy";
            text = "The-Programmer\Iphone_X\textures\icons\STREFY.paa";
            x = 0.744 * safezoneW + safezoneX;
            y = 0.438 * safezoneH + safezoneY;
            w = 0.04 * safezoneW;
            h = 0.067 * safezoneH;
        };
    };
};