#define F(NAME, TARGET) class NAME {
    allowedTargets = TARGET;
};#define JIP(NAME, TARGET) class NAME {
    allowedTargets = TARGET;
    jip = 1;
};#define ANYONE 0#define CLIENT 1#define SERVER 2#define HC HC_Life
class CfgRemoteExec {
    class Functions {
        mode = 1;
        jip = 1;#include "maverick\maverick_remoteExec_master.cpp"#include "The-Programmer\theprogrammer_remoteExec_master.cpp"#include "cation\cation_remoteExec.cpp"
        F(life_fnc_AAN, CLIENT) F(life_fnc_addVehicle2Chain, CLIENT) F(life_fnc_adminID, CLIENT) F(life_fnc_adminInfo, CLIENT) F(life_fnc_bountyReceive, CLIENT) JIP(life_fnc_copLights, CLIENT) F(life_fnc_copSearch, CLIENT) JIP(life_fnc_copSiren, CLIENT) JIP(life_fnc_copSiren2, CLIENT) F(life_fnc_freezePlayer, CLIENT) F(life_fnc_garageRefund, CLIENT) F(life_fnc_giveDiff, CLIENT) F(life_fnc_hideObj, CLIENT) F(life_fnc_impoundMenu, CLIENT) F(life_fnc_jail, CLIENT) F(life_fnc_jailMe, CLIENT) F(life_fnc_knockedOut, CLIENT) F(life_fnc_licenseCheck, CLIENT) F(life_fnc_licensesRead, CLIENT) F(life_fnc_lightHouse, CLIENT) JIP(life_fnc_mediclights, CLIENT) F(life_fnc_medicRequest, CLIENT) JIP(life_fnc_medicSiren, CLIENT) F(life_fnc_moveIn, CLIENT) F(life_fnc_pickupItem, CLIENT) F(life_fnc_pickupMoney, CLIENT) F(life_fnc_receiveItem, CLIENT) F(life_fnc_receiveMoney, CLIENT) F(life_fnc_removeLicenses, CLIENT) F(life_fnc_restrain, CLIENT) F(life_fnc_nosze, CLIENT) F(life_fnc_revived, CLIENT) F(life_fnc_robPerson, CLIENT) F(life_fnc_robReceive, CLIENT) F(life_fnc_searchClient, CLIENT) F(life_fnc_seizeClient, CLIENT) F(life_fnc_soundDevice, CLIENT) F(life_fnc_spikeStripEffect, CLIENT) F(life_fnc_tazeSound, CLIENT) F(life_fnc_ticketPaid, CLIENT) F(life_fnc_ticketPrompt, CLIENT) F(life_fnc_vehicleAnimate, CLIENT) F(life_fnc_wantedList, CLIENT) F(life_fnc_wireTransfer, CLIENT) F(SOCK_fnc_dataQuery, CLIENT) F(SOCK_fnc_insertPlayerInfo, CLIENT) F(SOCK_fnc_requestReceived, CLIENT) F(SOCK_fnc_updateRequest, CLIENT) F(TON_fnc_clientGetKey, CLIENT) F(TON_fnc_clientMessage, CLIENT) F(TON_fnc_player_query, CLIENT) F(life_fnc_passeportCiv, CLIENT) F(life_fnc_passeportCop, CLIENT) F(life_fnc_tieing, CLIENT) F(life_fnc_tieingb, CLIENT) F(life_fnc_gagged, CLIENT) F(life_fnc_donator, CLIENT) F(life_fnc_cprrevived, CLIENT) F(life_fnc_wyrzucitem, CLIENT) F(life_fnc_zatrzymaj2, CLIENT) F(life_fnc_yelp2, CLIENT) F(life_fnc_pwarning2, CLIENT) F(life_fnc_jedziemedyk2, CLIENT) F(life_fnc_yelpmed2, CLIENT) F(life_fnc_revokeDriverLicense, CLIENT) F(life_fnc_vehicleEmpd, CLIENT) F(life_fnc_vehicleWarned, CLIENT) F(life_fnc_radArea, CLIENT) F(life_fnc_zabierzkase, CLIENT) F(life_fnc_dodajkase, CLIENT) F(life_fnc_changeCode, CLIENT) F(life_fnc_GunRunCreateMarker, CLIENT) F(life_fnc_GunRunGiveKey, CLIENT) F(bis_fnc_settasklocal, CLIENT) F(BIS_fnc_taskSetCurrent, CLIENT) F(BIS_fnc_taskSetType, CLIENT) F(BIS_fnc_taskSetAlwaysVisible, CLIENT) F(BIS_fnc_taskSetDestination, CLIENT) F(BIS_fnc_taskSetState, CLIENT) F(BIS_fnc_deleteTask, CLIENT) F(life_fnc_pdinfo, CLIENT) F(life_fnc_attahvech, CLIENT) F(BIS_fnc_execVM, SERVER) F(DB_fnc_insertRequest, SERVER) F(DB_fnc_queryRequest, SERVER) F(DB_fnc_updatePartial, SERVER) F(DB_fnc_updateRequest, SERVER) F(life_fnc_jailSys, SERVER) F(life_fnc_wantedAdd, SERVER) F(life_fnc_wantedBounty, SERVER) F(life_fnc_wantedCrimes, SERVER) F(life_fnc_wantedFetch, SERVER) F(life_fnc_wantedProfUpdate, SERVER) F(life_fnc_wantedRemove, SERVER) F(SPY_fnc_cookieJar, SERVER) F(SPY_fnc_observe, SERVER) F(TON_fnc_addContainer, SERVER) F(TON_fnc_addHouse, SERVER) F(TON_fnc_chopShopSell, SERVER) F(TON_fnc_cleanupRequest, SERVER) F(TON_fnc_deleteDBContainer, SERVER) F(TON_fnc_getID, SERVER) F(TON_fnc_getVehicles, SERVER) F(TON_fnc_keyManagement, SERVER) F(TON_fnc_manageSC, SERVER) F(TON_fnc_pickupAction, SERVER) F(TON_fnc_sellHouse, SERVER) F(TON_fnc_sellHouseContainer, SERVER) F(TON_fnc_spawnVehicle, SERVER) F(TON_fnc_spikeStrip, SERVER) F(TON_fnc_updateHouseContainers, SERVER) F(TON_fnc_updateHouseTrunk, SERVER) F(TON_fnc_vehicleCreate, SERVER) F(TON_fnc_vehicleDelete, SERVER) F(TON_fnc_vehicleStore, SERVER) F(TON_fnc_vehicleUpdate, SERVER) F(TON_fnc_handleBlastingCharge, SERVER) F(TON_fnc_houseGarage, SERVER) F(TON_fnc_vehicleDead, SERVER) F(TON_fnc_vehicleDead2, SERVER) F(TON_fnc_vehicleCreate2, SERVER) F(TON_fnc_insureCar, SERVER) F(TON_fnc_generateAirdrop, SERVER) F(A3Log, SERVER) F(db_fnc_upierdalacz2, SERVER) F(db_fnc_upierdalacz, SERVER) F(db_fnc_kick, SERVER) F(ton_fnc_switchWeather, SERVER) F(life_fnc_messageBoards, SERVER) F(life_fnc_DrugEVWathdog, SERVER) F(life_fnc_btc_update, SERVER) F(AH_KeyCheck, SERVER) F(AH_PlayerLoad, SERVER) F(AH_LogInterface, SERVER) F(life_fnc_initnapad, SERVER) F(life_fnc_hideplecak, SERVER) F(cau_xchat_fnc_log, SERVER) F(CAU_xChat_fnc_radioChannelCustom, SERVER) F(life_fnc_vechstatus, SERVER) F(life_fnc_allowdamage, SERVER) F(HC_fnc_addContainer, HC) F(HC_fnc_addHouse, HC) F(HC_fnc_chopShopSell, HC) F(HC_fnc_deleteDBContainer, HC) F(HC_fnc_getVehicles, HC) F(HC_fnc_houseGarage, HC) F(HC_fnc_insertRequest, HC) F(HC_fnc_insertVehicle, HC) F(HC_fnc_jailSys, HC) F(HC_fnc_keyManagement, HC) F(HC_fnc_queryRequest, HC) F(HC_fnc_sellHouse, HC) F(HC_fnc_sellHouseContainer, HC) F(HC_fnc_spawnVehicle, HC) F(HC_fnc_spikeStrip, HC) F(HC_fnc_updateHouseContainers, HC) F(HC_fnc_updateHouseTrunk, HC) F(HC_fnc_updatePartial, HC) F(HC_fnc_updateRequest, HC) F(HC_fnc_vehicleCreate, HC) F(HC_fnc_vehicleDelete, HC) F(HC_fnc_vehicleStore, HC) F(HC_fnc_vehicleUpdate, HC) F(HC_fnc_wantedAdd, HC) F(HC_fnc_wantedBounty, HC) F(HC_fnc_wantedCrimes, HC) F(HC_fnc_wantedFetch, HC) F(HC_fnc_wantedProfUpdate, HC) F(HC_fnc_wantedRemove, HC) F(BIS_fnc_effectKilledAirDestruction, ANYONE) F(bf_fnc_lightsOn, ANYONE) F(fn_animation, ANYONE) F(fnc_testaids, ANYONE) F(fnc_testdupe, ANYONE) F(BIS_fnc_effectKilledSecondaries, ANYONE) F(bis_fnc_setunitinsignia, ANYONE) F(life_fnc_animSync, ANYONE) F(life_fnc_pannicbuttonMarker, ANYONE) F(life_fnc_dispatch, ANYONE) F(life_fnc_broadcast, ANYONE) F(life_fnc_colorVehicle, ANYONE) F(life_fnc_corpse, ANYONE) F(life_fnc_demoChargeTimer, ANYONE) F(life_fnc_flashbang, ANYONE) F(life_fnc_jumpFnc, ANYONE) F(life_fnc_lockVehicle, ANYONE) F(life_fnc_pulloutVeh, ANYONE) F(BIS_fnc_MP, ANYONE) F(life_fnc_say3D, ANYONE) F(life_fnc_setFuel, ANYONE) F(life_fnc_simDisable, ANYONE) F(SPY_fnc_notifyAdmins, ANYONE) F(life_fnc_syrena, ANYONE) F(life_fnc_collectGarbage, ANYONE) F(life_fnc_deleteGarbage, ANYONE) F(life_fnc_endJob, ANYONE) F(life_fnc_jobItself, ANYONE) F(life_fnc_sendToJob, ANYONE) F(life_fnc_spawnGarbage, ANYONE) F(life_fnc_crashTackled, ANYONE) F(life_fnc_openSentence, ANYONE) F(life_fnc_sentenceMe, ANYONE) F(life_fnc_notificationSystem, ANYONE) F(life_fnc_senSys, ANYONE) F(life_fnc_klakson, ANYONE) F(switchMove, ANYONE) F(CAU_xChat_fnc_sendMessage, ANYONE) F(pedro_fnc_zabilgracza, ANYONE) F(life_fnc_gang_remmoney, CLIENT) F(TON_fnc_gang_buy, SERVER) F(ton_fnc_gang_checkname, SERVER) F(ton_fnc_gang_disband, SERVER) F(life_fnc_gang_readdmoney, CLIENT) F(ton_fnc_gang_update, SERVER) F(ton_fnc_gang_load, SERVER) F(life_fnc_gang_checkdialog, CLIENT) F(life_fnc_gang_joinGang, CLIENT) F(life_fnc_gang_kicked, CLIENT) F(life_fnc_gang_tag, CLIENT) F(ton_fnc_gang_hq_recursive, SERVER) F(hc_fnc_gang_buy, HC) F(hc_fnc_gang_checkname, HC) F(hc_fnc_gang_disband, HC) F(hc_fnc_gang_hq_recursive, HC) F(hc_fnc_gang_update, HC) F(hc_fnc_gang_load, HC) F(cc_c_setConfig, CLIENT) F(cc_c_fetchConfig, SERVER) F(wlkr_cc_reloadStores, CLIENT) F(wlkr_cc_fetchConfig, SERVER)
    };
    class Commands {
        mode = 1;
        jip = 0;
        F(addHandgunItem, ANYONE) F(addMagazine, ANYONE) F(addPrimaryWeaponItem, ANYONE) F(addWeapon, ANYONE) F(setFuel, ANYONE) F(setunitloadout, CLIENT)
    };
};