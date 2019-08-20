// YDWE中新建一个空白jass文件,将代码拷贝过去,保存地图时YDWE会自动创建物编信息,重启后生效
// Jass中的直接lua代码<?...?>在保存地图时会执行完毕,与地图运行时无关
// LUA物编的一个缺点在于难以控制代码的关联性.由于物编ID是按顺序自动生成的,如果中间某个obj删除,会导致其他物编ID变动,进而导致触发器中的ID异常
// 相比LUA物编,更推荐的做法是lni物编,因为ini文件中可以直接指定ID值,人为保证ID的稳定性

library WUBIAN1
private function XG_LUA_unit takes nothing returns nothing
<?
local slk = require "slk"

XG_LUA_unit_obj = {}
local obj = slk.unit.Hamg:new("XG_LUA_unit_1")
    obj.abilList=""
    obj.heroAbilList=""
    obj.Name="alex"
    obj.HotKey="B"
    obj.modelScale=5
    obj.spd=520
table.insert(XG_LUA_unit_obj, obj)
local obj = slk.unit.hbew:new("XG_LUA_unit_2")
    obj.abilList=""
    obj.heroAbilList=""
    obj.Name="car"
    obj.HotKey="B"
    obj.modelScale=5
    obj.spd=520
table.insert(XG_LUA_unit_obj, obj)
?>
endfunction
endlibrary

function Trig_XG_LUA_UNITActions takes nothing returns nothing
    <?for i = 1, #XG_LUA_unit_obj do?>
    set udg_unit[<?=i?>] = '<?=XG_LUA_unit_obj[i].get_id()?>'
    <?end?>
endfunction

function InitTrig_XG_LUA_UNIT takes nothing returns nothing
    set gg_trg_XG_LUA_UNIT = CreateTrigger()
    #ifdef DEBUG
    call YDWESaveTriggerName(gg_trg_XG_LUA_UNIT, "XG_LUA_UNIT")
    #endif
    call TriggerAddAction(gg_trg_XG_LUA_UNIT, function Trig_XG_LUA_UNITActions)
endfunction