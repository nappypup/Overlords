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
local stock_1 =
{
    4238,   5000,   -- HQ Fire Crystal
    4239,   5000,   -- HQ Ice Crystal
    4240,   5000,   -- HQ Wind Crystal
    4241,   5000,   -- HQ Earth Crystal
    4242,   5000,   -- HQ Lightning Crystal
    4243,   5000,   -- HQ Water Crystal
    4244,   5000,   -- HQ Light Crystal
    4245,   5000    -- HQ Dark Crystal
};
dsp.shop.general(player, stock_1);
player:PrintToPlayer( "Crystal Depot: Welcome, Kupo!");
end
