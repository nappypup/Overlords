--------------------------------------------------------------
-- func: @mogshop <page number>
-- auth: forgottenandlost
-- desc: opens the custom moogle shop menu anywhere in the world
--------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player,page)
local S_clear = player:hasCompletedMission(SANDORIA,THE_HEIR_TO_THE_LIGHT);
local B_clear = player:hasCompletedMission(BASTOK,WHERE_TWO_PATHS_CONVERGE);
local W_clear = player:hasCompletedMission(WINDURST,MOON_READING);
if (S_clear == true and B_clear == true and W_clear == true) then
    local stock_5a =
    {
        5717,   1,        -- M&P Doner Kebab
        5639,   5000,     -- M&P Chicken
        5640,   5000,     -- M&P Cracker
        5641,   5000,     -- M&P Dumpling
        265,    10000,    -- Adamantoise Statue
        266,    10000,    -- Behemoth Statue
        267,    10000,    -- Fafnir Statue
        268,    10000,    -- Nomad Moogle Statue
        269,    10000,    -- Shadow Lord Statue
        1255,   500000,   -- Fire Ore
        1256,   500000,   -- Ice Ore
        1257,   500000,   -- Wind Ore
        1258,   500000,   -- Earth Ore
        1259,   500000,   -- Lightning Ore
        1260,   500000,   -- Water Ore
    };
    dsp.shop.general(player, stock_5a);
    player:PrintToPlayer( "National Hero Specials: Welcome, Kupo!");
elseif (S_clear == true or B_clear == true or W_clear == true) then
    local stock_5b =
    {
        5717,   1,       -- M&P Doner Kebab
        5639,   5000,    -- M&P Chicken
        5640,   5000,    -- M&P Cracker
        5641,   5000,    -- M&P Dumpling
        268,    10000,   -- Nomad Moogle Statue
        269,    10000,   -- Shadow Lord Statue
    };
    dsp.shop.general(player, stock_5b);
    player:PrintToPlayer( "National Hero Specials: Welcome, Kupo!");
elseif (player:getRank() >= 5) then
    local stock_5c =
    {
        5717,   1,       -- M&P Doner Kebab
        268,    10000,   -- Nomad Moogle Statue
    };
    dsp.shop.general(player, stock_5c);
    player:PrintToPlayer( "There isn't much in stock for low rank adventurers, Kupo!");
else
    player:PrintToPlayer( "You need a higher rank to unlock this, Kupo!");
end
end
