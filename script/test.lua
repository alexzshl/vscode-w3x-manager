local jass   = require "jass.common"
local bliz   = require "blizzard"
-- setmetatable(_ENV, {__index = getmetatable(jass).__index})
local MAP = {}
print(_VERSION)

function ToId(identify)
    return string.unpack(">I4", identify)
end

function ToStr(id)
    return string.pack(">I4", id)
end

-- 地图初始化 之后执行
jass.DisplayTextToPlayer(jass.Player(0), 0, 0, "map initalize done")

-- 游戏逝去 1s
local trg001 = jass.CreateTrigger()
jass.TriggerRegisterTimerEvent(trg001, 1, false)
jass.TriggerAddCondition()
jass.TriggerAddAction(trg001, function ()
    jass.DisplayTextToPlayer(jass.Player(0), 0, 0, "map initalize done")
end
)

-- 游戏逝去 2s
local trg011 = jass.CreateTrigger()
jass.TriggerRegisterTimerEvent(trg011, 2, false)
jass.TriggerAddCondition()
jass.TriggerAddAction(trg011, function ()
    print("hello")
    local unit = jass.GetEventTargetUnit()
    jass.DisplayTextToPlayer(jass.Player(0), 0, 0, _VERSION)
    jass.DisplayTextToPlayer(jass.Player(0), 0, 0, "123")
    jass.CreateUnit(jass.Player(0), string.unpack('>I4', 'hfoo'), 0.00, 0.00, 90.00)
    -- jass.CreateUnit(jass.Player(0), string.unpack(">I4", "Hamg"), 0.00, 100.00, 0.00)
end
)

-- 游戏逝去 4s
local trg_timer = jass.CreateTrigger()
-- jass.TriggerRegisterTimerEvent(trg_timer, 4, false)
jass.TriggerAddAction(trg_timer, function()
    jass.DisplayTextToPlayer(jass.Player(0), 0, 0, "timer start")
    local timer = jass.CreateTimer()
    local timerdialog = jass.CreateTimerDialog(timer)
    jass.TimerDialogSetTitle(timerdialog, "test timer")
    jass.TimerDialogDisplay(timerdialog, true)
    jass.TimerStart(timer, 10, false, function()
        jass.DisplayTextToPlayer(jass.Player(0), 0, 0, "timer expired")
        local x = jass.GetRectCenterX(jass.gg_rct_test)
        local y = jass.GetRectCenterY(jass.gg_rct_test)
        jass.DisplayTextToPlayer(jass.Player(0), 0,0, "rect_center_test: "..x..", "..y)
        -- local point = bj.GetRectCenter(jass.gg_rct_test)
        -- jass.RemoveLocation(point)
    end
)
end
)

-- 载入英雄
local trg_heros = jass.CreateTrigger()
jass.TriggerRegisterTimerEvent(trg_heros, 2, false)
local heros = {}
jass.TriggerAddAction(trg_heros, function()
    jass.DisplayTextToPlayer(jass.Player(0), 0, 0, _VERSION)
    jass.DisplayTextToPlayer(jass.Player(0), 0, 0, "create unit")
    jass.CreateUnit(jass.Player(jass.PLAYER_NEUTRAL_PASSIVE), string.unpack(">I4", "Hamg"), 0.00, 100.00, 0.00)
end
)

-- 任意单位释放技能
local trg000 = jass.CreateTrigger()
bliz.TriggerRegisterAnyUnitEventBJ(trg000, jass.EVENT_PLAYER_UNIT_SPELL_EFFECT)
jass.TriggerAddAction(trg000, function ()
    if jass.GetSpellAbilityId() == ToId("A000") then
        print("A000")
        local u0 = jass.GetTriggerUnit()
        -- jass.DisplayTextToPlayer(jass.Player(0), 0, 0, jass.GetUnitName(u0))
        local p0 = jass.GetOwningPlayer(u0)
        local u1 = jass.GetSpellTargetUnit()
        -- jass.DisplayTextToPlayer(jass.Player(0), 0, 0, jass.GetUnitName(u1))
        local p1 = jass.GetOwningPlayer(u1)
        local g0 = jass.CreateGroup()
        jass.GroupEnumUnitsInRange(g0, jass.GetUnitX(u0), jass.GetUnitY(u0), 600, jass.Condition(function ()
            local b1 = jass.IsUnitEnemy(jass.GetFilterUnit(), jass.GetTriggerPlayer())
            local b2 = not jass.IsUnitAlly(jass.GetFilterUnit(), jass.GetTriggerPlayer())
            local b3 = jass.GetUnitState(jass.GetFilterUnit(), jass.UNIT_STATE_LIFE) > 0
            return b2 and b3
        end
        ))
        jass.ForGroup(g0, function ()
            local u = jass.GetEnumUnit()
            -- bliz.BJDebugMsg("forgroup")
            jass.DisplayTextToPlayer(jass.Player(0), 0, 0, jass.GetUnitName(u))
            -- jass.SetUnitState(u, jass.UNIT_STATE_LIFE, 1)
            jass.UnitDamageTarget( u0, u, 100, true, false, jass.ATTACK_TYPE_NORMAL, jass.DAMAGE_TYPE_NORMAL, jass.WEAPON_TYPE_WHOKNOWS )
        end
        )
        jass.DestroyGroup(g0)
        -- while jass.FirstOfGroup(g0) do
        --     local u2 = jass.FirstOfGroup(g0)
        --     if jass.GetUnitName(u2) == "步兵" then
        --         jass.
        --     end
        -- end
    end
end
)
