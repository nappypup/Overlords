-----------------------------------
--
--
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect) --power=30 initially, subpower=20 for enmity
    target:addMod(dsp.mod.EVA,-effect:getPower())
    target:addMod(dsp.mod.ENMITY,-effect:getSubPower())
    target:addMod(dsp.mod.NIN_NUKE_BONUS,effect:getPower())
    target:addMod(dsp.mod.NINJUTSU, 100)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    --remove the remaining power
    target:delMod(dsp.mod.EVA,-effect:getPower())
    target:delMod(dsp.mod.ENMITY,-effect:getSubPower())
    target:delMod(dsp.mod.NIN_NUKE_BONUS,effect:getPower())
    target:delMod(dsp.mod.NINJUTSU, 100)
end
