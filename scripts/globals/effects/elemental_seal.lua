-----------------------------------
--
--     dsp.effect.ELEMENTAL_SEAL
--
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
   target:addMod(dsp.mod.MACC,256);
   target:addMod(dsp.mod.MAGIC_DAMAGE,30);
   target:addMod(dsp.mod.CONSERVE_MP,30);
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    target:delMod(dsp.mod.MACC,256)
    target:delMod(dsp.mod.MAGIC_DAMAGE,30);
    target:delMod(dsp.mod.CONSERVE_MP,30);
end
