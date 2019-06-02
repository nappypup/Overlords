-----------------------------------
--
--     dsp.effect.DIVINE_SEAL
--
-----------------------------------

require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/common")

function onEffectGain(target,effect)
  target:addMod(dsp.mod.CURE2MP_PERCENT,10)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
  target:delMod(dsp.mod.CURE2MP_PERCENT,10)
end
