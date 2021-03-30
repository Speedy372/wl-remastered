life_actions = [];
switch (playerSide) do {
case civilian:
    {
        life_actions pushBack(player addAction[localize "STR_pAct_DropFishingNet", life_fnc_dropFishingNet, "", 0, false, false, "", '
        (surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']);
        life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson", life_fnc_robAction, "", 0, false, false, "", '
        !isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && (animationState cursorObject=="Incapacitated" or animationState cursorObject=="AmovPercMstpSnonWnonDnon_amovpercmstpssurwnondnon") && !(cursorObject getVariable["robbed",FALSE]) ']];
        life_actions = life_actions + [player addAction["<t color='#00FF00'>Pokaż dokumenty</t>", life_fnc_civPasseport, "", 1, false, true, "", ' playerSide == civilian && player distance cursorObject < 3.5 &&  !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget ']];
        life_actions pushBack(player addAction["<t color = '#D660D6'>Zapnij Pasy</t>", life_fnc_seatbelt, "", 7, false, false, "", ' !life_seatbelt && vehicle player != player ']);
        life_actions pushBack(player addAction["<t color = '#D660D6'>Odepnij Pasy</t>", life_fnc_seatbelt, "", 7, false, false, "", ' life_seatbelt && vehicle player != player ']);
        life_actions = life_actions + [player addAction["Wylecz się", life_fnc_heal, "", 1, false, false, "", '("Medikit" in (items player)) && vehicle player == player && ((damage player) > 0.1)']];
        life_actions = life_actions + [player addAction[localize "STR_pAct_RobSmartphone", life_fnc_robItems, "", 0, false, false, "", '!isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && (animationState cursorObject=="Incapacitated" or animationState cursorObject=="AmovPercMstpSnonWnonDnon_amovpercmstpssurwnondnon")']];
        life_actions = life_actions + [player addAction["Sprawdź właściciela", life_fnc_getOwner, "", 0, false, false, "", '(typeOf cursorObject) in ["Land_Defibrillator_F","Land_FirstAidKit_01_open_F","Land_Stretcher_01_F","Land_Bodybag_01_empty_blue_F","RoadCone_F","RoadCone_L_F","RoadBarrier_F","RoadBarrier_small_F","TapeSign_F","Land_BarGate_F","ArrowDesk_L_F","ArrowDesk_R_F","Land_MedicalTent_01_white_IDAP_open_F","Land_PortableLight_double_F"] ||(typeOf cursorObject) in ["RoadCone_F","RoadCone_L_F","RoadBarrier_F","RoadBarrier_small_F","TapeSign_F","Land_BarGate_F","ArrowDesk_L_F","ArrowDesk_R_F","Land_PortableLight_double_F"]']];
        life_actions = life_actions + [player addAction["Połóż się", "bed\laydown.sqf", "", 1, false, true, "", '(typeOf cursorObject) isEqualTo "Land_Stretcher_01_F" && player distance cursorObject < 2 && !(cursorObject getVariable["occupied",false]) && isNil "life_laydown" && isNil "life_action_getup"']];
        life_actions = life_actions + [player addAction[localize "STR_pAct_klakson", life_fnc_klaksonAction, "", 0, false, false, "", 'vehicle player != player && (call life_donator) > 0']];
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Przejmij Strefy</t>", life_fnc_areaCapture, "", 0, false, false, "", ' ((typeOf cursorTarget) == "Flag_Red_F") ']];
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Zatamuj Krwotok</t>", {
            bleedingEffect = 0;
            hint "Krwotok Zatamowany"
        },
        "", 0, false, false, "", ' [] call bandazyk_czek ']];
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Upuść Pojazd</t>", {
            false spawn life_fnc_detachveh
        },
        "", 0, false, false, "", ' ((count attachedObjects player) > 0) && zataczowany_pojazd ']];
    };
case west:
    {
        life_actions = life_actions + [player addAction["<t color='#00FF00'>Pokaż odznakę</t>", life_fnc_copPasseport, "", 1, false, true, "", ' playerSide == west && player distance cursorObject < 3.5 && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
        life_actions pushBack(player addAction["<t color = '#D660D6'>Zapnij Pasy</t>", life_fnc_seatbelt, "", 8, false, false, "", ' !life_seatbelt && vehicle player != player ']);
        life_actions pushBack(player addAction["<t color = '#D660D6'>Odepnij Pasy</t>", life_fnc_seatbelt, "", 8, false, false, "", ' life_seatbelt && vehicle player != player ']);
        life_actions = life_actions + [player addAction[localize "STR_pAct_DriverSeat", life_fnc_copEnter, "driver", 200, false, false, "", '!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
        life_actions = life_actions + [player addAction[localize "STR_pAct_PassengerSeat", life_fnc_copEnter, "passenger", 100, false, false, "", '!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
        life_actions = life_actions + [player addAction[localize "STR_pAct_GunnerSeat", life_fnc_copEnter, "gunner", 100, false, false, "", '!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
        life_actions = life_actions + [player addAction[localize "STR_pAct_GoOut", life_fnc_copEnter, "exit", 100, false, false, "", '(vehicle player != player) && (locked(vehicle player)==2)']];
        life_actions = life_actions + [player addAction[localize "STR_pAct_SeizeItem", life_fnc_seizeObjects, cursorObject, 0, false, false, "", '(count(nearestObjects [player,["weaponholder"],3])>0)']];
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Przejmij Strefy</t>", life_fnc_areaCapture, "", 0, false, false, "", ' ((typeOf cursorTarget) == "Flag_Red_F") ']];
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Zatamuj Krwotok</t>", {
            bleedingEffect = 0;
            hint "Krwotok Zatamowany"
        },
        "", 0, false, false, "", ' [] call bandazyk_czek ']];
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Upuść Pojazd</t>", {
            false spawn life_fnc_detachveh
        },
        "", 0, false, false, "", ' ((count attachedObjects player) > 0) && zataczowany_pojazd ']];
    };
case independent:
    {
        life_actions = life_actions + [player addAction["<t color='#00FF00'>Pokaż odznakę</t>", life_fnc_copPasseport, "", 1, false, true, "", ' playerSide == independent && player distance cursorObject < 3.5 && !isNull cursorTarget && cursorTarget isKindOf "Man" ']];
        life_actions pushBack(player addAction["<t color = '#D660D6'>Zapnij Pasy</t>", life_fnc_seatbelt, "", 7, false, false, "", ' !life_seatbelt && vehicle player != player ']);
        life_actions pushBack(player addAction["<t color = '#D660D6'>Odepnij Pasy</t>", life_fnc_seatbelt, "", 7, false, false, "", ' life_seatbelt && vehicle player != player ']);
        life_actions = life_actions + [player addAction[localize "STR_pAct_DriverSeat", life_fnc_copEnter, "driver", 200, false, false, "", '!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
        life_actions = life_actions + [player addAction[localize "STR_pAct_PassengerSeat", life_fnc_copEnter, "passenger", 100, false, false, "", '!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
        life_actions = life_actions + [player addAction[localize "STR_pAct_GunnerSeat", life_fnc_copEnter, "gunner", 100, false, false, "", '!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
        life_actions = life_actions + [player addAction[localize "STR_pAct_GoOut", life_fnc_copEnter, "exit", 100, false, false, "", '(vehicle player != player) && (locked(vehicle player)==2)']];
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Zatamuj Krwotok</t>", {
            bleedingEffect = 0;
            hint "Krwotok Zatamowany"
        },
        "", 0, false, false, "", ' [] call bandazyk_czek ']];
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Upuść Pojazd</t>", {
            false spawn life_fnc_detachveh
        },
        "", 0, false, false, "", ' ((count attachedObjects player) > 0) && zataczowany_pojazd ']];
    };
};