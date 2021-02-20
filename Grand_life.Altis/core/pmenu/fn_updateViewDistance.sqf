switch (true) do {
case((vehicle player) isKindOf "CAManBase"):
    {
        setViewDistance life_settings_viewDistanceFoot
    };
case((vehicle player) isKindOf "LandVehicle"):
    {
        setViewDistance life_settings_viewDistanceCar
    };
case((vehicle player) isKindOf "Ship"):
    {
        setViewDistance life_settings_viewDistanceCar
    };
case((vehicle player) isKindOf "Air"):
    {
        setViewDistance life_settings_viewDistanceAir
    };
};