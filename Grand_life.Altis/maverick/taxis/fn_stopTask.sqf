if (!isNil "mav_taxi_v_currentTask" && { ! isNull mav_taxi_v_currentTask
}) then {
    player removeSimpleTask mav_taxi_v_currentTask;
};