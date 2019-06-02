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
local stock_2 =
{
    4148,   450,     -- Antidote
    4154,   1000,    -- Holy Water
    4150,   2000,    -- Eye Drops
    4151,   2000,    -- Echo Drops
    4153,   2000,    -- Bottle of Antacid
    5418,   2000,    -- Tincture
    5328,   2000,    -- Hi-Potion Drop
    5358,   2000,    -- Hi-Ether Drop
    5356,   5000,    -- Remedy Ointment
    4202,   25000,   -- Daedalus Wing
    5876,   25000,   -- Petrify Screen
    5877,   25000,   -- Terror Screen
    5878,   25000,   -- Amnesia Screen
    5879,   25000,   -- Doom Screen
    5880,   25000    -- Poison Screen
};
dsp.shop.general(player, stock_2);
player:PrintToPlayer( "Pharmacy: Welcome, Kupo!");
end
