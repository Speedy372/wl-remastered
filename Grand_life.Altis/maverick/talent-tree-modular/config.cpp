#define true 1#define false 0#include "maverick\talent-tree-modular\gui\_master.cpp"
class Maverick_TTM {
    class Config {
        keyCode = 20;
        shift = false;
        ctrl = true;
    };
    class Actions {

        #include "maverick\talent-tree-modular\configuration\actions.hpp"
    };
    class Levels {#include "maverick\talent-tree-modular\configuration\levels.hpp"
    };
    class Perks {#include "maverick\talent-tree-modular\configuration\perks.hpp"
    };
};