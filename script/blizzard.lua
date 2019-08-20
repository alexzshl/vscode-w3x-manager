local jass = require "jass.common"

local BJ = {}

-- Game constants
BJ.bj_MAX_INVENTORY = 6
BJ.bj_MAX_PLAYERS = 12
BJ.bj_PLAYER_NEUTRAL_VICTIM = 13
BJ.bj_PLAYER_NEUTRAL_EXTRA = 14
BJ.bj_MAX_PLAYER_SLOTS = 16
BJ.bj_MAX_SKELETONS = 25
BJ.bj_MAX_STOCK_ITEM_SLOTS = 11
BJ.bj_MAX_STOCK_UNIT_SLOTS = 11
BJ.bj_MAX_ITEM_LEVEL = 10

BJ.GetRectCenter = function(whichRect)
    return jass.Location(jass.GetRectCenterX(whichRect), jass.GetRectCenterY(whichRect))
end

BJ.TriggerRegisterAnyUnitEventBJ = function(trig, whichEvent)
    for i = 0, BJ.bj_MAX_PLAYER_SLOTS-1 do
        jass.TriggerRegisterPlayerUnitEvent(trig, jass.Player(i), whichEvent, nil)
    end
end

BJ.BJDebugMsg = function (msg)
    for i = 0, BJ.bj_MAX_PLAYER_SLOTS-1 do
        jass.DisplayTimedTextToPlayer(jass.Player(i),0,0,60,msg)
    end
end

return BJ