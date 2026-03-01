function sell_all_ores()
{
    for (var i = 0; i < array_length(global.ore_count); i++)
    {
        var amount = global.ore_count[i];
        if (amount > 0)
        {
            global.money += amount * global.ore_value[i];
            global.ore_count[i] = 0;
        }
    }
}