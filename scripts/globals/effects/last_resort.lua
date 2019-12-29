-----------------------------------
--
--     dsp.effect.LAST_RESORT
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target, effect)
  if (target:getMainJob() == dsp.job.DRK) then
    target:addMod(dsp.mod.ENH_DRAIN_ASPIR, 100)
    target:addMod(dsp.mod.AUGMENTS_ABSORB, 400)
    target:addMod(dsp.mod.DARK, 100)
    target:addMod(dsp.mod.ATTP, 25 + target:getMerit(dsp.merit.LAST_RESORT_EFFECT))
    target:addMod(dsp.mod.HASTE_ABILITY, target:getMod(dsp.mod.DESPERATE_BLOWS) + target:getMerit(dsp.merit.DESPERATE_BLOWS))
    -- Gear that affects this mod is handled by a Latent Effect because the gear must remain equipped
    target:addMod(dsp.mod.DEFP, -25 - target:getMerit(dsp.merit.LAST_RESORT_EFFECT))
  else
    target:addMod(dsp.mod.ATTP, 25 + target:getMerit(dsp.merit.LAST_RESORT_EFFECT))
    target:addMod(dsp.mod.HASTE_ABILITY, target:getMod(dsp.mod.DESPERATE_BLOWS) + target:getMerit(dsp.merit.DESPERATE_BLOWS))
  end
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
  if (target:getMainJob() == dsp.job.DRK) then
    target:delMod(dsp.mod.ENH_DRAIN_ASPIR, 100)
    target:delMod(dsp.mod.AUGMENTS_ABSORB, 400)
    target:delMod(dsp.mod.DARK, 100)
    target:delMod(dsp.mod.ATTP, 25 + target:getMerit(dsp.merit.LAST_RESORT_EFFECT))
    target:delMod(dsp.mod.HASTE_ABILITY, target:getMod(dsp.mod.DESPERATE_BLOWS) + target:getMerit(dsp.merit.DESPERATE_BLOWS))
    -- Gear that affects this mod is handled by a Latent Effect because the gear must remain equipped
   target:delMod(dsp.mod.DEFP, -25 - target:getMerit(dsp.merit.LAST_RESORT_EFFECT))
  else
    target:delMod(dsp.mod.ATTP, 25 + target:getMerit(dsp.merit.LAST_RESORT_EFFECT))
    target:delMod(dsp.mod.HASTE_ABILITY, target:getMod(dsp.mod.DESPERATE_BLOWS) + target:getMerit(dsp.merit.DESPERATE_BLOWS))
  end
end
