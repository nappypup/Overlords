-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Abda Lurabda
-- Standard Info NPC
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/pets")
-----------------------------------

function onTrade(player,npc,trade)
end

function onTrigger(player, name)
  if (name == nil) then
      error(player, "You must supply a name.");
      return;
  end
    if player:getMainJob() == dsp.job.PUP then
      player:setPetName(dsp.pet.type.AUTOMATON, name)
      player:messageSpecial(ID.text.AUTOMATON_RENAME)
    end
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)

end
