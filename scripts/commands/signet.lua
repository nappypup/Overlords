cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player,page)
    player:delStatusEffectsByFlag(dsp.effectFlag.INFLUENCE, true)
    player:addStatusEffect(dsp.effect.SIGNET,0,0,18000)
    player:PrintToPlayer("gains Signet!", 8);
end;
