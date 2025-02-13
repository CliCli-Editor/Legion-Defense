local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayReduce = ____lualib.__TS__ArrayReduce
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 4,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 5,["25"] = 6,["26"] = 6,["27"] = 7,["28"] = 7,["29"] = 8,["30"] = 8,["31"] = 9,["32"] = 9,["33"] = 10,["34"] = 10,["35"] = 11,["36"] = 11,["37"] = 12,["38"] = 12,["39"] = 13,["40"] = 13,["41"] = 14,["42"] = 14,["43"] = 15,["44"] = 15,["45"] = 16,["46"] = 16,["47"] = 17,["48"] = 17,["49"] = 18,["50"] = 18,["51"] = 19,["52"] = 19,["53"] = 20,["54"] = 20,["55"] = 21,["56"] = 21,["57"] = 22,["58"] = 22,["59"] = 24,["60"] = 24,["61"] = 25,["62"] = 25,["63"] = 26,["64"] = 26,["65"] = 27,["66"] = 27,["67"] = 29,["68"] = 29,["69"] = 29,["71"] = 29,["72"] = 31,["73"] = 32,["74"] = 33,["75"] = 34,["76"] = 35,["77"] = 37,["79"] = 31,["80"] = 41,["81"] = 41,["82"] = 46,["83"] = 47,["84"] = 48,["85"] = 49,["86"] = 50,["87"] = 51,["88"] = 52,["90"] = 54,["92"] = 46,["93"] = 57,["94"] = 58,["95"] = 59,["96"] = 60,["97"] = 61,["98"] = 62,["101"] = 66,["102"] = 67,["105"] = 71,["108"] = 75,["109"] = 76,["110"] = 77,["111"] = 78,["112"] = 79,["113"] = 79,["114"] = 79,["115"] = 79,["116"] = 79,["118"] = 81,["119"] = 81,["120"] = 81,["121"] = 81,["122"] = 81,["123"] = 81,["124"] = 81,["125"] = 81,["127"] = 83,["128"] = 85,["129"] = 87,["130"] = 57,["131"] = 92,["132"] = 93,["133"] = 94,["134"] = 95,["135"] = 96,["136"] = 96,["137"] = 96,["138"] = 96,["139"] = 96,["140"] = 96,["141"] = 96,["142"] = 96,["145"] = 92,["146"] = 101,["147"] = 102,["148"] = 103,["149"] = 104,["150"] = 104,["151"] = 104,["152"] = 104,["153"] = 104,["154"] = 105,["155"] = 106,["158"] = 109,["159"] = 110,["160"] = 111,["161"] = 112,["162"] = 113,["165"] = 116,["166"] = 117,["167"] = 118,["168"] = 119,["171"] = 122,["172"] = 123,["173"] = 124,["174"] = 125,["175"] = 126,["176"] = 127,["177"] = 127,["178"] = 127,["179"] = 127,["180"] = 127,["181"] = 127,["182"] = 127,["184"] = 129,["185"] = 129,["186"] = 129,["187"] = 129,["188"] = 129,["189"] = 129,["190"] = 129,["195"] = 101,["196"] = 136,["197"] = 137,["198"] = 138,["199"] = 139,["200"] = 136,["201"] = 145,["202"] = 146,["203"] = 147,["204"] = 148,["205"] = 149,["206"] = 150,["207"] = 151,["208"] = 152,["210"] = 154,["211"] = 155,["212"] = 156,["213"] = 157,["216"] = 161,["218"] = 163,["219"] = 145,["220"] = 169,["221"] = 170,["222"] = 170,["223"] = 170,["224"] = 170,["225"] = 173,["226"] = 173,["227"] = 173,["228"] = 173,["229"] = 173,["230"] = 175,["231"] = 175,["232"] = 175,["233"] = 175,["234"] = 176,["235"] = 177,["236"] = 178,["237"] = 169,["238"] = 181,["239"] = 182,["241"] = 183,["242"] = 183,["243"] = 184,["244"] = 185,["245"] = 188,["246"] = 189,["247"] = 189,["248"] = 189,["249"] = 189,["250"] = 189,["251"] = 189,["252"] = 189,["253"] = 191,["254"] = 192,["255"] = 193,["256"] = 194,["258"] = 196,["260"] = 199,["261"] = 201,["262"] = 202,["263"] = 204,["264"] = 183,["267"] = 181,["268"] = 208,["269"] = 209,["270"] = 210,["271"] = 210,["274"] = 214,["275"] = 215,["276"] = 216,["277"] = 218,["278"] = 219,["279"] = 221,["280"] = 222,["281"] = 224,["282"] = 225,["283"] = 227,["284"] = 228,["287"] = 208,["288"] = 234,["289"] = 235,["290"] = 236,["291"] = 236,["294"] = 240,["295"] = 241,["296"] = 242,["297"] = 244,["298"] = 246,["299"] = 247,["300"] = 249,["301"] = 250,["303"] = 234,["304"] = 255,["305"] = 256,["306"] = 257,["307"] = 257,["310"] = 261,["311"] = 262,["312"] = 263,["313"] = 264,["314"] = 266,["315"] = 267,["316"] = 269,["317"] = 270,["318"] = 272,["319"] = 273,["321"] = 255,["322"] = 278,["323"] = 279,["324"] = 280,["325"] = 281,["326"] = 282,["327"] = 283,["328"] = 284,["330"] = 285,["331"] = 285,["332"] = 286,["333"] = 287,["334"] = 289,["335"] = 290,["336"] = 291,["337"] = 291,["338"] = 291,["339"] = 291,["340"] = 292,["341"] = 293,["342"] = 294,["343"] = 294,["344"] = 294,["345"] = 294,["347"] = 285,["351"] = 298,["353"] = 299,["354"] = 299,["355"] = 300,["356"] = 301,["357"] = 303,["358"] = 304,["359"] = 305,["360"] = 305,["361"] = 305,["362"] = 305,["363"] = 306,["364"] = 307,["365"] = 308,["366"] = 308,["367"] = 308,["368"] = 308,["370"] = 299,["377"] = 278,["378"] = 318,["379"] = 319,["380"] = 320,["381"] = 318,["382"] = 326});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local writeableDatas = ____DataManager.writeableDatas
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local BattleGroundId = ____PlayerUtils.BattleGroundId
local player2King = ____PlayerUtils.player2King
local playerIdList = ____PlayerUtils.playerIdList
local ____MercenaryConfig = include("logic.configs.MercenaryConfig")
local mercenaryConfigList = ____MercenaryConfig.mercenaryConfigList
local mercenaryConfigMap = ____MercenaryConfig.mercenaryConfigMap
local mercenaryConfigMap_rarity = ____MercenaryConfig.mercenaryConfigMap_rarity
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameRandomEventType = ____GameData.GameRandomEventType
local GameStatus = ____GameData.GameStatus
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____CreateUnitController = include("logic.controllers.CreateUnitController")
local createUnitController = ____CreateUnitController.createUnitController
local ____PlayerDataController = include("logic.controllers.data.PlayerDataController")
local playerDataController = ____PlayerDataController.playerDataController
local ____EffectController = include("logic.controllers.ui.EffectController")
local effectController = ____EffectController.effectController
local ____MercenaryData = include("logic.models.players.MercenaryData")
local MercenaryData = ____MercenaryData.MercenaryData
local ____PetData = include("logic.models.PetData")
local PetData = ____PetData.PetData
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____ChatController = include("logic.controllers.chat.ChatController")
local chatController = ____ChatController.chatController
local ____ChatData = include("logic.models.ChatData")
local ChatInputType = ____ChatData.ChatInputType
local ____TraceLogUtils = include("logic.utils.TraceLogUtils")
local traceLogUtils = ____TraceLogUtils.traceLogUtils
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____KingData = include("logic.models.KingData")
local KingData = ____KingData.KingData
local ____ITrigger = include("logic.triggers.ITrigger")
local TriggerType = ____ITrigger.TriggerType
local ____TriggerManager = include("logic.triggers.TriggerManager")
local triggerManager = ____TriggerManager.triggerManager
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
local ____BobInfo = include("logic.match.BobInfo")
local isPvpModeRobot = ____BobInfo.isPvpModeRobot
local ____RobotLevelConfig = include("logic.configs.RobotLevelConfig")
local robotLevelConfigMap = ____RobotLevelConfig.robotLevelConfigMap
local ____Archive = include("logic.archive.Archive")
local archive = ____Archive.archive
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
____exports.MercenaryController = __TS__Class()
local MercenaryController = ____exports.MercenaryController
MercenaryController.name = "MercenaryController"
function MercenaryController.prototype.____constructor(self)
end
function MercenaryController.prototype.init(self)
    for ____, playerId in ipairs(playerIdList) do
        local data = writeableDatas.players[playerId]:getOrCreateSingle(MercenaryData)
        data.playerId = playerId
        data.refreshCount = 0
        self:refresh(playerId)
    end
end
function MercenaryController.prototype.refresh(self, playerId)
end
function MercenaryController.prototype.getMercenaryPrice(self, playerId, cfgId)
    local cfg = mercenaryConfigMap[cfgId]
    local playerDatas = writeableDatas.players[playerId]
    local playerData = playerDatas:getOrCreateSingle(PlayerData)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    if gameData.randomEventType == GameRandomEventType["佣兵狂潮"] then
        return math.floor((cfg.price * (1 + playerData.mercenaryDiscard) + playerData.mercenaryDiscardValue) * 0.5 + 0.5)
    else
        return math.floor(cfg.price * (1 + playerData.mercenaryDiscard) + playerData.mercenaryDiscardValue + 0.5)
    end
end
function MercenaryController.prototype.hire(self, playerId, cfgId, posX, posY, randomPos)
    local playerDatas = writeableDatas.players[playerId]
    local playerData = playerDatas:getOrCreateSingle(PlayerData)
    local cfg = mercenaryConfigMap[cfgId]
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    if gameData.gameStatus ~= GameStatus["准备回合"] then
        return
    end
    local price = self:getMercenaryPrice(playerId, cfgId)
    if playerData.wood < price then
        return
    end
    if gameData.randomEventType == GameRandomEventType["真男人大战"] then
        return
    end
    local interest = math.floor(cfg.MercenaryGold * (1 + playerData.mercenaryInterest) + playerData.mercenaryInterestValue + 0.5)
    playerData.wood = playerData.wood - price
    playerData.interest = playerData.interest + interest
    if posX ~= nil and posY ~= nil then
        createUnitController:createMercenary(
            playerId,
            cfgId,
            y3.point.create(posX, posY)
        )
    else
        createUnitController:createMercenary(
            playerId,
            cfgId,
            nil,
            nil,
            nil,
            randomPos
        )
    end
    traceLogUtils:onBuyMercenary(playerId, cfgId)
    playerData.hireCount = playerData.hireCount + 1
    triggerManager:trigger(TriggerType["购买佣兵时"], {playerId = playerId})
end
function MercenaryController.prototype.hireByBless(self)
    for ____, playerId in ipairs(playerIdList) do
        local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        for ____, m in ipairs(playerData.mercenaryList) do
            createUnitController:createMercenary(
                playerId,
                m,
                nil,
                nil,
                nil,
                true
            )
        end
    end
end
function MercenaryController.prototype.hireByRandomEvent(self)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    if gameData.randomEventType == GameRandomEventType["宠物收集师"] then
        local ____opt_0 = mercenaryConfigMap_rarity[101]
        local monsterList = ____opt_0 and __TS__ArrayFilter(
            mercenaryConfigMap_rarity[101],
            function(____, a) return not a.ban end
        )
        if monsterList == nil then
            console:error("无法找到rarity=101的佣兵列表")
            return
        end
        for ____, playerId in ipairs(playerIdList) do
            local monster = random:randomList(monsterList)
            local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
            if monster ~= nil then
                createUnitController:createMercenary(playerId, monster.id, nil, playerData.level)
            end
        end
    elseif gameData.randomEventType == GameRandomEventType["御驾亲征"] then
        local kingList = mercenaryConfigMap_rarity[102]
        if kingList == nil then
            console:error("无法找到rarity=102的佣兵列表")
            return
        end
        if #kingList ~= nil and #kingList == 2 then
            for ____, playerId in ipairs(playerIdList) do
                local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
                local kingData = datas.players[player2King[playerId]]:getSingle(KingData)
                if player2King[playerId] == BattleGroundId.LEFT_KING then
                    createUnitController:createMercenary(
                        playerId,
                        kingList[1].id,
                        nil,
                        playerData.level,
                        {{id = 40019, count = #kingData.deathList}}
                    )
                else
                    createUnitController:createMercenary(
                        playerId,
                        kingList[2].id,
                        nil,
                        playerData.level,
                        {{id = 40019, count = #kingData.deathList}}
                    )
                end
            end
        end
    end
end
function MercenaryController.prototype.cancelHire(self, playerId)
    local petData = writeableDatas.players[playerId]:getOrCreateSingle(PetData)
    petData.y3Unit:stop()
    petData.y3Unit:stop_all_abilities()
end
function MercenaryController.prototype.isLocked(self, playerId, id)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local cfg = mercenaryConfigMap[id]
    if cfg.unlockType == 1 then
        local level = cfg.unlockArgs[1]
        if gameData.level < level then
            return true
        end
    elseif cfg.unlockType == 2 then
        local level = cfg.unlockArgs[1]
        if playerData.gatherLevel < level then
            return true
        end
    else
        return true
    end
    return false
end
function MercenaryController.prototype.randomGetCurrentLevelMercenary(self, playerId, currentRarity)
    local list = __TS__ArrayFilter(
        mercenaryConfigList,
        function(____, a) return not ____exports.mercenaryController:isLocked(playerId, a.id) and not a.ban end
    )
    local maxRarity = currentRarity ~= nil and currentRarity or __TS__ArrayReduce(
        list,
        function(____, a, b) return math.max(a, b.rarity) end,
        0
    )
    list = __TS__ArrayFilter(
        list,
        function(____, a) return a.rarity == maxRarity end
    )
    local x = random:randomList(list)
    console:log("当前获得永久佣兵" .. tostring(x and x.id))
    return x
end
function MercenaryController.prototype.interest(self)
    local gameData = datas.global:getSingle(GameData)
    do
        local index = 0
        while index < #playerIdList do
            local playerId = playerIdList[index + 1]
            local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
            local max = GameUtils:getMaxBaseInterest(playerId)
            local gold = math.max(
                0,
                math.min(
                    max,
                    math.floor(playerData.gold / 10 * defaultConfig["利息"])
                )
            )
            local msg = ""
            if gameData.randomEventType == GameRandomEventType["艰苦抉择"] then
                gold = gold * 2
                msg = i18n:format("本回合利息翻倍，获得结算利息${gold}金币", {gold = gold})
            else
                msg = i18n:format("获得结算利息${gold}金币", {gold = gold})
            end
            playerDataController:addGold(playerId, gold)
            local hero = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
            effectController:showGold(playerId, hero.entity.y3Unit, gold)
            chatController:sysMsg(msg, ChatInputType["仅自己可见消息"], playerId, playerId)
            index = index + 1
        end
    end
end
function MercenaryController.prototype.addBigBless10(self)
    local bigBlessData = datas.global:getSingle(BigBlessData)
    local ____opt_4 = bigBlessData and bigBlessData.bigBless
    if (____opt_4 and ____opt_4.id) ~= 10 then
        return
    end
    local config = bigBlessData.bigBless
    for ____, playerId in ipairs(playerIdList) do
        local gold = config.a
        local kingData = datas.players[player2King[playerId]]:getSingle(KingData)
        local kingOnly = #kingData.deathList >= 2
        if kingOnly then
            playerDataController:addGold(playerId, gold)
            local hero = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
            effectController:showGold(playerId, hero.entity.y3Unit, gold)
            local msg = i18n:format("我方防御单位仅剩国王，${name}生效，获得${gold}金币", {name = config.name.value, gold = gold})
            chatController:sysMsg(msg, ChatInputType["仅自己可见消息"], playerId, playerId)
        end
    end
end
function MercenaryController.prototype.addBigBless17(self)
    local bigBlessData = datas.global:getSingle(BigBlessData)
    local ____opt_8 = bigBlessData and bigBlessData.bigBless
    if (____opt_8 and ____opt_8.id) ~= 17 then
        return
    end
    local config = bigBlessData.bigBless
    for ____, playerId in ipairs(playerIdList) do
        local gold = config.a
        playerDataController:addGold(playerId, gold)
        local hero = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
        effectController:showGold(playerId, hero.entity.y3Unit, gold)
        local msg = i18n:format("获得对抗补贴${gold}金币", {gold = gold})
        chatController:sysMsg(msg, ChatInputType["仅自己可见消息"], playerId, playerId)
    end
end
function MercenaryController.prototype.addBigBless18(self)
    local bigBlessData = datas.global:getSingle(BigBlessData)
    local ____opt_12 = bigBlessData and bigBlessData.bigBless
    if (____opt_12 and ____opt_12.id) ~= 18 then
        return
    end
    local config = bigBlessData.bigBless
    for ____, playerId in ipairs(playerIdList) do
        local gold = config.a
        local wood = config.b
        playerDataController:addGold(playerId, gold)
        playerDataController:addWood(playerId, wood)
        local hero = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
        effectController:showGold(playerId, hero.entity.y3Unit, gold)
        local msg = i18n:format("${name}，获得${gold}金币和${wood}木头", {name = config.name.value, gold = gold, wood = wood})
        chatController:sysMsg(msg, ChatInputType["仅自己可见消息"], playerId, playerId)
    end
end
function MercenaryController.prototype.addRobotReward(self)
    if isPvpModeRobot(nil) then
        for ____, playerId in ipairs(playerIdList) do
            local config = robotLevelConfigMap[archive.playerData.singleModeChooseLevel]
            if config ~= nil then
                if playerId <= 4 then
                    local rewards = config.ourReward
                    do
                        local r = 0
                        while r < #rewards do
                            local ____type = rewards[r + 1]
                            local value = rewards[r + 1 + 1] or 1
                            if ____type == 1 then
                                playerDataController:addGold(playerId, value)
                                console:log(
                                    ("[Robot] 我方玩家 " .. tostring(playerId)) .. " 获得回合金币",
                                    value
                                )
                            elseif ____type == 2 then
                                playerDataController:addWood(playerId, value)
                                console:log(
                                    ("[Robot] 我方玩家 " .. tostring(playerId)) .. " 获得回合木头",
                                    value
                                )
                            end
                            r = r + 2
                        end
                    end
                else
                    local rewards = config.enemyReward
                    do
                        local r = 0
                        while r < #rewards do
                            local ____type = rewards[r + 1]
                            local value = rewards[r + 1 + 1] or 1
                            if ____type == 1 then
                                playerDataController:addGold(playerId, value)
                                console:log(
                                    ("[Robot] 敌方玩家 " .. tostring(playerId)) .. " 获得回合金币",
                                    value
                                )
                            elseif ____type == 2 then
                                playerDataController:addWood(playerId, value)
                                console:log(
                                    ("[Robot] 敌方玩家 " .. tostring(playerId)) .. " 获得回合木头",
                                    value
                                )
                            end
                            r = r + 2
                        end
                    end
                end
            end
        end
    end
end
function MercenaryController.prototype.interestTemp(self, playerId, temp)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    playerData.interestTemp = temp
end
____exports.mercenaryController = make(nil, ____exports.MercenaryController)
return ____exports
