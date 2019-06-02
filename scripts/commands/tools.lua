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
local stock_4 =
{
    605,    499,     -- Pickaxe
    1021,   499,     -- Hatchet
    1020,   499,     -- Sickle
    4165,   1000,    -- Silent Oil
    4164,   1000,    -- Prism Powder
    5362,   2000,    -- Rainbow Powder
    5417,   9999,    -- Toolbag (Sanjaku-Tenugui)
    5319,   9999,    -- Toolbag (Shinobi-Tabi)
    5314,   5000,    -- Toolbag (Shihei)
    5867,   20000,   -- Toolbag (Inoshishinofuda)
    5868,   25000,   -- Toolbag (Shikanofuda)
    5869,   25000,   -- Toolbag (Chonofuda)
    1022,   5000     -- Thief's Tools
};
dsp.shop.general(player, stock_4);
end
