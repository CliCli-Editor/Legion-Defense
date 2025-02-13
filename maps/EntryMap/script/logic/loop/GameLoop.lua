local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__Promise = ____lualib.__TS__Promise
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 4,["17"] = 4,["18"] = 5,["19"] = 5,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 8,["26"] = 9,["27"] = 9,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 11,["33"] = 11,["34"] = 12,["35"] = 12,["36"] = 13,["37"] = 13,["38"] = 14,["39"] = 14,["40"] = 15,["41"] = 15,["42"] = 16,["43"] = 16,["44"] = 21,["45"] = 21,["46"] = 22,["47"] = 22,["48"] = 23,["49"] = 23,["50"] = 24,["51"] = 24,["52"] = 25,["53"] = 25,["54"] = 26,["55"] = 26,["56"] = 27,["57"] = 27,["58"] = 28,["59"] = 28,["60"] = 29,["61"] = 29,["62"] = 30,["63"] = 30,["64"] = 31,["65"] = 31,["66"] = 32,["67"] = 32,["68"] = 33,["69"] = 33,["70"] = 34,["71"] = 34,["72"] = 35,["73"] = 35,["74"] = 36,["75"] = 36,["76"] = 37,["77"] = 37,["78"] = 38,["79"] = 38,["80"] = 39,["81"] = 39,["82"] = 40,["83"] = 40,["84"] = 40,["85"] = 41,["86"] = 41,["87"] = 43,["88"] = 43,["89"] = 43,["91"] = 45,["92"] = 46,["93"] = 51,["94"] = 43,["95"] = 53,["97"] = 69,["98"] = 70,["99"] = 71,["100"] = 73,["101"] = 74,["102"] = 75,["103"] = 77,["104"] = 78,["105"] = 79,["106"] = 81,["107"] = 82,["108"] = 84,["109"] = 87,["110"] = 88,["111"] = 87,["113"] = 53,["114"] = 117,["115"] = 118,["116"] = 118,["117"] = 118,["118"] = 119,["119"] = 118,["120"] = 118,["121"] = 117,["122"] = 136,["123"] = 137,["124"] = 139,["125"] = 140,["127"] = 136,["128"] = 144,["130"] = 146,["131"] = 147,["132"] = 149,["133"] = 151,["135"] = 152,["138"] = 156,["139"] = 157,["140"] = 158,["141"] = 167,["142"] = 168,["143"] = 169,["144"] = 173,["145"] = 174,["148"] = 177,["149"] = 178,["151"] = 180,["154"] = 182,["156"] = 183,["159"] = 185,["161"] = 186,["164"] = 188,["166"] = 189,["169"] = 191,["171"] = 192,["174"] = 194,["176"] = 195,["180"] = 198,["183"] = 200,["188"] = 144,["189"] = 205,["191"] = 206,["192"] = 207,["193"] = 208,["194"] = 210,["195"] = 211,["196"] = 212,["197"] = 212,["198"] = 215,["201"] = 220,["202"] = 221,["204"] = 223,["205"] = 224,["206"] = 224,["207"] = 224,["208"] = 224,["209"] = 225,["210"] = 225,["211"] = 228,["212"] = 229,["213"] = 231,["214"] = 232,["216"] = 224,["217"] = 224,["218"] = 235,["219"] = 235,["220"] = 235,["221"] = 235,["222"] = 235,["223"] = 235,["224"] = 236,["226"] = 205,["227"] = 239,["229"] = 240,["230"] = 241,["231"] = 241,["232"] = 241,["233"] = 242,["234"] = 243,["235"] = 244,["236"] = 245,["238"] = 247,["239"] = 248,["240"] = 249,["242"] = 251,["243"] = 252,["244"] = 252,["246"] = 254,["247"] = 255,["249"] = 241,["250"] = 241,["251"] = 259,["252"] = 259,["253"] = 259,["254"] = 259,["255"] = 259,["256"] = 259,["257"] = 260,["258"] = 260,["259"] = 260,["260"] = 260,["261"] = 260,["262"] = 260,["263"] = 261,["265"] = 239,["266"] = 263,["268"] = 264,["269"] = 266,["270"] = 266,["271"] = 266,["272"] = 266,["273"] = 267,["274"] = 268,["275"] = 266,["276"] = 266,["277"] = 270,["278"] = 270,["279"] = 270,["280"] = 270,["281"] = 270,["282"] = 270,["283"] = 271,["285"] = 263,["286"] = 273,["288"] = 274,["289"] = 275,["290"] = 276,["291"] = 276,["292"] = 276,["293"] = 276,["294"] = 277,["295"] = 278,["296"] = 276,["297"] = 276,["298"] = 280,["299"] = 280,["300"] = 280,["301"] = 280,["302"] = 280,["304"] = 280,["306"] = 280,["307"] = 280,["308"] = 280,["309"] = 280,["310"] = 280,["311"] = 280,["312"] = 281,["314"] = 273,["315"] = 284,["316"] = 286,["317"] = 288,["318"] = 289,["319"] = 291,["320"] = 292,["321"] = 292,["322"] = 294,["324"] = 297,["325"] = 298,["326"] = 298,["327"] = 298,["328"] = 300,["329"] = 298,["330"] = 298,["334"] = 308,["335"] = 309,["336"] = 310,["337"] = 311,["338"] = 312,["340"] = 314,["342"] = 316,["343"] = 317,["346"] = 323,["347"] = 324,["348"] = 325,["349"] = 326,["350"] = 327,["351"] = 328,["352"] = 329,["353"] = 330,["355"] = 332,["357"] = 284,["358"] = 336,["360"] = 338,["361"] = 339,["362"] = 339,["363"] = 339,["364"] = 339,["365"] = 339,["366"] = 339,["367"] = 343,["368"] = 343,["369"] = 343,["370"] = 346,["371"] = 347,["373"] = 343,["374"] = 343,["376"] = 336,["377"] = 352,["379"] = 353,["380"] = 356,["381"] = 358,["382"] = 361,["383"] = 362,["384"] = 363,["385"] = 366,["386"] = 369,["387"] = 372,["388"] = 373,["389"] = 374,["390"] = 375,["391"] = 376,["392"] = 377,["393"] = 378,["394"] = 379,["395"] = 380,["396"] = 381,["398"] = 352,["399"] = 385,["401"] = 388,["402"] = 388,["403"] = 388,["404"] = 388,["405"] = 389,["406"] = 390,["407"] = 390,["408"] = 390,["409"] = 390,["410"] = 388,["411"] = 388,["412"] = 398,["413"] = 398,["414"] = 398,["415"] = 398,["416"] = 398,["417"] = 398,["418"] = 405,["419"] = 405,["420"] = 405,["421"] = 405,["422"] = 410,["424"] = 385,["425"] = 414,["427"] = 416,["428"] = 417,["429"] = 418,["430"] = 419,["431"] = 422,["432"] = 422,["433"] = 422,["434"] = 422,["435"] = 423,["436"] = 425,["437"] = 425,["438"] = 425,["439"] = 425,["440"] = 422,["441"] = 422,["442"] = 431,["443"] = 431,["444"] = 431,["445"] = 431,["446"] = 431,["447"] = 431,["448"] = 436,["449"] = 436,["450"] = 436,["451"] = 436,["452"] = 439,["454"] = 414,["455"] = 442,["457"] = 443,["459"] = 442,["460"] = 446,["462"] = 448,["463"] = 451,["464"] = 453,["465"] = 456,["466"] = 457,["467"] = 458,["468"] = 461,["469"] = 464,["470"] = 467,["471"] = 468,["472"] = 469,["473"] = 470,["474"] = 471,["475"] = 472,["476"] = 473,["478"] = 446,["479"] = 478,["481"] = 479,["482"] = 482,["483"] = 483,["484"] = 485,["485"] = 487,["486"] = 490,["487"] = 491,["488"] = 495,["489"] = 496,["490"] = 497,["491"] = 500,["492"] = 503,["493"] = 505,["494"] = 506,["495"] = 509,["496"] = 510,["497"] = 511,["498"] = 512,["499"] = 513,["500"] = 514,["502"] = 478,["503"] = 518,["504"] = 518,["505"] = 528,["506"] = 529,["507"] = 530,["508"] = 531,["511"] = 534,["512"] = 535,["513"] = 536,["515"] = 528,["516"] = 540,["518"] = 542,["519"] = 544,["520"] = 547,["521"] = 550,["522"] = 553,["523"] = 554,["524"] = 557,["525"] = 558,["526"] = 559,["527"] = 562,["528"] = 565,["529"] = 566,["530"] = 569,["531"] = 570,["532"] = 571,["533"] = 572,["534"] = 573,["536"] = 540,["537"] = 576,["539"] = 577,["540"] = 578,["541"] = 582,["542"] = 583,["543"] = 585,["544"] = 586,["545"] = 587,["546"] = 590,["547"] = 592,["548"] = 594,["549"] = 597,["550"] = 599,["551"] = 600,["552"] = 601,["553"] = 602,["554"] = 606,["555"] = 610,["556"] = 612,["557"] = 613,["558"] = 613,["559"] = 613,["560"] = 613,["561"] = 614,["562"] = 615,["563"] = 616,["565"] = 613,["566"] = 613,["567"] = 621,["568"] = 621,["569"] = 621,["570"] = 621,["571"] = 621,["572"] = 621,["573"] = 622,["574"] = 623,["575"] = 630,["576"] = 632,["577"] = 635,["579"] = 640,["580"] = 642,["581"] = 646,["583"] = 576,["584"] = 650,["585"] = 651,["586"] = 651,["587"] = 651,["590"] = 668,["591"] = 669,["594"] = 653,["595"] = 654,["596"] = 654,["597"] = 654,["598"] = 654,["599"] = 655,["600"] = 656,["601"] = 657,["602"] = 658,["604"] = 660,["607"] = 660,["608"] = 661,["609"] = 660,["612"] = 664,["614"] = 654,["615"] = 654,["616"] = 654,["622"] = 651,["623"] = 651,["624"] = 650,["625"] = 673,["626"] = 674,["627"] = 675,["628"] = 673,["629"] = 678,["630"] = 679,["631"] = 679,["632"] = 679,["633"] = 680,["634"] = 680,["635"] = 680,["636"] = 681,["637"] = 682,["638"] = 680,["639"] = 680,["640"] = 679,["641"] = 679,["642"] = 678,["643"] = 689});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____LevelConfig = include("logic.configs.LevelConfig")
local levelConfigMap = ____LevelConfig.levelConfigMap
local ____GameController = include("logic.controllers.GameController")
local gameController = ____GameController.gameController
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
local ____DGameOver = include("logic.dialogs.DGameOver")
local DGameOver = ____DGameOver.DGameOver
local ____DTime = include("logic.dialogs.DTime")
local DTime = ____DTime.DTime
local ____DebugData = include("logic.models.DebugData")
local DebugData = ____DebugData.DebugData
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local GameRandomEventType = ____GameData.GameRandomEventType
local ____KeyboardManager = include("logic.managers.KeyboardManager")
local KeyboardManager = ____KeyboardManager.KeyboardManager
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____UIController = include("logic.controllers.UIController")
local uiController = ____UIController.uiController
local ____KingController = include("logic.controllers.KingController")
local kingController = ____KingController.kingController
local ____BuildManager = include("logic.managers.BuildManager")
local buildManager = ____BuildManager.buildManager
local ____RabbitVsSheepController = include("logic.controllers.RabbitVsSheepController")
local rabbitVsSheepController = ____RabbitVsSheepController.rabbitVsSheepController
local ____DAuctionEquip = include("logic.dialogs.DAuctionEquip")
local DAuctionEquip = ____DAuctionEquip.DAuctionEquip
local ____ESCManager = include("logic.managers.ESCManager")
local escManager = ____ESCManager.escManager
local ____DEventTips = include("logic.dialogs.tips.DEventTips")
local DEventTips = ____DEventTips.DEventTips
local ____KofData = include("logic.models.KofData")
local KofData = ____KofData.KofData
local ____LastBattleController = include("logic.controllers.LastBattleController")
local lastBattleController = ____LastBattleController.lastBattleController
local ____global = include("logic.ai.global")
local getGlobalBlackboard = ____global.getGlobalBlackboard
local ____BlackboardEnum = include("logic.ai.BlackboardEnum")
local BlackboardEnum = ____BlackboardEnum.BlackboardEnum
local ____DLoading = include("logic.dialogs.DLoading")
local DLoading = ____DLoading.DLoading
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local PlayerId = ____PlayerUtils.PlayerId
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____TraceLogUtils = include("logic.utils.TraceLogUtils")
local traceLogUtils = ____TraceLogUtils.traceLogUtils
local ____MercenaryController = include("logic.controllers.MercenaryController")
local mercenaryController = ____MercenaryController.mercenaryController
local ____RandomEventConfig = include("logic.configs.RandomEventConfig")
local randomEventConfigMap = ____RandomEventConfig.randomEventConfigMap
local ____SyncCounter = include("framework.data.SyncCounter")
local syncData = ____SyncCounter.syncData
local ____UIUtils = include("logic.utils.UIUtils")
local UIUtils = ____UIUtils.UIUtils
local ____AuctionController = include("logic.controllers.AuctionController")
local auctionController = ____AuctionController.auctionController
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
local ____SoundManager = include("logic.managers.SoundManager")
local SoundManager = ____SoundManager.SoundManager
local SoundType = ____SoundManager.SoundType
local ____Random = include("framework.utils.Random")
local random = ____Random.random
____exports.GameLoop = __TS__Class()
local GameLoop = ____exports.GameLoop
GameLoop.name = "GameLoop"
function GameLoop.prototype.____constructor(self)
    self.timeLeft = vue.ref(0)
    self.waitTime = vue.ref(0)
    self.isExit = false
end
function GameLoop.prototype.start(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        dialogs:show(DLoading, {})
        UIUtils:SetOnlyDrawUIs(false)
        console:log("syncData.inSync", syncData.inSync)
        console:log("[游戏循环] 初始化战斗信息", syncData.inSync)
        __TS__Await(gameController.startGame:executeTogether())
        console:log("[游戏循环] 开始游戏", syncData.inSync)
        KeyboardManager:init()
        escManager:init()
        buildManager:init()
        self:watchGameEnd():catch(function(____, e) return console:error(e) end)
        self:totalFightTime()
        __TS__Await(dialogs:untilHided(DLoading))
        self:loop():catch(function(____, e)
            console:error(e)
        end)
    end)
end
function GameLoop.prototype.totalFightTime(self)
    y3.ltimer.loop(
        1,
        function()
            playerController:totalFightTime()
        end
    )
end
function GameLoop.prototype.ready(self)
    local data = datas.global:getSingle(GameData)
    if data.level > 1 then
        DTime:showReady()
    end
end
function GameLoop.prototype.loop(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local data = datas.global:getSingle(GameData)
        local ____debug = datas.global:getSingle(DebugData)
        __TS__Await(gameController.gameloop:executeTogether())
        while not data.isEnd do
            do
                if data.level + 1 > 30 then
                    return ____awaiter_resolve(nil)
                end
                console:log("-------------------------------------------------------------------")
                console:log("-------------------------------------------------------------------")
                console:log("-------------------------------------------------------------------")
                console:log("[游戏循环] 进入下一波", data.level + 1)
                self:ready()
                __TS__Await(gameController.next:executeTogether())
                if ____debug.kof_enable then
                    goto __continue11
                end
                repeat
                    local ____switch14 = data.mode
                    local ____cond14 = ____switch14 == GameMode.NORMAL or ____switch14 == GameMode.ELITE
                    if ____cond14 then
                        __TS__Await(self:runNormalOrElite(data))
                        break
                    end
                    ____cond14 = ____cond14 or ____switch14 == GameMode.KOF
                    if ____cond14 then
                        __TS__Await(self:runKOF(data))
                        break
                    end
                    ____cond14 = ____cond14 or ____switch14 == GameMode["镜像"]
                    if ____cond14 then
                        __TS__Await(self:runImage(data))
                        break
                    end
                    ____cond14 = ____cond14 or ____switch14 == GameMode["兔羊大战"]
                    if ____cond14 then
                        __TS__Await(self:runRabbitVsSheep(data))
                        break
                    end
                    ____cond14 = ____cond14 or ____switch14 == GameMode["三v三混战"]
                    if ____cond14 then
                        __TS__Await(self:runThreeVsThree(data))
                        break
                    end
                    ____cond14 = ____cond14 or ____switch14 == GameMode["终极大战"]
                    if ____cond14 then
                        __TS__Await(self:runLastBattle(data))
                        break
                    end
                    do
                        console:log("[错误信息] 未知的关卡模式")
                    end
                until true
                __TS__Await(gameController.fightEnd:executeTogether())
            end
            ::__continue11::
        end
    end)
end
function GameLoop.prototype.readyTime(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local gameData = datas.global:getSingle(GameData)
        local level = levelConfigMap[gameData.level]
        local defaultTime = level.perpareTime
        if level.trigger == 1 then
            local bigBlessData = datas.global:getSingle(BigBlessData)
            local ____opt_0 = bigBlessData and bigBlessData.bigBless
            if (____opt_0 and ____opt_0.id) == 15 then
                defaultTime = 30
            end
        end
        if gameData.skipReady then
            defaultTime = 3
        end
        self.timeLeft.value = defaultTime
        local timer = y3.ltimer.loop_count(
            1,
            defaultTime,
            function(timer, count)
                local ____self_timeLeft_4, ____value_5 = self.timeLeft, "value"
                ____self_timeLeft_4[____value_5] = ____self_timeLeft_4[____value_5] - 1
                local globalBlackboard = getGlobalBlackboard(nil)
                globalBlackboard:Set(BlackboardEnum.readyLeftTime, self.timeLeft.value)
                if self.timeLeft.value == 3 then
                    DTime:show321()
                end
            end
        )
        __TS__Await(self:watchOnce(
            function() return self.timeLeft.value <= 0 end,
            function(____, v) return v end,
            nil,
            true
        ))
        timer:remove()
    end)
end
function GameLoop.prototype.fightTime(self, data)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self.waitTime.value = 3
        local timer2 = y3.ltimer.loop(
            1,
            function(timer, count)
                self.timeLeft.value = math.max(defaultConfig["战斗回合时长"] - count, 0)
                if count == defaultConfig["单位狂暴时间"] then
                    console:log("狂暴!!!!!!!!!!!!")
                    gameController:crazy()
                end
                if count == defaultConfig["塔和水晶狂暴时间"] then
                    console:log("狂暴塔-----!!!!!!!!!!!!")
                    gameController:towerCrazy()
                end
                if data.leftMonster <= 0 then
                    local ____self_waitTime_6, ____value_7 = self.waitTime, "value"
                    ____self_waitTime_6[____value_7] = ____self_waitTime_6[____value_7] - 1
                end
                if self.timeLeft.value == 0 then
                    playerController:killAll()
                end
            end
        )
        __TS__Await(self:watchOnce(
            function() return data.leftMonster <= 0 end,
            function(____, v) return v end,
            nil,
            true
        ))
        __TS__Await(self:watchOnce(
            function() return self.waitTime.value <= 0 end,
            function(____, v) return v end,
            nil,
            true
        ))
        timer2:remove()
    end)
end
function GameLoop.prototype.kofRoundTime(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local leftTime = 3
        local timer2 = y3.ltimer.loop_count(
            1,
            leftTime,
            function(timer, count)
                self.timeLeft.value = leftTime - count
                console:log("剩余事件", self.timeLeft.value)
            end
        )
        __TS__Await(self:watchOnce(
            function() return self.timeLeft.value <= 0 end,
            function(____, v) return v end,
            nil,
            true
        ))
        timer2:remove()
    end)
end
function GameLoop.prototype.kofWinnerTime(self, isEnd)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local leftTime = isEnd and 3 or 6
        self.timeLeft.value = leftTime
        local timer2 = y3.ltimer.loop_count(
            1,
            3,
            function(timer, count)
                self.timeLeft.value = leftTime - count
                console:log("剩余事件", self.timeLeft.value)
            end
        )
        __TS__Await(self:watchOnce(
            function()
                local ____isEnd_8
                if isEnd then
                    ____isEnd_8 = self.timeLeft.value == 0
                else
                    ____isEnd_8 = self.timeLeft.value == 3
                end
                return ____isEnd_8
            end,
            function(____, v) return v end,
            nil,
            true
        ))
        timer2:remove()
    end)
end
function GameLoop.prototype.checkUILogic(self, data)
    uiController.follow_once_by_all_player:executeTogether()
    local level = levelConfigMap[data.level]
    if level.trigger == 1 then
        local bigBlessData = datas.global:getSingle(BigBlessData)
        local ____opt_9 = bigBlessData and bigBlessData.bigBless
        if (____opt_9 and ____opt_9.id) == 15 then
            console:log("免费橙装 无需装备暗拍")
        else
            dialogs:show(DAuctionEquip, {})
            y3.ltimer.wait(
                30,
                function(timer, count)
                    auctionController.settlement:executeTogether():catch(function(____, e) return console:error(e) end)
                end
            )
        end
    else
    end
    if data.randomEventType > 0 then
        local config = randomEventConfigMap[data.randomEventType]
        local tips
        if config ~= nil then
            tips = (tostring(config.name) .. "：#ffffff") .. tostring(config.des)
        else
            tips = ("#fedc00本回合出现随机事件【#ff0000" .. GameRandomEventType[data.randomEventType]) .. "#fedc00】"
        end
        if not self.isExit then
            dialogs:showRepeat(DEventTips, {tips = tips})
        end
    end
    if level.trigger == 1 then
        SoundManager:play(SoundType["装备暗拍开始VC"])
    elseif level.trigger == 2 then
        SoundManager:play(random:random() < 0.5 and SoundType["选择祝福开始VC"] or SoundType["祝福选择VC"])
    elseif data.randomEventType > 0 then
        SoundManager:play(SoundType["随机事件出现VC"])
    elseif level.type == 4 then
        SoundManager:play(SoundType["对抗波开始VC"])
    else
        SoundManager:play(SoundType["回合开始VC"])
    end
end
function GameLoop.prototype.watchGameEnd(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local gameData = datas.global:getSingle(GameData)
        __TS__Await(self:watchOnce(
            function() return gameData.isEnd end,
            function(____, v) return v end,
            nil,
            true
        ))
        y3.ltimer.wait(
            1,
            function()
                if not self.isExit then
                    dialogs:show(DGameOver, {})
                end
            end
        )
    end)
end
function GameLoop.prototype.runRabbitVsSheep(self, data)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        console:log("[兔羊大战] 开始")
        __TS__Await(rabbitVsSheepController.prepare:executeTogether())
        self:checkUILogic(data)
        console:log("[兔羊大战] 准备阶段倒计时")
        __TS__Await(self:readyTime())
        console:log("[兔羊大战] 准备阶段倒计时结束")
        __TS__Await(playerController.resetHurtTotal:executeTogether())
        __TS__Await(rabbitVsSheepController.start:executeTogether())
        console:log("[兔羊大战] 战斗阶段倒计时")
        __TS__Await(self:waitRabbitVsSheepEnd(data))
        console:log("[兔羊大战] 战斗结算")
        traceLogUtils:onLevelStart()
        __TS__Await(rabbitVsSheepController.gameEnd:executeTogether())
        console:log("[兔羊大战] 战斗结束")
        __TS__Await(self:wait(3))
        __TS__Await(rabbitVsSheepController.goBack:executeTogether())
        traceLogUtils:onLevelEnd()
        console:log("[兔羊大战] 回到防御点")
    end)
end
function GameLoop.prototype.waitRabbitVsSheepEnd(self, data)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local timer = y3.ltimer.loop_count(
            1,
            defaultConfig["战斗回合时长"] + 5,
            function(timer, count)
                self.timeLeft.value = math.max(defaultConfig["战斗回合时长"] - count, 0)
                console:log(
                    "[兔羊大战]",
                    ((((((((("\n            data.teamALeftMonster(" .. tostring(data.teamALeftMonster)) .. ") >= 100 || data.teamBLeftMonster(") .. tostring(data.teamBLeftMonster)) .. ") >= 100 ||\n            this.timeLeft.value(") .. tostring(self.timeLeft.value)) .. ") == 0 ||\n            data.teamALeftPlayerCount(") .. tostring(data.teamALeftPlayerCount)) .. ") <= 0 ||\n            data.teamBLeftPlayerCount(") .. tostring(data.teamBLeftPlayerCount)) .. ") <= 0"
                )
            end
        )
        __TS__Await(self:watchOnce(
            function() return data.teamALeftMonster >= 100 or data.teamBLeftMonster >= 100 or self.timeLeft.value == 0 or data.teamALeftPlayerCount <= 0 or data.teamBLeftPlayerCount <= 0 end,
            function(____, v) return v end,
            nil,
            true
        ))
        console:log(
            "[兔羊大战]",
            ((((((((("\n                data.teamALeftMonster(" .. tostring(data.teamALeftMonster)) .. ") >= 100 || data.teamBLeftMonster(") .. tostring(data.teamBLeftMonster)) .. ") >= 100 ||\n                this.timeLeft.value(") .. tostring(self.timeLeft.value)) .. ") == 0 ||\n                data.teamALeftPlayerCount(") .. tostring(data.teamALeftPlayerCount)) .. ") <= 0 ||\n                data.teamBLeftPlayerCount(") .. tostring(data.teamBLeftPlayerCount)) .. ") <= 0"
        )
        timer:remove()
    end)
end
function GameLoop.prototype.waitLastBattleEnd(self, data)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local leftTowerList = datas.players[PlayerId.LEFT_KING]:getAll(UnitData)
        local leftKing = leftTowerList[#leftTowerList]
        local rightTowerList = datas.players[PlayerId.RIGHT_KING]:getAll(UnitData)
        local rightKing = rightTowerList[#rightTowerList]
        local timer = y3.ltimer.loop_count(
            1,
            defaultConfig["战斗回合时长"] + 5,
            function(timer, count)
                self.timeLeft.value = math.max(defaultConfig["战斗回合时长"] - count, 0)
                console:log(
                    "[终极大战]",
                    ((((("\n            leftKing.died(" .. tostring(leftKing.entity.activeData.died)) .. ") || rightKing.died(") .. tostring(rightKing.entity.activeData.died)) .. ") ||\n            this.timeLeft.value(") .. tostring(self.timeLeft.value)) .. ") == 0 "
                )
            end
        )
        __TS__Await(self:watchOnce(
            function() return leftKing.entity.activeData.died or rightKing.entity.activeData.died or self.timeLeft.value == 0 end,
            function(____, v) return v end,
            nil,
            true
        ))
        console:log(
            "[终极大战]",
            ((((("\n                leftKing.died(" .. tostring(leftKing.entity.activeData.died)) .. ") || rightKing.died(") .. tostring(rightKing.entity.activeData.died)) .. ") ||\n                this.timeLeft.value(") .. tostring(self.timeLeft.value)) .. ") == 0"
        )
        timer:remove()
    end)
end
function GameLoop.prototype.runThreeVsThree(self, data)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        console:log("[3v3混战] 开始")
    end)
end
function GameLoop.prototype.runLastBattle(self, data)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        console:log("[终极大战] 开始")
        __TS__Await(lastBattleController.prepare:executeTogether())
        self:checkUILogic(data)
        console:log("[终极大战] 准备阶段倒计时")
        __TS__Await(self:readyTime())
        console:log("[终极大战] 准备阶段倒计时结束")
        __TS__Await(playerController.resetHurtTotal:executeTogether())
        __TS__Await(lastBattleController.start:executeTogether())
        console:log("[终极大战] 战斗阶段倒计时")
        traceLogUtils:onLevelStart()
        __TS__Await(self:waitLastBattleEnd(data))
        console:log("[终极大战] 战斗结算")
        __TS__Await(lastBattleController.gameEnd:executeTogether())
        traceLogUtils:onLevelEnd()
        console:log("[终极大战] 战斗结束")
    end)
end
function GameLoop.prototype.runImage(self, data)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        console:log("[镜像回合] 开始")
        __TS__Await(playerController.resetHeroToDefensivePoint:executeTogether())
        __TS__Await(kingController.checkNextKing:executeTogether())
        self:checkUILogic(data)
        __TS__Await(gameController.randomImageList:executeTogether())
        __TS__Await(mercenaryController.hireByRandomEvent:executeTogether())
        __TS__Await(mercenaryController.hireByBless:executeTogether())
        console:log("[镜像回合] 准备阶段倒计时")
        __TS__Await(self:readyTime())
        console:log("[镜像回合] 准备阶段倒计时结束")
        __TS__Await(playerController.resetHurtTotal:executeTogether())
        self:showImageSignal()
        __TS__Await(gameController.createImage:executeTogether())
        __TS__Await(gameController.fight:executeTogether())
        console:log("[镜像回合] 战斗阶段倒计时")
        __TS__Await(self:fightTime(data))
        traceLogUtils:onLevelStart()
        __TS__Await(gameController.imageEnd:executeTogether())
        traceLogUtils:onLevelEnd()
        console:log("[镜像回合] 战斗阶段结束")
    end)
end
function GameLoop.prototype.showImageFight(self)
end
function GameLoop.prototype.showImageSignal(self)
    local playerData = datas.players[LOCAL.PLAYER_ID]:getSingle(PlayerData)
    if playerData.imagePlayerId == nil or #playerData.imagePlayerId == 0 then
        console:error("镜像的数据不正确")
        return
    end
    for ____, imagePlayerId in ipairs(playerData.imagePlayerId) do
        local pos = mapConfig.playerPoints[imagePlayerId]
        uiController.send_signal:execute(LOCAL.PLAYER_ID, pos)
    end
end
function GameLoop.prototype.runNormalOrElite(self, data)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        __TS__Await(playerController.resetHeroToDefensivePoint:executeTogether())
        self:checkUILogic(data)
        __TS__Await(kingController.checkNextKing:executeTogether())
        __TS__Await(gameController.startCreateMonster:executeTogether())
        __TS__Await(mercenaryController.hireByRandomEvent:executeTogether())
        __TS__Await(mercenaryController.hireByBless:executeTogether())
        console:log("[普通回合] 准备阶段倒计时")
        __TS__Await(self:readyTime())
        console:log("[普通回合] 准备阶段倒计时结束")
        __TS__Await(playerController.resetHurtTotal:executeTogether())
        __TS__Await(gameController.createMonster:executeTogether())
        __TS__Await(gameController.fight:executeTogether())
        console:log("[普通回合] 战斗阶段倒计时")
        traceLogUtils:onLevelStart()
        __TS__Await(self:fightTime(data))
        traceLogUtils:onLevelEnd()
        console:log("[普通回合] 战斗阶段结束")
    end)
end
function GameLoop.prototype.runKOF(self, data)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        console:log("[KOF回合] 开始")
        local kofData = datas.global:getSingle(KofData)
        __TS__Await(gameController.startKOF:executeTogether())
        __TS__Await(kingController.checkNextKing:executeTogether())
        console:log("[KOF回合] 准备阶段倒计时")
        __TS__Await(self:readyTime())
        console:log("[KOF回合] 准备阶段倒计时结束")
        __TS__Await(playerController.resetHurtTotal:executeTogether())
        __TS__Await(gameController.fight:executeTogether())
        traceLogUtils:onLevelStart()
        while kofData.teamAEliminated < #data.teamLeft and kofData.teamBEliminated < #data.teamRight do
            __TS__Await(gameController.roundNext:executeTogether())
            __TS__Await(self:kofRoundTime())
            local deadCount = kofData.teamAEliminated + kofData.teamBEliminated
            local a = kofData.teamAEliminated
            __TS__Await(gameController.jumpToKOFArena:executeTogether())
            __TS__Await(gameController.startKOFFight:executeTogether())
            local leftTime = 60
            local timer2 = y3.ltimer.loop_count(
                1,
                leftTime,
                function(timer, count)
                    self.timeLeft.value = leftTime - count
                    if self.timeLeft.value == 0 then
                        gameController.forceEndRound:executeTogether()
                    end
                end
            )
            __TS__Await(self:watchOnce(
                function() return kofData.teamAEliminated + kofData.teamBEliminated end,
                function(____, v) return v > deadCount end,
                true,
                true
            ))
            timer2:remove()
            gameController.roundEnd:executeTogether()
            self.timeLeft.value = 0
            local isContinue = kofData.teamAEliminated < #data.teamLeft and kofData.teamBEliminated < #data.teamRight
            __TS__Await(self:kofWinnerTime(not isContinue))
        end
        __TS__Await(gameController.endKOF:executeTogether())
        traceLogUtils:onLevelEnd()
        console:log("[KOF回合] 结束")
    end)
end
function GameLoop.prototype.watchOnce(self, compute, checkValue, immediate, sync)
    return __TS__New(
        __TS__Promise,
        function(____, resolve)
            do
                local function ____catch(e)
                    console:error(("watchOnce异常，" .. tostring(e)) .. "，watchOnce将返回undefined")
                    resolve(nil, nil)
                end
                local ____try, ____hasReturned = pcall(function()
                    local activeStopping = false
                    local watchStop = nil
                    watchStop = vue.watch(
                        compute,
                        function(____, currentValue, _oldValue)
                            if checkValue(nil, currentValue) then
                                activeStopping = true
                                if watchStop then
                                    watchStop(nil)
                                else
                                    local ____self_13 = __TS__Promise.resolve()
                                    ____self_13["then"](
                                        ____self_13,
                                        function()
                                            local ____ = watchStop and watchStop(nil)
                                        end
                                    )
                                end
                                resolve(nil, currentValue)
                            end
                        end,
                        {immediate = immediate, flush = sync and "sync" or "pre"}
                    )
                end)
                if not ____try then
                    ____catch(____hasReturned)
                end
            end
        end
    )
end
function GameLoop.prototype.watch(self, compute, cb, immediate, sync)
    local watchStop = vue.watch(compute, cb, {immediate = immediate, flush = sync and "sync" or "pre"})
    return watchStop
end
function GameLoop.prototype.wait(self, time)
    return __TS__New(
        __TS__Promise,
        function(____, resolve)
            y3.ltimer.wait(
                time,
                function(t)
                    t:remove()
                    resolve(nil)
                end
            )
        end
    )
end
____exports.gameLoop = __TS__New(____exports.GameLoop)
return ____exports
