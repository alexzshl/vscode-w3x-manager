globals
//globals from BzAPI:
constant boolean LIBRARY_BzAPI=true
//endglobals from BzAPI
    // User-defined
timer udg_t= null
timerdialog udg_tw= null
integer udg_frame_hg= 0
integer array udg_unit
unit array udg_units
    // Generated
rect gg_rct_test= null
trigger gg_trg_XG_LUA_UNIT= null
trigger gg_trg_XG_LUA_ITEM= null
trigger gg_trg_aaa= null
trigger gg_trg_bbb= null
trigger gg_trg_ccc= null
trigger gg_trg_test= null
trigger gg_trg_demo= null
trigger gg_trg_demo2= null
trigger gg_trg_timer= null
trigger gg_trg_test_01= null
trigger gg_trg_createUnit= null
trigger gg_trg__native_lua= null
trigger gg_trg_import_lua= null
trigger gg_trg_exec_lua= null
trigger gg_trg_a_lua= null
unit gg_unit_Hamg_0007= null


//JASSHelper struct globals:

endglobals
    native DzGetMouseTerrainX takes nothing returns real
    native DzGetMouseTerrainY takes nothing returns real
    native DzGetMouseTerrainZ takes nothing returns real
    native DzIsMouseOverUI takes nothing returns boolean
    native DzGetMouseX takes nothing returns integer
    native DzGetMouseY takes nothing returns integer
    native DzGetMouseXRelative takes nothing returns integer
    native DzGetMouseYRelative takes nothing returns integer
    native DzSetMousePos takes integer x, integer y returns nothing
    native DzTriggerRegisterMouseEvent takes trigger trig, integer btn, integer status, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseEventByCode takes trigger trig, integer btn, integer status, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterKeyEvent takes trigger trig, integer key, integer status, boolean sync, string func returns nothing
    native DzTriggerRegisterKeyEventByCode takes trigger trig, integer key, integer status, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterMouseWheelEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseWheelEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterMouseMoveEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseMoveEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzGetTriggerKey takes nothing returns integer
    native DzGetWheelDelta takes nothing returns integer
    native DzIsKeyDown takes integer iKey returns boolean
    native DzGetTriggerKeyPlayer takes nothing returns player
    native DzGetWindowWidth takes nothing returns integer
    native DzGetWindowHeight takes nothing returns integer
    native DzGetWindowX takes nothing returns integer
    native DzGetWindowY takes nothing returns integer
    native DzTriggerRegisterWindowResizeEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterWindowResizeEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzIsWindowActive takes nothing returns boolean
    native DzDestructablePosition takes destructable d, real x, real y returns nothing
    native DzSetUnitPosition takes unit whichUnit, real x, real y returns nothing
    native DzExecuteFunc takes string funcName returns nothing
    native DzGetUnitUnderMouse takes nothing returns unit
    native DzSetUnitTexture takes unit whichUnit, string path, integer texId returns nothing
    native DzSetMemory takes integer address, real value returns nothing
    native DzSetUnitID takes unit whichUnit, integer id returns nothing
    native DzSetUnitModel takes unit whichUnit, string path returns nothing
    native DzSetWar3MapMap takes string map returns nothing
    native DzGetLocale takes nothing returns string
    native DzGetUnitNeededXP takes unit whichUnit, integer level returns integer
    native DzTriggerRegisterSyncData takes trigger trig, string prefix, boolean server returns nothing
    native DzSyncData takes string prefix, string data returns nothing
    native DzGetTriggerSyncData takes nothing returns string
    native DzGetTriggerSyncPlayer takes nothing returns player
    native DzFrameHideInterface takes nothing returns nothing
    native DzFrameEditBlackBorders takes real upperHeight, real bottomHeight returns nothing
    native DzFrameGetPortrait takes nothing returns integer
    native DzFrameGetMinimap takes nothing returns integer
    native DzFrameGetCommandBarButton takes integer row, integer column returns integer
    native DzFrameGetHeroBarButton takes integer buttonId returns integer
    native DzFrameGetHeroHPBar takes integer buttonId returns integer
    native DzFrameGetHeroManaBar takes integer buttonId returns integer
    native DzFrameGetItemBarButton takes integer buttonId returns integer
    native DzFrameGetMinimapButton takes integer buttonId returns integer
    native DzFrameGetUpperButtonBarButton takes integer buttonId returns integer
    native DzFrameGetTooltip takes nothing returns integer
    native DzFrameGetChatMessage takes nothing returns integer
    native DzFrameGetUnitMessage takes nothing returns integer
    native DzFrameGetTopMessage takes nothing returns integer
    native DzGetColor takes integer r, integer g, integer b, integer a returns integer
    native DzFrameSetUpdateCallback takes string func returns nothing
    native DzFrameSetUpdateCallbackByCode takes code funcHandle returns nothing
    native DzFrameShow takes integer frame, boolean enable returns nothing
    native DzCreateFrame takes string frame, integer parent, integer id returns integer
    native DzCreateSimpleFrame takes string frame, integer parent, integer id returns integer
    native DzDestroyFrame takes integer frame returns nothing
    native DzLoadToc takes string fileName returns nothing
    native DzFrameSetPoint takes integer frame, integer point, integer relativeFrame, integer relativePoint, real x, real y returns nothing
    native DzFrameSetAbsolutePoint takes integer frame, integer point, real x, real y returns nothing
    native DzFrameClearAllPoints takes integer frame returns nothing
    native DzFrameSetEnable takes integer name, boolean enable returns nothing
    native DzFrameSetScript takes integer frame, integer eventId, string func, boolean sync returns nothing
    native DzFrameSetScriptByCode takes integer frame, integer eventId, code funcHandle, boolean sync returns nothing
    native DzGetTriggerUIEventPlayer takes nothing returns player
    native DzGetTriggerUIEventFrame takes nothing returns integer
    native DzFrameFindByName takes string name, integer id returns integer
    native DzSimpleFrameFindByName takes string name, integer id returns integer
    native DzSimpleFontStringFindByName takes string name, integer id returns integer
    native DzSimpleTextureFindByName takes string name, integer id returns integer
    native DzGetGameUI takes nothing returns integer
    native DzClickFrame takes integer frame returns nothing
    native DzSetCustomFovFix takes real value returns nothing
    native DzEnableWideScreen takes boolean enable returns nothing
    native DzFrameSetText takes integer frame, string text returns nothing
    native DzFrameGetText takes integer frame returns string
    native DzFrameSetTextSizeLimit takes integer frame, integer size returns nothing
    native DzFrameGetTextSizeLimit takes integer frame returns integer
    native DzFrameSetTextColor takes integer frame, integer color returns nothing
    native DzGetMouseFocus takes nothing returns integer
    native DzFrameSetAllPoints takes integer frame, integer relativeFrame returns boolean
    native DzFrameSetFocus takes integer frame, boolean enable returns boolean
    native DzFrameSetModel takes integer frame, string modelFile, integer modelType, integer flag returns nothing
    native DzFrameGetEnable takes integer frame returns boolean
    native DzFrameSetAlpha takes integer frame, integer alpha returns nothing
    native DzFrameGetAlpha takes integer frame returns integer
    native DzFrameSetAnimate takes integer frame, integer animId, boolean autocast returns nothing
    native DzFrameSetAnimateOffset takes integer frame, real offset returns nothing
    native DzFrameSetTexture takes integer frame, string texture, integer flag returns nothing
    native DzFrameSetScale takes integer frame, real scale returns nothing
    native DzFrameSetTooltip takes integer frame, integer tooltip returns nothing
    native DzFrameCageMouse takes integer frame, boolean enable returns nothing
    native DzFrameGetValue takes integer frame returns real
    native DzFrameSetMinMaxValue takes integer frame, real minValue, real maxValue returns nothing
    native DzFrameSetStepValue takes integer frame, real step returns nothing
    native DzFrameSetValue takes integer frame, real value returns nothing
    native DzFrameSetSize takes integer frame, real w, real h returns nothing
    native DzCreateFrameByTagName takes string frameType, string name, integer parent, string template, integer id returns integer
    native DzFrameSetVertexColor takes integer frame, integer color returns nothing
    native DzOriginalUIAutoResetPoint takes boolean enable returns nothing
    native DzFrameSetPriority takes integer frame, integer priority returns nothing
    native DzFrameSetParent takes integer frame, integer parent returns nothing
    native DzFrameGetHeight takes integer frame returns real
    native DzFrameSetFont takes integer frame, string fileName, real height, integer flag returns nothing
    native DzFrameGetParent takes integer frame returns integer
    native DzFrameSetTextAlignment takes integer frame, integer align returns nothing
    native DzFrameGetName takes integer frame returns string


//library BzAPI:
    //hardware




























    //plus











    //sync




    //gui








































































    function DzTriggerRegisterMouseEventTrg takes trigger trg,integer status,integer btn returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterMouseEvent(trg, btn, status, true, null)
    endfunction
    function DzTriggerRegisterKeyEventTrg takes trigger trg,integer status,integer btn returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterKeyEvent(trg, btn, status, true, null)
    endfunction
    function DzTriggerRegisterMouseMoveEventTrg takes trigger trg returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterMouseMoveEvent(trg, true, null)
    endfunction
    function DzTriggerRegisterMouseWheelEventTrg takes trigger trg returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterMouseWheelEvent(trg, true, null)
    endfunction
    function DzTriggerRegisterWindowResizeEventTrg takes trigger trg returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterWindowResizeEvent(trg, true, null)
    endfunction
    function DzF2I takes integer i returns integer
        return i
    endfunction
    function DzI2F takes integer i returns integer
        return i
    endfunction
    function DzK2I takes integer i returns integer
        return i
    endfunction
    function DzI2K takes integer i returns integer
        return i
    endfunction

//library BzAPI ends
//===========================================================================
// 
// test
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Sat Aug 17 23:22:30 2019
//   Map Author: 未知
// 
//===========================================================================
//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************
function InitGlobals takes nothing returns nothing
    local integer i= 0
    set udg_t=CreateTimer()
endfunction
//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************
//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'hfoo', - 287.8, 2810.8, 314.372)
    set u=CreateUnit(p, 'hpxe', - 651.7, 2724.3, 184.016)
    set u=CreateUnit(p, 'hmil', - 627.8, 2947.7, 234.565)
    set u=CreateUnit(p, 'hwat', - 282.2, 3229.5, 42.474)
    set u=CreateUnit(p, 'hwt3', - 68.4, 3145.8, 255.704)
    set u=CreateUnit(p, 'hsor', - 586.1, 2456.9, 265.899)
    set u=CreateUnit(p, 'Hpal', - 323.7, 2606.3, 85.322)
    set u=CreateUnit(p, 'Hamg', 3957.6, 1489.8, 230.243)
    set u=CreateUnit(p, 'hpea', 3176.4, 1946.2, 34.377)
    set u=CreateUnit(p, 'nvl2', 2970.7, 1429.1, 82.059)
    set u=CreateUnit(p, 'nvl2', 3126.9, 1749.3, 294.168)
endfunction
//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'nanb', 2999.2, 1584.8, 192.849)
    set u=CreateUnit(p, 'hfoo', 4761.4, 1637.6, 8.800)
    set u=CreateUnit(p, 'hrif', 4776.7, 1433.9, 181.807)
endfunction
//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set u=CreateUnit(p, 'hpea', 3213.8, 1943.8, 55.658)
    set u=CreateUnit(p, 'hpea', 3246.3, 1944.6, 210.175)
    set u=CreateUnit(p, 'hpea', 3296.1, 1942.5, 79.796)
    set u=CreateUnit(p, 'hpea', 3350.4, 1940.6, 124.446)
    set u=CreateUnit(p, 'hpea', 3397.1, 1933.4, 42.628)
    set u=CreateUnit(p, 'hpea', 3435.9, 1932.7, 332.434)
    set u=CreateUnit(p, 'hpea', 3488.5, 1934.0, 35.652)
    set u=CreateUnit(p, 'hpea', 3530.2, 1941.8, 90.343)
    set u=CreateUnit(p, 'hpea', 3565.8, 1944.4, 110.515)
    set u=CreateUnit(p, 'hpea', 3601.4, 1950.3, 237.191)
    set u=CreateUnit(p, 'hpea', 3619.7, 1987.7, 242.102)
    set u=CreateUnit(p, 'hpea', 3625.7, 2021.6, 206.978)
    set u=CreateUnit(p, 'hpea', 3619.1, 2065.5, 105.494)
    set u=CreateUnit(p, 'hpea', 3615.7, 2097.9, 216.152)
    set u=CreateUnit(p, 'hpea', 3615.3, 2139.1, 175.325)
    set u=CreateUnit(p, 'hpea', 3613.4, 2177.0, 329.929)
    set u=CreateUnit(p, 'hpea', 3610.0, 2209.9, 253.034)
    set u=CreateUnit(p, 'hpea', 3609.7, 2243.0, 98.814)
    set u=CreateUnit(p, 'hpea', 3609.4, 2278.1, 7.768)
    set u=CreateUnit(p, 'hpea', 3609.1, 2311.5, 200.737)
    set u=CreateUnit(p, 'hpea', 3610.4, 2345.2, 27.763)
endfunction
//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction
//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
endfunction
//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreatePlayerBuildings()
    call CreateNeutralHostile()
    call CreateNeutralPassive()
    call CreateUnitsForPlayer0() // INLINED!!
endfunction
//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************
function CreateRegions takes nothing returns nothing
    local weathereffect we
    set gg_rct_test=Rect(3616.0, 864.0, 4352.0, 1312.0)
endfunction
//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************
//===========================================================================
// Trigger: test
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
function Trig_testActions takes nothing returns nothing
    call SetTimeOfDay(12)
    call DisplayTextToPlayer(Player(0), 0, 0, "玩家 12")
endfunction
//===========================================================================
function InitTrig_test takes nothing returns nothing
    set gg_trg_test=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_test, 5)
    call TriggerAddAction(gg_trg_test, function Trig_testActions)
endfunction
//===========================================================================
// Trigger: demo
//===========================================================================
function Trig_demoActions takes nothing returns nothing
    call DzSetUnitPosition(GetTriggerUnit(), 0, 0)
endfunction
//===========================================================================
function InitTrig_demo takes nothing returns nothing
    set gg_trg_demo=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_demo, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddAction(gg_trg_demo, function Trig_demoActions)
endfunction
//===========================================================================
// Trigger: demo2
//===========================================================================
function Trig_demo2Actions takes nothing returns nothing
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=10
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call CreateUnit(Player(0), 'hfoo', 0.00, 0.00, 90.00)
        set bj_forLoopAIndex=bj_forLoopAIndex + 1
    endloop
endfunction
//===========================================================================
function InitTrig_demo2 takes nothing returns nothing
    set gg_trg_demo2=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_demo2, 30.00)
    call TriggerAddAction(gg_trg_demo2, function Trig_demo2Actions)
endfunction
//===========================================================================
// Trigger: createUnit
//===========================================================================
function Trig_createUnitActions takes nothing returns nothing
    call CreateUnit(Player(0), udg_unit[2], 0.00, 100.00, bj_UNIT_FACING)
    call BJDebugMsg("===============")
endfunction
//===========================================================================
function InitTrig_createUnit takes nothing returns nothing
    set gg_trg_createUnit=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_createUnit, 1.00)
    call TriggerAddAction(gg_trg_createUnit, function Trig_createUnitActions)
endfunction
//===========================================================================
// Trigger: _native.lua
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
//===========================================================================
// Trigger: import_lua
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
// import(导入到地图内的路径)(要导入的内容)
// import(导入到地图内的路径)(要导入的文件的路径, true)
// 
// 
// 

//===========================================================================
// Trigger: exec_lua
//===========================================================================
function Trig_exec_luaActions takes nothing returns nothing
    call Cheat("exec-lua: \"runtime\"")
    call Cheat("exec-lua: \"test\"")
    call Cheat("exec-lua: \"a\"")
endfunction
//===========================================================================
function InitTrig_exec_lua takes nothing returns nothing
    set gg_trg_exec_lua=CreateTrigger()
    call TriggerAddAction(gg_trg_exec_lua, function Trig_exec_luaActions)
endfunction
//===========================================================================
// Trigger: a.lua
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_test()
    call InitTrig_demo()
    call InitTrig_demo2()
    call InitTrig_createUnit()
    //Function not found: call InitTrig__native_lua()
    //Function not found: call InitTrig_import_lua()
    call InitTrig_exec_lua()
    //Function not found: call InitTrig_a_lua()
endfunction
//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_exec_lua)
endfunction
//***************************************************************************
//*
//*  Players
//*
//***************************************************************************
function InitCustomPlayerSlots takes nothing returns nothing
    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call ForcePlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)
    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call ForcePlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(1), true)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)
    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call ForcePlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(2), true)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)
    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call ForcePlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(3), true)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)
    // Player 9
    call SetPlayerStartLocation(Player(9), 4)
    call ForcePlayerStartLocation(Player(9), 4)
    call SetPlayerColor(Player(9), ConvertPlayerColor(9))
    call SetPlayerRacePreference(Player(9), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(9), true)
    call SetPlayerController(Player(9), MAP_CONTROL_COMPUTER)
    // Player 11
    call SetPlayerStartLocation(Player(11), 5)
    call ForcePlayerStartLocation(Player(11), 5)
    call SetPlayerColor(Player(11), ConvertPlayerColor(11))
    call SetPlayerRacePreference(Player(11), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(11), true)
    call SetPlayerController(Player(11), MAP_CONTROL_COMPUTER)
endfunction
function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_011
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerTeam(Player(3), 0)
    call SetPlayerTeam(Player(9), 0)
    call SetPlayerTeam(Player(11), 0)
endfunction
function InitAllyPriorities takes nothing returns nothing
    call SetStartLocPrioCount(0, 2)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(1, 2)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(2, 2)
    call SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(2, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(3, 2)
    call SetStartLocPrio(3, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 1, 2, MAP_LOC_PRIO_LOW)
endfunction
//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************
//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 7680.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 7424.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 7168.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 7168.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 7424.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 7680.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("SunkenRuinsDay")
    call SetAmbientNightSound("SunkenRuinsNight")
    call SetMapMusic("Music", true, 0)
    call CreateRegions()
    call CreateAllUnits()
    call InitBlizzard()


    call InitGlobals()
    call InitCustomTriggers()
    call ConditionalTriggerExecute(gg_trg_exec_lua) // INLINED!!
endfunction
//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************
function config takes nothing returns nothing
    call SetMapName("test")
    call SetMapDescription("没有说明")
    call SetPlayers(6)
    call SetTeams(6)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    call DefineStartLocation(0, 6016.0, - 6208.0)
    call DefineStartLocation(1, 2368.0, - 3136.0)
    call DefineStartLocation(2, 128.0, - 7040.0)
    call DefineStartLocation(3, - 1600.0, 4928.0)
    call DefineStartLocation(4, 3072.0, 64.0)
    call DefineStartLocation(5, - 896.0, - 6080.0)
    // Player setup
    call InitCustomPlayerSlots()
    call SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(1), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(2), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(3), MAP_CONTROL_USER)
    call SetPlayerSlotAvailable(Player(9), MAP_CONTROL_COMPUTER)
    call SetPlayerSlotAvailable(Player(11), MAP_CONTROL_COMPUTER)
    call InitGenericPlayerSlots()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:

