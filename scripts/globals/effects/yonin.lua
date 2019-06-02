-----------------------------------
--
--
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect) --power=30 initially, subpower=20 for enmity
    target:addMod(dsp.mod.ACC,effect:getPower())
    target:addMod(dsp.mod.HASTE_ABILITY,153)
    target:addMod(dsp.mod.NINJA_TOOL,effect:getPower())
    target:addMod(dsp.mod.ENMITY,effect:getSubPower())
    target:addMod(dsp.mod.EVA,40)
end

function onEffectTick(target,effect)

end

function onEffectLose(target,effect)
    --remove the remaining power
    target:delMod(dsp.mod.ACC,effect:getPower())
    target:delMod(dsp.mod.HASTE_ABILITY,153)
    target:delMod(dsp.mod.NINJA_TOOL,effect:getPower())
    target:delMod(dsp.mod.ENMITY,effect:getSubPower())
    target:delMod(dsp.mod.EVA,40)
end
