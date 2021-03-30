class Maverick_GPS {
    tag = "MAV_gps";
    class functions {
        file = "maverick\navigation";
        class initGPS {};
        class fetchSettings {};
        class saveSettings {};
        class kmToMiles {};
        class distance {};
        class nearestLocation {};
        class explorer {};
        class shortestRoute {};
        class initNavigation {};
        class addPath {};
        class addPathSegment {};
        class startNavigationScripted {};
        class stopNavigationScripted {};
        class isNavigationRunning {};
        class clearPath {};
        class playInstructionSound {};
        class init {
            postInit = 1;
        };
    };
};