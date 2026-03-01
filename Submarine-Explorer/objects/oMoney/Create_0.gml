global.money = 0;

enum ORE {
    IRON,
    GOLD,
    DIAMOND
}

global.ore_value = array_create(4);
global.ore_value[ORE.IRON]    = 5;
global.ore_value[ORE.GOLD]    = 15;
global.ore_value[ORE.DIAMOND] = 50;

global.ore_count = array_create(4, 0);

