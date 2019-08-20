library WUBIAN2
private function XG_LUA_item takes nothing returns nothing
<?
local slk = require "slk"

XG_LUA_item_obj = {}
local obj = slk.item.afac:new("XG_LUA_item_1")
    obj.abilList = "AIse"
    obj.Name = "新手武器LV1"
table.insert(XG_LUA_item_obj, obj)
local obj = slk.item.afac:new("XG_LUA_item_2")
    obj.abilList = "AIse"
    obj.Name = "新手武器LV2"
table.insert(XG_LUA_item_obj, obj)
local obj = slk.item.afac:new("XG_LUA_item_3")
    obj.abilList = "Altg"
    obj.Name = "新手武器LV3"
table.insert(XG_LUA_item_obj, obj)
?>
endfunction
endlibrary