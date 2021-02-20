#define true 1#define false 0
class maverick_taxis_cfg {
    class pricing {
        pricePerKilometre = 500;
        basePrice = 1000;
        moneyHandVariable = "gl_cash";
        moneyBankVariable = "gl_bank";
        paymentSource = "BOTH";
        fullRefundOnDriverAbort = true;
    };
    class keybindings {
        keyCode = 20;
        reqShift = false;
        reqAlt = true;
        reqCtrl = false;
    };
    class general {
        automaticNavigation = true;
    };
    class drivers {
        condition = "true";
    };
    class localization {
        msgMainInfoNoTaxiCalled = "<t size='2'>Nie masz aktywnego połączenia taksówką!</t><br/><t>Kliknij 'Call Taxi', aby utworzyć żądanie taksówki dla wszystkich dostępnych taksówkarzy!</t><br/><br/><t font='RobotoCondensedBold'>Dostępne taksówki: %1</t>";
        msgMainInfoNoTaxiYet = "<t size='2'>Taksówka została wezwana!</t><br/><t>Żaden taksówkarz nie zaakceptował Twojej prośby. Zostaniesz powiadomiony, gdy to zrobi!</t><br/><br/><t font='RobotoCondensedBold'>Dostępne taksówki: %1</t>";
        msgTaxiCalled = "Utworzono prośbę o taksówkę!";
        msgTaxiCancelled = "Twoja aktualna prośba o taksówkę została anulowana!";
        msgTaxiFareCancelled = "Anulowałeś opłatę";
        msgTaxiCancelConfirm = "Kierowca taksówki już zaakceptował twoją prośbę i jest w drodze do Ciebie. Czy jesteś pewien, że nadal chcesz anulować?";
        msgTaxiCancelHeader = "Anuluj połączenie z taksówką";
        msgTaxiCancelButtonConfirm = "Tak";
        msgTaxiCancelButtonCancel = "Nie";
        msgTaxiCancelDriverConfirm = "Czy na pewno chcesz anulować opłatę za przejazd? Jeśli cena bazowa została już Ci przekazana, zostanie ona ponownie przesłana do klienta.";
        msgTaxiMeterInfoText = "<t>Całkowity dystans</t><t align='right' font='RobotoCondensedBold'>%1</t><br/><t>Czas,jaki upłynął</t><t align='right' font='RobotoCondensedBold'>%2</t><br/><t>Cena całkowita (%3$/km)</t><t align='right' font='RobotoCondensedBold'>%4</t>";
        msgTaxiMeterStatusTextActive = "<t align='right' font='RobotoCondensedBold'>AKTYWNY</t>";
        msgTaxiMeterStatusTextInactive = "<t align='right' font='RobotoCondensedBold'>NIEAKTYWNY</t>";
        masTaxiInfoPleaseWait = "<t size='2'>%1 jest w drodze do ciebie!</t><br/>Proszę poczekać w swojej aktualnej lokalizacji na kierowcę taksówki. Obecnie jest % 2.</t>";
        msgTaxiFareCancelledAsCustomer = "Twój taksówkarz anulował opłatę";
        masTaxiFareCancelledAsDriver = "Twój klient anulował opłatę.";
        msgTaxiCallAccepted = "Kierowca taksówki jest już w drodze";
        msgTaxiDriverNotAvailable = "Nie spełniasz wymagań, aby pracować jako taksówkarz";
        msgTaxiDestinationUpdated = "Miejsce docelowe zostało zaktualizowane";
        msgTaxiNoRoadNearFound = "Nie znaleziono odcinka drogi w pobliżu pozycji!";
        msgTaxiCannotCallWhileDriver = "Nie możesz zadzwonić do taksówki będąc taksówkarzem!";
        msgTaxiCannotDriveWhileCalling = "Nie możesz pracować jako taksówkarz, dzwoniąc samemu!";
        msgTaxiSpamClickPrevention = "Nie możesz wykonać tej akcji tak szybko!";
        msgTaxiAlreadyInFare = "Już zaakceptowałeś taryfę!";
        msgCallTaxi = "Zadzwoń po taksówkę";
        msgBaseNotAffordable = "Nie masz dość pieniędzy, aby zadzwonić po taksówkę!";
        msgPaidCustomer = "Dotarłeś do celu.<br/>Całkowita dokonana płatność: %1$";
        msgNotFullyPaidCustomer = "Dotarłeś do celu. Nie stać cię na łączną kwotę %1$, zamiast %2$ (z wyłączeniem opłaty podstawowej) zostały zapłacone!";
        msgPaidDriver = "Osiągnąłeś cel.<br/>Twój klient zapłacił ci <t color='#43a047'>%1$</t>.";
        msgNotFullyPaidDriver = "Osiągnąłeś cel. Twój klient nie może zapłacić Ci pełnej kwoty <t color='#43a047'>%1$</t>, zamiast <t color='#43a047'>%2$</t> (z wyłączeniem opłaty podstawowej) zostały przeniesione do Ciebie.";
        msgPayCustomer = "Dotarłeś do celu.<br/>Całkowita płatność, która została dokonana, to %1$.";
        msgPayDriver = "Osiągnąłeś cel.<br/>Twój klient został poproszony o zapłacenie %1$.";
        msgTotalPayment = "Całkowita płatność: %1$";
        msgTaximeterPositionSaved = "Pozycja taksonomiczna została zapisana";
        msgTaximeterPositionReset = "Resetowanie pozycji taksometru";
        msgTaxiPressSpaceSaveSettings = "Naciśnij [SPACE], aby zapisać";
        msgNowOnDuty = "Jesteś teraz na służbie i otrzymasz powiadomienie, gdy zadzwoni ktoś po taxi!";
        msgNowOffDuty = "Jesteś teraz poza służbą";
        msgTaxiMenuActiveCalls = "Zobacz aktywne połączenia";
        msgTaxiNewCallCreated = "Zostało utworzone nowe połączenie taxi";
        msgTaxiBillingPayment = "Całkowita płatność za przejechany dystans";
        msgTaxiBillingDriverMissingP = "Kwota nieopłacalna dla klienta";
        msgTaxiBillingBasePrice = "Cena podstawowa";
        msgTaxiBillingCustomerMissingP = "Kwota nie jest przystępna";
        msgTaxiCurrentFareInformation = "Aktualne informacje o taryfie";
        msgTaxiBillingCancelled = "Opłata anulowana";
        msgTaskDriverPickupDescription = "Odbierz swojego pasażera w tej lokalizacji";
        msgTaskDriverPickupDescriptionS = "ODEBRAĆ";
        msgTaskDriverPickupHUD = "Odebrać";
        msgTaskCustomerDriverDescription = "Wsiadaj do swojego pojazdu dla taksówkarzy";
        msgTaskCustomerDriverDescriptionS = "WCHODZIĆ";
        msgTaskCustomerDriverHUD = "wchodzić";
        msgTaskDriverGoToDescription = "Miejsce docelowe klienta";
        msgTaskDriverGoToDescriptionS = "PRZEZNACZENIE";
        msgTaskDriverGoToDriverHUD = "Przenieś się tutaj";#define dialogCallTaxiTitle "Taksówka"#define dialogCancelTaxi "Anuluj żądanie taksówki"#define dialogClose "Zamknij"#define dialogTaxiMeter "Taksometr"#define dialogTaxiFareList "Dostępne połączenia taksówkowe"#define dialogTaxiGoOnDuty "Idz na służbe"#define dialogTaxiGoOffDuty "Idz ze służby"#define dialogTaxiAcceptCall "Zaakceptuj wybrane połączenie"#define dialogTaxiCancelCall "Anuluj bieżące połączenie"#define dialogMenuCustomer "Zadzwoń po taksówke"#define dialogMenuDriver "Pracuj jako kierowca"#define dialogMenuSettings "Ustawienia"#define dialogDestination "Przeznaczenie"#define dialogHowToDestination "Kliknij dwukrotnie pozycję na mapie, aby oznaczyć ją jako cel podróży. Jeśli masz już kierowcę taksówki, zostaniesz powiadomiony o zaktualizowanej pozycji."#define dialogStatusTitle "Status połączenia"#define dialogStatusMarkedDest "Miejsce docelowe wybrane"#define dialogStatusCreatedCall "Utworzono połączenie taksówkowe"#define dialogStatusDriverFound "Zaakceptowane połączenie taksówkarza"#define dialogStatusPickedUp "Odbierz"#define dialogSettingsCustomizePos "Pozycja taksometru"#define dialogSettingsCustomize "Dostosuj"#define dialogSettingsReset "Zrestartuj"#define dialogDragMe "Pociągnij mnie"#define dialogFareSummaryTitle "Podsumowanie taryfy"#define dialogSummaryClosePromt "[ALT] + [T], aby zamknąć"#define dialogAvaibleDrivers "Dostępne pojazdy"
    };
};#include "maverick\taxis\gui\taxi_gui_master.cpp"