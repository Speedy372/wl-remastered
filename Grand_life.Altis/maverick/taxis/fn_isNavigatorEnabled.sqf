private _isInstalled = isClass(missionConfigFile >> "maverick_navigation_cfg");
private _isEnabled = (getNumber(missionConfigFile >> "maverick_taxis_cfg" >> "general" >> "automaticNavigation")) == 1;
(_isInstalled && _isEnabled)