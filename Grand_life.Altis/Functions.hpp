class Socket_Reciever {
    tag = "SOCK";
    class SQL_Socket {
        file = "core\session";
        class dataQuery {};
        class insertPlayerInfo {};
        class requestReceived {};
        class syncData {};
        class updatePartial {};
        class updateRequest {};
        class tazeRagdoll {};
    };
};
class SpyGlass {
    tag = "SPY";
    class Functions {
        file = "SpyGlass";
        class cookieJar {};
        class notifyAdmins {};
        class observe {};
    };
};
class blackfisch_Functions {
    tag = "bf";
    class Scripts {
        file = "core\scripts";
        class lights {};
        class lightsOn {};
    };
};
class Life_Client_Core {
    tag = "life";
    class Master_Directory {
        file = "core";
        class initCiv {};
        class initCop {};
        class initMedic {};
        class setupActions {};
        class setupEVH {};
        class survival {};
        class welcomeNotification {};
    };
    class Kasztura_main {
        file = "kasztura";
        class ikonkiimarkery {};
        class neptyk {};
        class upadek {};
        class ekonmenu {};
        class ekonQuery {};
    };
    class Kasztura_skup {
        file = "kasztura\skup";
        class skupSprzedaj {};
    };
    class Kasztura_dragi {
        file = "kasztura\dragi";
        class drugevent {};
        class sprzedajdragi {};
        class zaladujfure {};
    };
    class Kasztura_napad {
        file = "kasztura\napad";
        class kupinfo {};
        class opendialog {};
        class opendialog2 {};
        class safein {};
        class pdinfo {};
    };
    class Actions {
        file = "core\actions";
        class arrestAction {};
        class buyLicense {};
        class captureHideout {};
        class catchFish {};
        class dpFinish {};
        class dropFishingNet {};
        class escortAction {};
        class gather {};
        class getDPMission {};
        class gutAnimal {};
        class healHospital {};
        class impoundAction {};
        class mine {};
        class newsBroadcast {};
        class packupSpikes {};
        class pickupItem {};
        class pickupMoney {};
        class postBail {};
        class processAction {};
        class pulloutAction {};
        class putInCar {};
        class removeContainer {};
        class repairTruck {};
        class restrainAction {};
        class restrainAction2 {};
        class robAction {};
        class searchAction {};
        class searchVehAction {};
        class seizePlayerAction {};
        class serviceChopper {};
        class stopEscorting {};
        class storeVehicle {};
        class surrender {};
        class ticketAction {};
        class unrestrain {};
        class revokeDriverLicense {};
        class PloAction {};
        class syrena {};
        class unflip {};
        class robItems {};
        class seizeVehAction {};
        class craftAction {};
        class klakson {};
        class klaksonAction {};;
    };
    class Special {
        file = "core\special";
        class openEmpMenu {};
        class isEmpOperator {};
        class scanVehicles {};
        class warnVehicle {};
        class empVehicle {};
        class vehicleWarned {};
        class vehicleEmpd {};
    };
    class Admin {
        file = "core\admin";
        class adminCompensate {};
        class adminDebugCon {};
        class adminFreeze {};
        class admingetID {};
        class adminGodMode {};
        class adminid {};
        class admininfo {};
        class adminMarkers {};
        class adminMenu {};
        class adminQuery {};
        class adminSpectate {};
        class adminTeleport {};
        class adminTpHere {};
    };
    class Civilian {
        file = "core\civilian";
        class civLoadout {};
        class civMarkers {};
        class demoChargeTimer {};
        class freezePlayer {};
        class crashTackled {};
        class jail {};
        class jailMe {};
        class knockedOut {};
        class knockoutAction {};
        class removeLicenses {};
        class robPerson {};
        class robReceive {};
        class tazed {};
        class passeportCiv {};
        class tackleAction {};
        class civPasseport {};
        class skyDive {};
    };
    class Config {
        file = "core\config";
        class houseConfig {};
        class itemWeight {};
        class vehicleAnimate {};
        class vehicleWeightCfg {};
        class craftCfg {};
    };
    class Cop {
        file = "core\cop";
        class bountyReceive {};
        class containerInvSearch {};
        class copInteractionMenu {};
        class copLights {};
        class copLoadout {};
        class copMarkers {};
        class copSearch {};
        class copSiren {};
        class copSiren2 {};
        class doorAnimate {};
        class fedCamDisplay {};
        class licenseCheck {};
        class licensesRead {};
        class questionDealer {};
        class radar {};
        class repairDoor {};
        class restrain {};
        class searchClient {};
        class seizeClient {};
        class sirenLights {};
        class spikeStripEffect {};
        class ticketGive {};
        class ticketPaid {};
        class ticketPay {};
        class ticketPrompt {};
        class vehInvSearch {};
        class wantedGrab {};
        class passeportCop {};
        class copPasseport {};
        class wyrzucitem {};
        class copZones {};
        class copEnter {};
        class copOpener {};
        class parkingticket {};
        class payparkingticket {};
        class showArrestDialog {};
        class arrestDialog_Arrest {};
        class zabierzkase {};
        class dodajkase {};
        class zabierzkaseAction {};
        class strefyzolte {};
        class seizeObjects {};
        class yelp {};
        class yelp2 {};
        class pwarning {};
        class pwarning2 {};
        class GunRunCreateMarker {};
        class GunRunGiveKey {};
        class panicbutton {};
        class pannicbuttonMarker {};
    };
    class Dialog_Controls {
        file = "dialog\function";
        class bankDeposit {};
        class bankTransfer {};
        class bankWithdraw {};
        class displayHandler {};
        class gangDeposit {};
        class gangWithdraw {};
        class garageLBChange {};
        class impoundMenu {};
        class progressBar {};
        class safeFix {};
        class safeInventory {};
        class safeOpen {};
        class safeTake {};
        class sellGarage {};
        class setMapPosition {};
        class spawnConfirm {};
        class spawnMenu {};
        class spawnPointCfg {};
        class spawnPointSelected {};
        class unimpound {};
        class vehicleGarage {};
        class wireTransfer {};
        class insureCar {};
        class marketLBChange {};
        class marketUpdate {};
        class marketMenu {};
    };
    class Functions {
        file = "core\functions";
        class AAN {};
        class accType {};
        class actionKeyHandler {};
        class animSync {};
        class calWeightDiff {};
        class checkMap {};
        class clearVehicleAmmo {};
        class dropItems {};
        class escInterupt {};
        class fetchCfgDetails {};
        class fetchDeadGear {};
        class fetchVehInfo {};
        class isDamaged {};
        class giveDiff {};
        class handleDamage {};
        class handleInv {};
        class handleItem {};
        class hideObj {};
        class hudSetup {};
        class hudUpdate {};
        class hudUpdateHajs {};
        class inventoryClosed {};
        class inventoryOpened {};
        class isUIDActive {};
        class keyHandler {};
        class loadDeadGear {};
        class loadGear {};
        class nearATM {};
        class nearestDoor {};
        class nearUnits {};
        class numberText {};
        class onFired {};
        class onTakeItem {};
        class playerSkins {};
        class playerTags {};
        class postNewsBroadcast {};
        class pullOutVeh {};
        class pushObject {};
        class receiveItem {};
        class receiveMoney {};
        class revealObjects {};
        class saveGear {};
        class simDisable {};
        class stripDownPlayer {};
        class teleport {};
        class whereAmI {};
        class hitMarker {};
        class seatBelt {};
        class fadeSound {};
        class heal {};
        class bankfast {};
        class loggedOut {};
        class speaking {};
        class createMarker {};
        class robstore {};
        class radArea {};
        class zlodziej {};
        class tablice {};
        class tablicemenu {};
        class robSmallBank {};
        class robMilitary {};
        class schowaj {};
        class initPayChecks {};
        class healPlayer {};
        class doHealth {};
        class autoMessages {};
        class guiMsg {};
        class mandatexp {};
        class jebacinsygnie {};
        class servercolors {};
        class nearestSound {};
        class pasy {};
        class pee {};
    };
    class ThreatLevel {
        file = "core\cop\threatlevel";
        class ThreatLevelMenu {};
        class handlethreatlevel {};
        class ThreatLevelPressed {};
        class changeCode {};
    };
    class AApps_gangs {
        file = "core\gangs";
        class gang_openDialog {};
        class gang_initFunctions {};
        class gang_leave {};
        class gang_buyrent {};
        class gang_desc {};
        class gang_changegroup {};
        class gang_permission {};
        class gang_findGang {};
        class gang_settings {};
        class gang_kickinvite {};
        class gang_hqlist {};
        class gang_hqupgrades {};
        class areaCapture {};
        class przejmijkartel {};
    };
    class Housing {
        file = "core\housing";
        class buyHouse {};
        class buyHouseGarage {};
        class containerMenu {};
        class copBreakDoor {};
        class copHouseOwner {};
        class garageRefund {};
        class getBuildingPositions {};
        class houseMenu {};
        class initHouses {};
        class lightHouse {};
        class lightHouseAction {};
        class lockHouse {};
        class lockupHouse {};
        class placeContainer {};
        class PlayerInBuilding {};
        class raidHouse {};
        class sellHouse {};
        class sellHouseGarage {};
    };
    class Items {
        file = "core\items";
        class blastingCharge {};
        class boltcutter {};
        class defuseKit {};
        class flashbang {};
        class jerrycanRefuel {};
        class jerryRefuel {};
        class lockpick {};
        class placestorage {};
        class spikeStrip {};
        class storageBox {};
        class lizak {};
        class morphine {};
        class pijealko {};
        class alkoragdoll {};
        class huntingKit {};
        class gpsTracker {};
        class speedBomb {};
        class syrop {};
        class med_mar {};
        class papierosy {};
        class weed {};
        class cocaine {};
        class heroin {};
    };
    class Medical_System {
        file = "core\medical";
        class deathScreen {};
        class medicLights {};
        class medicLoadout {};
        class medicMarkers {};
        class medicRequest {};
        class medicSiren {};
        class medicSirenLights {};
        class onPlayerKilled {};
        class onPlayerRespawn {};
        class requestMedic {};
        class respawned {};
        class revived {};
        class revivePlayer {};
        class newLifeRule {};
        class medico {};
        class gatherMed {};
        class processActionMed {};
        class jedziemedyk {};
        class jedziemedyk2 {};
        class yelpmed {};
        class yelpmed2 {};
        class nosze {};
        class noszeaction {};
        class noszez {};
        class damageChance {};
        class bleed {};
        class doInjuriesUpdate {};
        class hudeffects {};
    };
    class Network {
        file = "core\functions\network";
        class broadcast {};
        class corpse {};
        class jumpFnc {};
        class say3D {};
        class setFuel {};
        class soundDevice {};
    };
    class Player_Menu {
        file = "core\pmenu";
        class cellphone {};
        class giveItem {};
        class giveMoney {};
        class keyDrop {};
        class keyGive {};
        class keyMenu {};
        class p_openMenu {};
        class p_updateMenu {};
        class pardon {};
        class removeItem {};
        class s_onChar {};
        class s_onCheckedChange {};
        class s_onSliderChange {};
        class settingsMenu {};
        class updateViewDistance {};
        class useItem {};
        class wantedAddP {};
        class wantedInfo {};
        class wantedList {};
        class wantedMenu {};
        class movesMenu {};
        class physicalPhone {};
        class craft {};
        class craft_update {};
        class craft_updateFilter {};
    };
    class Shops {
        file = "core\shops";
        class 3dPreviewDisplay {};
        class 3dPreviewExit {};
        class 3dPreviewInit {};
        class atmMenu {};
        class buyClothes {};
        class changeClothes {};
        class chopShopMenu {};
        class chopShopSelection {};
        class chopShopSell {};
        class clothingFilter {};
        class clothingMenu {};
        class fuelLBchange {};
        class fuelStatOpen {};
        class levelCheck {};
        class vehicleShopBuy {};
        class vehicleShopLBChange {};
        class vehicleShopMenu {};
        class virt_buy {};
        class virt_menu {};
        class virt_sell {};
        class virt_sellAll {};
        class virt_update {};
        class weaponShopAccs {};
        class weaponShopBuySell {};
        class weaponShopFilter {};
        class weaponShopMags {};
        class weaponShopMenu {};
        class weaponShopSelection {};
        class czarnyRynek {};
    };
    class Vehicle {
        file = "core\vehicle";
        class addVehicle2Chain {};
        class colorVehicle {};
        class deviceMine {};
        class FuelRefuelcar {};
        class fuelStore {};
        class fuelSupply {};
        class lockVehicle {};
        class openInventory {};
        class vehiclecolor3DRefresh {};
        class vehicleOwners {};
        class vehicleWeight {};
        class vehInventory {};
        class vehStoreItem {};
        class vehTakeItem {};
        class vInteractionMenu {};
        class vehTakeAllItem {};
        class vehStoreAllItem {};
    };
    class CivTieing {
        file = "core\civilian\CivTieing";
        class gagAction {};
        class gagged {};
        class removeGagAction {};
        class tieing {};
        class tieingAction {};
        class tieingActionb {};
        class tieingb {};
        class untie {};
        class untieb {};
    };
    class Placeables {
        file = "core\placeable";
        class placeablesInit {};
        class placeablesMenu {};
        class placeablesRemove {};
        class placeablesRemoveAll {};
        class placeablePlace {};
        class placeableCancel {};
        class placeablesPlaceComplete {};
        class getOwner {};
        class displayOwner {};
    };
    class cprCiv {
        file = "core\cprCiv";
        class cprkit {};
        class cprrevived {};
    }
    class Archeology {
        file = "core\archeology";
        class resetDigSites {};
        class excavateDigSite {};
        class surveyDigSite {};
        class prepDigSites {};
        class hint {};
    };
    class TreasureHunting {
        file = "core\treasure_hunting";
        class openContainer {};
        class SearchWreck {};
        class wreckTakeItem {};
        class TreasureHuntInit {};
    };
    class Altsentence {
        file = "core\altsentence";
        class collectGarbage {};
        class deleteGarbage {};
        class endJob {};
        class jobItself {};
        class sendToJob {};
        class spawnGarbage {};
        class openSentence {};
        class sentenceMe {};
    };
};
class Toxic_Functions {
    tag = "Toxic";
    class Toxic_Main {
        file = "core\Toxic";
        class busMenu {};
        class busStart {};
    };
};
class pedro_Functions {
    tag = "pedro";
    class pedro_Main {
        file = "core\pedro";
        class initdrop {};
        class spawndrop {};
        class lester {};
        class pedrosklep {};
        class papieros {};
        class gopro {};
        class pow {};
        class naprawa {};
        class biletlosowanie {};
        class trade {};
        class hentai {};
        class randomspr {};
        class setpflag {};
        class prostytucja {};
        class paczekreta {};
        class klapek {};
        class setzssr {};
        class zabilgracza {};
    };
};