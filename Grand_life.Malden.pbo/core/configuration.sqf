#include "script_macros.hpp"
life_seatbelt = false;
life_pee = false;
life_seatwarn = false;
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = objNull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_antispamactive = false;
syrena_var = false;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = objNull;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
tawvd_addon_disable = true;
life_god = false;
life_frozen = false;
life_save_gear = [];
life_container_activeObj = objNull;
life_disable_getIn = false;
life_disable_getOut = false;
life_admin_debug = false;
life_civ_position = [];
life_markers = false;
life_markers_active = false;
life_canpay_bail = true;
life_storagePlacing = scriptNull;
nn_last_vehicles = [];
nn_empInUse = false;
life_request_timer = false;
life_fadeSound = false;
life_nlrtimer_running = false;
life_nlrtimer_stop = false;
airdrop_goingon = false;
life_westbankcount = 0;
zataczowany_pojazd = false;
kasztura_old_btc = 0;
life_pickup_open = false;
dispatch = false;
dispatch2 = false;
message1_active = false;
message2_active = false;
message3_active = false;
message4_active = false;
message5_active = false;
message6_active = false;
life_explorer_wrecks = [];
life_explorer_markers = [];
life_explorer_wreck = objNull;
life_explorer_distance = 0;
life_activeItemReceivedControls = [];
life_itemControl = 30000;
life_gangname_check = false;
life_gangname_available = false;
life_gang_atm = false;
life_bro = 0;
life_num = 0;
life_smoking = 0;
life_gopro = 0;
life_digsiteNumber = 60;
life_availableDigsites = [];
life_activeDigsites = [];
life_usedDigsites = [];
life_archeologyStartCoords = [];
guiMessage_status = "neutral";
myUpdate = true;
_myInjuries = profileNamespace getVariable["playerInjuries", [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]];
player setVariable["playerInjuries", _myInjuries, true];
player setVariable["playerInjuriesToUpdate", [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], false];
player setvariable["neprzytomny", false, true];
life_commonSiteTable = [["ancientbook", 50], ["claypot", 50], ["claybowl", 50], ["claypipe", 50], ["decorativeclaypipe", 45], ["decorativeclaybowl", 45], ["decorativeclaypot", 45], ["stonearrowheads", 38], ["bronzering", 30], ["bronzestatue", 30], ["bronzecoin", 28], ["bronzeaxehead", 25], ["ironarrowheads", 20], ["ironknife", 19], ["ironaxehead", 18], ["ironspearhead", 18], ["silverring", 13], ["silverstatue", 13], ["silverjewellery", 12], ["goldring", 10], ["goldstatue", 9]];
life_rareSiteTable = [["ancientbook", 45], ["claypot", 45], ["claybowl", 45], ["claypipe", 45], ["decorativeclaypipe", 40], ["decorativeclaybowl", 40], ["decorativeclaypot", 40], ["stonearrowheads", 35], ["bronzering", 30], ["bronzestatue", 30], ["bronzecoin", 30], ["bronzeaxehead", 30], ["ironarrowheads", 20], ["ironknife", 19], ["ironaxehead", 18], ["ironspearhead", 18], ["silverring", 17], ["silverstatue", 17], ["silverjewellery", 16], ["goldring", 15], ["goldstatue", 15], ["jewelencrustedsilver", 4], ["jewelencrustedgold", 2]];
life_settings_enableNewsBroadcast = profileNamespace getVariable["life_enableNewsBroadcast", true];
life_settings_enableSidechannel = profileNamespace getVariable["life_enableSidechannel", true];
life_settings_tagson = profileNamespace getVariable["life_settings_tagson", true];
life_settings_revealObjects = profileNamespace getVariable["life_settings_revealObjects", true];
life_settings_viewDistanceFoot = profileNamespace getVariable["life_viewDistanceFoot", 1250];
life_settings_viewDistanceCar = profileNamespace getVariable["life_viewDistanceCar", 1250];
life_settings_viewDistanceAir = profileNamespace getVariable["life_viewDistanceAir", 1250];
life_clothing_purchase = [-1, -1, -1, -1, -1];
life_maxWeight = LIFE_SETTINGS(getNumber, "total_maxWeight");
life_carryWeight = 0;
life_net_dropped = false;
life_use_atm = true;
life_is_arrested = false;
life_is_alive = false;
life_delivery_in_progress = false;
life_thirst = 100;
life_hunger = 100;
CASH = 0;
life_istazed = false;
life_isknocked = false;
life_vehicles = []; {
    missionNamespace setVariable[ITEM_VARNAME(configName _x), 0];
}
forEach("true"
configClasses(missionConfigFile >> "VirtualItems")); {
    _varName = getText(_x >> "variable");
    _sideFlag = getText(_x >> "side");
    missionNamespace setVariable[LICENSE_VARNAME(_varName, _sideFlag), false];
}
forEach("true"
configClasses(missionConfigFile >> "Licenses"));
bandazyk_czek = {
    _true = false;
    if ! (isnil "bleedingEffect") then {
        if (bleedingEffect > 0) then {
            if (life_inv_bandaz_1 > 0) then {
                _true = true;
            };
        };
    };
    _true
};