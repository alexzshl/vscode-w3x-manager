local jass = require "jass.common"
local trg111 = jass.CreateTrigger()
jass.TriggerRegisterTimerEvent(trg111, 1, false)
jass.TriggerAddAction(trg111, function ()
    jass.DisplayTextToPlayer(jass.Player(0), 0, 0, "INNER LUA SCRIPT")
end)
