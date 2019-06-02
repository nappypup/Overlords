--------------------------------------------------------------
-- func: !noobshop
-- auth: kyau
-- desc: opens the custom noobie shop menu anywhere in the world
--------------------------------------------------------------

require("scripts/globals/shop");

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player,page)
    local stock =
    {
        16607,   100,   -- Chaosbringer (DRK)
        17809,   100,   -- Mumeito (SAM)
        5493,    100,   -- Corsair's Die
        17859,   100,   -- Animator
        16534,   100,   -- Onion sword
        13184,   100,   -- white belt
        17068,   100,   -- onion rod
        4608,    100,   -- scroll of cure
        17104,   100,   -- onion staff
        4607,    100,   -- scroll of stone
        16482,   100,   -- onion dagger
        4606,    100,   -- scroll of dia
        16483,   100,    -- onion knife
    };
    dsp.shop.general(player, stock)
    player:PrintToPlayer("Noobie Shop: Welcome, Kupo!", 0xF);
end;
