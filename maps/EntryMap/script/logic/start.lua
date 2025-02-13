local ____lualib = include("lualib_bundle")
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__StringReplaceAll = ____lualib.__TS__StringReplaceAll
local __TS__StringSplit = ____lualib.__TS__StringSplit
local __TS__ParseInt = ____lualib.__TS__ParseInt
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__New = ____lualib.__TS__New
local __TS__Promise = ____lualib.__TS__Promise
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["14"] = 1,["15"] = 1,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 10,["27"] = 10,["28"] = 11,["29"] = 11,["30"] = 12,["31"] = 12,["32"] = 13,["33"] = 13,["34"] = 14,["35"] = 14,["36"] = 18,["37"] = 18,["38"] = 19,["39"] = 19,["40"] = 20,["41"] = 20,["42"] = 21,["43"] = 21,["44"] = 22,["45"] = 22,["46"] = 23,["47"] = 23,["48"] = 23,["49"] = 24,["50"] = 24,["51"] = 25,["52"] = 25,["53"] = 26,["54"] = 26,["55"] = 27,["56"] = 27,["57"] = 29,["58"] = 29,["59"] = 29,["60"] = 30,["61"] = 30,["62"] = 31,["63"] = 31,["64"] = 32,["65"] = 32,["66"] = 33,["67"] = 33,["68"] = 34,["69"] = 34,["70"] = 34,["71"] = 35,["72"] = 35,["73"] = 36,["74"] = 36,["75"] = 37,["76"] = 37,["77"] = 38,["78"] = 38,["79"] = 40,["80"] = 40,["81"] = 41,["82"] = 41,["83"] = 42,["84"] = 42,["85"] = 43,["86"] = 43,["87"] = 44,["88"] = 44,["89"] = 44,["90"] = 45,["91"] = 45,["92"] = 87,["93"] = 88,["95"] = 91,["96"] = 92,["97"] = 92,["98"] = 92,["99"] = 92,["100"] = 92,["101"] = 92,["102"] = 92,["103"] = 92,["104"] = 92,["105"] = 92,["106"] = 92,["107"] = 92,["108"] = 92,["109"] = 92,["110"] = 92,["111"] = 92,["112"] = 102,["113"] = 102,["114"] = 102,["115"] = 102,["116"] = 103,["117"] = 103,["118"] = 103,["119"] = 103,["121"] = 106,["123"] = 108,["124"] = 108,["125"] = 109,["126"] = 110,["127"] = 111,["129"] = 108,["132"] = 106,["133"] = 116,["134"] = 121,["135"] = 122,["138"] = 126,["139"] = 126,["140"] = 126,["141"] = 126,["142"] = 127,["143"] = 127,["144"] = 127,["145"] = 127,["146"] = 128,["147"] = 128,["148"] = 128,["149"] = 128,["150"] = 130,["151"] = 131,["152"] = 132,["153"] = 133,["154"] = 134,["155"] = 135,["156"] = 136,["157"] = 137,["158"] = 138,["160"] = 140,["161"] = 141,["163"] = 144,["164"] = 147,["165"] = 148,["166"] = 149,["167"] = 149,["168"] = 149,["169"] = 149,["170"] = 150,["171"] = 151,["174"] = 164,["177"] = 153,["178"] = 153,["179"] = 154,["180"] = 155,["181"] = 156,["182"] = 157,["183"] = 158,["185"] = 160,["195"] = 168,["196"] = 130,["197"] = 171,["198"] = 171,["199"] = 171,["200"] = 172,["201"] = 172,["202"] = 172,["203"] = 173,["204"] = 172,["205"] = 172,["206"] = 171,["207"] = 171,["208"] = 177,["209"] = 116,["210"] = 181,["213"] = 183,["214"] = 184,["216"] = 187,["217"] = 188,["219"] = 191,["220"] = 193,["221"] = 194,["222"] = 195,["223"] = 196,["224"] = 196,["225"] = 196,["226"] = 196,["227"] = 196,["228"] = 196,["229"] = 196,["230"] = 196,["231"] = 196,["232"] = 197,["233"] = 197,["234"] = 197,["235"] = 197,["236"] = 197,["237"] = 197,["238"] = 198,["239"] = 199,["240"] = 194,["241"] = 202,["242"] = 207,["243"] = 208,["244"] = 210,["245"] = 211,["246"] = 213,["247"] = 213,["248"] = 215,["249"] = 216,["250"] = 217,["251"] = 218,["252"] = 219,["253"] = 220,["254"] = 222,["255"] = 223,["256"] = 224,["258"] = 227,["259"] = 228,["260"] = 229,["261"] = 231,["262"] = 232,["263"] = 234,["264"] = 235,["265"] = 236,["266"] = 239,["267"] = 239,["268"] = 239,["269"] = 240,["270"] = 241,["271"] = 241,["274"] = 243,["275"] = 243,["276"] = 243,["277"] = 244,["278"] = 243,["279"] = 243,["280"] = 239,["281"] = 239,["283"] = 249,["286"] = 253,["287"] = 254,["288"] = 255,["290"] = 258,["291"] = 259,["292"] = 260,["294"] = 262,["295"] = 275,["296"] = 278,["297"] = 279,["298"] = 280,["300"] = 285,["301"] = 287,["302"] = 289,["303"] = 290,["304"] = 291,["305"] = 292,["306"] = 293,["309"] = 296,["310"] = 298,["311"] = 300,["312"] = 300,["313"] = 300,["314"] = 301,["315"] = 301,["316"] = 301,["317"] = 302,["318"] = 303,["319"] = 304,["320"] = 305,["323"] = 308,["324"] = 309,["326"] = 310,["327"] = 310,["329"] = 311,["330"] = 312,["331"] = 314,["332"] = 315,["333"] = 316,["334"] = 318,["336"] = 320,["337"] = 321,["338"] = 322,["339"] = 323,["340"] = 324,["341"] = 325,["343"] = 329,["344"] = 330,["345"] = 331,["347"] = 333,["349"] = 337,["350"] = 338,["351"] = 337,["352"] = 348,["353"] = 349,["354"] = 350,["356"] = 352,["357"] = 352,["361"] = 310,["364"] = 354,["365"] = 355,["366"] = 356,["368"] = 358,["370"] = 360,["371"] = 361,["372"] = 362,["373"] = 363,["375"] = 301,["376"] = 301,["377"] = 300,["378"] = 300,["379"] = 367,["380"] = 369,["381"] = 370,["383"] = 373,["384"] = 378,["385"] = 379,["386"] = 381,["387"] = 381,["388"] = 381,["389"] = 381,["390"] = 381,["391"] = 382,["392"] = 383,["393"] = 384,["394"] = 386,["395"] = 387,["396"] = 388,["397"] = 389,["398"] = 390,["399"] = 391,["400"] = 392,["401"] = 393,["404"] = 396,["405"] = 398,["406"] = 399,["408"] = 402,["410"] = 404,["412"] = 406,["413"] = 407,["414"] = 408,["415"] = 408,["416"] = 408,["417"] = 408,["418"] = 408,["419"] = 409,["420"] = 410,["421"] = 412,["422"] = 413,["423"] = 414,["425"] = 416,["427"] = 419,["428"] = 420,["429"] = 421,["431"] = 433,["432"] = 434,["433"] = 435,["435"] = 438,["436"] = 439,["437"] = 440,["438"] = 441,["439"] = 442,["441"] = 444,["442"] = 444,["444"] = 447,["445"] = 447,["446"] = 447,["447"] = 448,["448"] = 447,["449"] = 447,["451"] = 452,["452"] = 452,["453"] = 452,["454"] = 453,["455"] = 454,["457"] = 456,["459"] = 452,["460"] = 452,["462"] = 182,["465"] = 461,["467"] = 182,["469"] = 181});
local ____exports = {}
local ____DebugRoomClient = include("framework.debug.DebugRoomClient")
local debugRoomClient = ____DebugRoomClient.debugRoomClient
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____TableInit = include("logic.configs.TableInit")
local initConfig = ____TableInit.initConfig
local ____FightController = include("logic.controllers.FightController")
local fightController = ____FightController.fightController
local ____GameController = include("logic.controllers.GameController")
local gameController = ____GameController.gameController
local ____GenreAutoController = include("logic.controllers.GenreAutoController")
local genreAutoController = ____GenreAutoController.genreAutoController
local ____DebugEnv = include("logic.debug.DebugEnv")
local debugEnv = ____DebugEnv.debugEnv
local ____FightRoom = include("logic.debug.FightRoom")
local FightRoom = ____FightRoom.FightRoom
local ____SimpleFightRoom = include("logic.debug.SimpleFightRoom")
local SimpleFightRoom = ____SimpleFightRoom.SimpleFightRoom
local ____DTest = include("logic.dialogs.DTest")
local DTest = ____DTest.DTest
local ____CheckConfig = include("logic.utils.CheckConfig")
local checkConfig = ____CheckConfig.checkConfig
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____CommandSync = include("framework.data.CommandSync")
local uiEventManager = ____CommandSync.uiEventManager
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local ____MercenaryConfig = include("logic.configs.MercenaryConfig")
local mercenaryConfigList = ____MercenaryConfig.mercenaryConfigList
local ____SafeTable = include("framework.encrypt.SafeTable")
local setGlobalSeed = ____SafeTable.setGlobalSeed
local setWarnHook = ____SafeTable.setWarnHook
local ____TraceLogUtils = include("logic.utils.TraceLogUtils")
local traceLogUtils = ____TraceLogUtils.traceLogUtils
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____DSplashScreen = include("logic.dialogs.DSplashScreen")
local DSplashScreen = ____DSplashScreen.DSplashScreen
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local playerIdList = ____PlayerUtils.playerIdList
local ____RoleStatus = include("logic.models.RoleStatus")
local RoleStatus = ____RoleStatus.RoleStatus
local RoleType = ____RoleStatus.RoleType
local ____global = include("framework.global")
local global = ____global.global
local ____DFrameChasing = include("logic.dialogs.DFrameChasing")
local DFrameChasing = ____DFrameChasing.DFrameChasing
local ____DNewGameHall = include("logic.dialogs.DNewGameHall")
local DNewGameHall = ____DNewGameHall.DNewGameHall
local ____Bob = include("logic.match.Bob")
local bob = ____Bob.bob
local ____BobInfo = include("logic.match.BobInfo")
local isPvpMode = ____BobInfo.isPvpMode
local isPvpModeRobot = ____BobInfo.isPvpModeRobot
local ____DSettings = include("logic.dialogs.DSettings")
local DSettings = ____DSettings.DSettings
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
local ____SyncCounter = include("framework.data.SyncCounter")
local syncData = ____SyncCounter.syncData
local ____ArchiveData = include("logic.models.archive.ArchiveData")
local InGameArchiveData = ____ArchiveData.InGameArchiveData
local ____DStartVideo = include("logic.dialogs.DStartVideo")
local DStartVideo = ____DStartVideo.DStartVideo
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____ArchiveManager = include("framework.storage.ArchiveManager")
local archiveManager = ____ArchiveManager.archiveManager
local ____SoundManager = include("logic.managers.SoundManager")
local BgmType = ____SoundManager.BgmType
local SoundManager = ____SoundManager.SoundManager
local ____SteamUtils = include("logic.utils.SteamUtils")
local steamUtils = ____SteamUtils.steamUtils
if y3.game.is_debug_mode() then
    debugRoomClient:init(9013, "127.0.0.1")
end
if not y3.game.is_debug_mode() then
    local userList = {
        "birnfly#4180",
        "聪明的可达鸭#9161",
        "xpf#9160",
        "xpf#8755",
        "Dynasty#1160",
        "mml#3739",
        "林天辰#7583",
        "林天辰#2827",
        "力丸#3301",
        "来妹#5913",
        "DATOU#7812",
        "木头是一条狗#4894",
        "木头是一条狗#8582",
        "困难的电脑#1292"
    }
    console:log(
        "player name",
        LOCAL.PLAYER:get_platform_name()
    )
    console:setEnabled(__TS__ArrayIndexOf(
        userList,
        LOCAL.PLAYER:get_platform_name()
    ) ~= -1)
end
local function clearConfig(self)
    do
        local i = #mercenaryConfigList - 1
        while i >= 0 do
            local mercenary = mercenaryConfigList[i + 1]
            if mercenary.ban then
                __TS__ArraySplice(mercenaryConfigList, i, 1)
            end
            i = i - 1
        end
    end
end
local function loadLanguage(self)
    if not steamUtils:isSteam() then
        i18n:setLang("zh")
        return
    end
    i18n:register(
        "zh",
        include("logic.configs.strings_" .. "zh").data
    )
    i18n:register(
        "en",
        include("logic.configs.strings_" .. "en").data
    )
    i18n:register(
        "tw",
        include("logic.configs.strings_" .. "tw").data
    )
    local function refreshLang()
        local lang = GlobalAPI.get_client_language_type()
        console:log("切换语言", lang)
        if lang == "zh" then
            console:log("语言设为中文")
            i18n:setLang("zh")
        elseif lang == "tw" then
            console:log("语言设为繁体中文")
            i18n:setLang("tw")
        else
            console:log("语言设为英文")
            i18n:setLang("en")
        end
        console:time("加载语言耗时")
        local configData = include("logic.configs.configs_" .. i18n.currentLang).data
        for keys in pairs(configData) do
            local ks = __TS__StringSplit(
                __TS__StringReplaceAll(keys, "\r\n", "\n"),
                "\n"
            )
            for ____, k in ipairs(ks) do
                local configName, index, property = table.unpack(__TS__StringSplit(k, "/"))
                do
                    local function ____catch(e)
                        console:error(e)
                    end
                    local ____try, ____hasReturned = pcall(function()
                        local ____require_result_0 = include("logic.configs." .. configName)
                        local map = ____require_result_0.map
                        local config = map[__TS__ParseInt(index)]
                        if config ~= nil then
                            local v = configData[keys]
                            if type(v) == "string" and config[property].value ~= nil then
                                config[property].value = v
                            else
                                config[property] = v
                            end
                        end
                    end)
                    if not ____try then
                        ____catch(____hasReturned)
                    end
                end
            end
        end
        console:timeEnd("加载语言耗时")
    end
    y3.ltimer.wait(
        0.1,
        function()
            y3.game:event(
                "ET_TRIGGER_LANGUAGE_CHANGED_EVENT",
                function(data)
                    refreshLang(nil)
                end
            )
        end
    )
    refreshLang(nil)
end
function ____exports.start(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____try = __TS__AsyncAwaiter(function()
            if y3.game.is_debug_mode() then
                include("framework.encrypt.Test")
            end
            if steamUtils:isSteam() then
                y3.ui.get_ui(LOCAL.PLAYER, "LogoPanel.kk_logo"):set_visible(false)
            end
            archiveManager:init()
            uiEventManager:init()
            setWarnHook(function(key, errVal, rightVal)
                local localPlayer = y3.player.LOCAL_PLAYER
                console:warn(
                    "玩家作弊",
                    localPlayer:get_platform_uuid(),
                    localPlayer:get_name(),
                    localPlayer:get_platform_name(),
                    key,
                    errVal,
                    rightVal
                )
                traceLogUtils:onCheat(
                    localPlayer:get_name(),
                    key,
                    errVal,
                    rightVal
                )
                archive.cheatCount:increase()
                archive.otherInfo:addCheat(key, errVal, rightVal)
            end)
            setGlobalSeed(math.random(100, 10000))
            initConfig(nil)
            clearConfig(nil)
            checkConfig(nil)
            loadLanguage(nil)
            local ____require_result_1 = include("framework.fight.Fight")
            local fight = ____require_result_1.fight
            if os ~= nil and os.getenv ~= nil and os.getenv("IN_FIGHTROOM") == "1" then
                y3.ui.get_ui(LOCAL.PLAYER, "DSplashScreen"):set_visible(false)
                y3.ui.get_ui(LOCAL.PLAYER, "DSelHero"):set_visible(false)
                y3.ui.get_ui(LOCAL.PLAYER, "DSelMode"):set_visible(false)
                y3.ui.get_ui(LOCAL.PLAYER, "DNewGameHall"):set_visible(false)
                __TS__Await(genreAutoController.initConfig:executeTogether())
                local debugController
                if debugEnv.enabled then
                    debugController = include("logic.controllers.FightRoomDebugController").fightRoomDebugController
                end
                fightController:init()
                local fightRoom = __TS__New(FightRoom, fight)
                debugRoomClient:register(fightRoom)
                local BATTLE_GROUND = os.getenv("BATTLE_GROUND")
                local TEST_COMMAND = os.getenv("TEST_COMMAND")
                if BATTLE_GROUND ~= nil and BATTLE_GROUND ~= "" then
                    console:log("BATTLE_GROUND", BATTLE_GROUND)
                    console:log("TEST_COMMAND", TEST_COMMAND)
                    fightRoom:loadFromPath(
                        BATTLE_GROUND,
                        function()
                            if TEST_COMMAND ~= nil then
                                if debugController ~= nil then
                                    debugController:test(TEST_COMMAND)
                                end
                            end
                            y3.ctimer.wait(
                                0.5,
                                function()
                                    fightRoom:run()
                                end
                            )
                        end
                    )
                else
                    fightRoom:loadHistory()
                end
            else
                if debugEnv.enabled then
                    local debugController = include("logic.controllers.DebugController").debugController
                    debugController.init:execute()
                end
                if y3.game.is_debug_mode() then
                    local fightRoom = __TS__New(SimpleFightRoom, fight)
                    debugRoomClient:register(fightRoom)
                end
                fight.report.enabled = false
                local isMatch = isPvpMode(nil)
                if not isMatch and debugEnv.enabled then
                    __TS__Await(dialogs:show(DTest, {}))
                    __TS__Await(dialogs:untilHided(DTest))
                end
                archive:init()
                print("syncData.inSync", syncData.inSync)
                local playerCount = 0
                for ____, id in ipairs(playerIdList) do
                    local player = y3.player.get_by_id(id)
                    if player ~= nil and player:get_state() ~= RoleStatus.NONE then
                        playerCount = playerCount + 1
                    end
                end
                local isSingleGame = GameUtils.isSingleGame and playerCount == 1
                if isMatch or not isSingleGame then
                    __TS__Await(__TS__New(
                        __TS__Promise,
                        function(____, re)
                            y3.ltimer.loop_frame(
                                1,
                                function(timer, count)
                                    if count % 5 == 4 then
                                        local data = datas.players[LOCAL.PLAYER_ID]:getSingle(InGameArchiveData)
                                        if data == nil or data.petInfo == nil then
                                            archive:sync()
                                        end
                                    end
                                    local isAll = true
                                    local loadCount = 0
                                    do
                                        local i = 0
                                        while i < #playerIdList do
                                            do
                                                local playerId = playerIdList[i + 1]
                                                local data = datas.players[playerId]:getSingle(InGameArchiveData)
                                                local isAI = false
                                                local player = y3.player.get_by_id(playerId)
                                                if player == nil then
                                                    goto __continue48
                                                end
                                                if player:get_state() == RoleStatus.NONE or player:get_controller() == RoleType.COMPUTER then
                                                    isAI = true
                                                elseif player:get_controller() == RoleType.AI_EASY then
                                                    isAI = true
                                                elseif player:get_controller() == RoleType.AI_HARD then
                                                    isAI = true
                                                end
                                                if isAI then
                                                    if count > i then
                                                        loadCount = loadCount + 1
                                                    end
                                                    goto __continue48
                                                end
                                                local function hasArchive()
                                                    return data ~= nil and data.playerInfo ~= nil and data.petInfo ~= nil and data.statInfo ~= nil and data.shopInfo ~= nil and data.mercenaryInfo ~= nil and data.achieveInfo ~= nil and data.vipInfo ~= nil
                                                end
                                                local h = hasArchive(nil)
                                                if h then
                                                    loadCount = loadCount + 1
                                                end
                                                if isAll then
                                                    isAll = h
                                                end
                                            end
                                            ::__continue48::
                                            i = i + 1
                                        end
                                    end
                                    local text = y3.ui.get_ui(y3.player.LOCAL_PLAYER, "DSplashScreen.background.loading")
                                    if loadCount == 6 then
                                        text:set_text(("等待玩家中（#00ff00" .. tostring(loadCount)) .. "/6#ffffff）")
                                    else
                                        text:set_text(("等待玩家中（#ff0000" .. tostring(loadCount)) .. "#ffffff/6）")
                                    end
                                    print(("等待玩家中（" .. tostring(loadCount)) .. "/6）")
                                    if isAll or count == 30 * 40 then
                                        timer:remove()
                                        re(nil)
                                    end
                                end
                            )
                        end
                    ))
                    print("syncData.inSync", syncData.inSync)
                    __TS__Await(playerController.checkOfflinePlayer:executeTogether())
                    print("syncData.inSync", syncData.inSync)
                end
                print("syncData.inSync", syncData.inSync)
                local splashScreen
                if isMatch or not isSingleGame then
                    local ____bob_8 = bob
                    local ____bob_init_9 = bob.init
                    local ____opt_6 = archive.statData
                    local ____opt_4 = ____opt_6 and ____opt_6.seasonSateInfo
                    ____bob_init_9(____bob_8, true, ____opt_4 and ____opt_4.score or 0)
                    y3.ui.get_ui(LOCAL.PLAYER, "DSelMode"):set_visible(false)
                    y3.ui.get_ui(LOCAL.PLAYER, "DNewGameHall"):set_visible(false)
                    if isPvpModeRobot(nil) then
                        if archive.playerData.singleModeChooseLevel <= 0 then
                            print("当前存档未设置singleModeChooseLevel，再玩家列表中查找")
                            local level = 0
                            for ____, id in ipairs(playerIdList) do
                                local data = datas.players[id]:getSingle(InGameArchiveData)
                                if data ~= nil and data.playerInfo ~= nil then
                                    level = math.max(level, data.playerInfo.singleModeChooseLevel)
                                    print("玩家", id, data.playerInfo.singleModeChooseLevel)
                                end
                            end
                            print("最终选择关卡 singleModeChooseLevel", level)
                            if level == 0 then
                                level = archive.playerData.singleModeUnlockLevel + 1
                            end
                            archive.playerData.singleModeChooseLevel = level
                        end
                        print("关卡为", archive.playerData.singleModeChooseLevel)
                    end
                    splashScreen = __TS__Await(dialogs:show(DSplashScreen, {autoHide = false}))
                elseif isSingleGame then
                    local ____bob_14 = bob
                    local ____bob_init_15 = bob.init
                    local ____opt_12 = archive.statData
                    local ____opt_10 = ____opt_12 and ____opt_12.seasonSateInfo
                    ____bob_init_15(____bob_14, false, ____opt_10 and ____opt_10.score or 0)
                    y3.ui.get_ui(LOCAL.PLAYER, "DSplashScreen"):set_visible(false)
                    y3.ui.get_ui(LOCAL.PLAYER, "DSelMode"):set_visible(false)
                    if not archive.statInfo:isPlayVideo() then
                        archive.statInfo:setPlayVideo()
                        dialogs:show(DStartVideo, {})
                    else
                        SoundManager:playBgm(BgmType["大厅"])
                    end
                    dialogs:show(DSettings, {})
                    __TS__Await(playerController.setGameMode:executeTogether("3v3"))
                    __TS__Await(dialogs:got(DNewGameHall, {}))
                else
                    y3.ui.get_ui(LOCAL.PLAYER, "DSelMode"):set_visible(false)
                    y3.ui.get_ui(LOCAL.PLAYER, "DNewGameHall"):set_visible(false)
                    splashScreen = __TS__Await(dialogs:show(DSplashScreen, {autoHide = false}))
                end
                local gameData = datas.global:getSingle(GameData)
                if not (gameData and gameData.isEnterGame) then
                    print("syncData.inSync", syncData.inSync)
                    __TS__Await(gameController.init:executeTogether())
                    print("syncData.inSync", syncData.inSync)
                end
                if splashScreen ~= nil then
                    splashScreen:playHide()
                end
                y3.ltimer.loop(
                    30,
                    function()
                        traceLogUtils:onTick()
                    end
                )
            end
            vue.watch(
                function() return global.frameStore.value > 30 * 3 end,
                function(____, v)
                    if v then
                        dialogs:show(DFrameChasing, {})
                    else
                        dialogs:hide(DFrameChasing)
                    end
                end
            )
        end)
        __TS__Await(____try.catch(
            ____try,
            function(____, e)
                console:error(e)
            end
        ))
    end)
end
return ____exports
