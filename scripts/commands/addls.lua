-------------------------------------------------------------------------------
--  Command: addls
--  Details: Used to add new ls Mate
--  Syntax:  !addls
-------------------------------------------------------------------------------
cmdprops =
{
    permission = 0,
    parameters = ""
}

PC:AddLinkpearl("Overlords")
PC:messageSpecial(ITEM_OBTAINED,515)
