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
local stock_3 =
{
    4271,   2499,   -- Rice Dumpling
    4381,   2100,   -- Meat Mithkabob
    4398,   2100,   -- Fish Mithkabob
    4457,   2100,   -- Eel Kabob
    5166,   2100,   -- Coeurl Sub Sandwich
    4355,   1450,   -- Salmon Sub Sandwich
    5686,   799,    -- Cheese Sandwich
    5561,   799,    -- Moogle Pie
    4270,   999,    -- Sweet Rice Cake
    5944,   2000,   -- Frontier Soda
    5932,   1600,   -- Kitron Juice
    4424,   1100,   -- Melon Juice
    4422,   499     -- Orange Juice
};
dsp.shop.general(player, stock_3);
player:PrintToPlayer( "MogDonalds: Welcome, Kupo!");
end
