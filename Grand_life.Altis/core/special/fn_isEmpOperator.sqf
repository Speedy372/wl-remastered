_player = _this select 0;
_slot = assignedVehicleRole player;
_vehicle = vehicle player;
_result = false;
if ((_vehicle != player) && (playerSide == west)) then {
    if ((typeof _vehicle in ["O_Heli_Light_02_unarmed_F", "I_Heli_light_03_unarmed_F", "B_T_VTOL_01_vehicle_F", "I_Heli_Transport_02_F"]) && (_vehicle getVariable["nano_emp_enabled", false])) then {
        if (_slot select 0 == "Turret") then {
            if (_slot select 1 select 0 == 0) then {
                _result = true;
            };
        }
    };
};
_result;