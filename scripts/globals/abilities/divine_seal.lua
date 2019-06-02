-----------------------------------
-- Ability: Divine Seal
-- Enhances the potency of the user's next healing spell.
-- Obtained: White Mage Level 15
-- Recast Time: 10:00
-- Duration: 1 Spell or 60 seconds, whichever occurs first.
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------

function onAbilityCheck(player,target,ability)
  if (player:getMainJob(dsp.job.WHM)) then
      ability:setRecast(ability:getRecast()/20)
  end
    return 0,0
end

function onUseAbility(player,target,ability)
    player:addStatusEffect(dsp.effect.DIVINE_SEAL,1,0,20)
    player:addMP(player:getMaxMP() * 0.05)
end
