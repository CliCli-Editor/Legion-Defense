local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArrayFilter = ____lualib.__TS__ArrayFilter
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 2,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 6,["25"] = 7,["26"] = 7,["27"] = 8,["28"] = 8,["29"] = 9,["30"] = 9,["31"] = 10,["32"] = 10,["33"] = 11,["34"] = 11,["35"] = 12,["36"] = 12,["37"] = 13,["38"] = 13,["39"] = 15,["40"] = 15,["41"] = 16,["42"] = 16,["43"] = 17,["44"] = 17,["45"] = 18,["46"] = 18,["47"] = 20,["48"] = 20,["49"] = 22,["50"] = 22,["51"] = 22,["53"] = 22,["54"] = 24,["55"] = 25,["56"] = 26,["57"] = 27,["58"] = 24,["59"] = 30,["60"] = 31,["61"] = 32,["62"] = 34,["63"] = 35,["64"] = 36,["65"] = 37,["66"] = 38,["68"] = 40,["70"] = 43,["71"] = 45,["72"] = 47,["74"] = 49,["75"] = 49,["76"] = 50,["77"] = 52,["78"] = 53,["79"] = 54,["80"] = 55,["81"] = 55,["82"] = 57,["84"] = 58,["85"] = 58,["86"] = 60,["89"] = 63,["90"] = 63,["91"] = 63,["92"] = 63,["93"] = 63,["94"] = 63,["95"] = 63,["96"] = 64,["97"] = 65,["98"] = 65,["99"] = 65,["100"] = 66,["101"] = 66,["102"] = 67,["103"] = 67,["104"] = 67,["105"] = 67,["106"] = 67,["107"] = 67,["108"] = 67,["109"] = 67,["110"] = 65,["111"] = 65,["113"] = 49,["116"] = 95,["117"] = 96,["118"] = 30,["119"] = 99,["120"] = 100,["121"] = 101,["122"] = 102,["123"] = 104,["125"] = 106,["126"] = 107,["127"] = 107,["129"] = 109,["130"] = 110,["131"] = 112,["132"] = 113,["133"] = 113,["134"] = 113,["135"] = 113,["136"] = 114,["137"] = 114,["138"] = 119,["139"] = 121,["140"] = 122,["141"] = 124,["142"] = 125,["143"] = 125,["144"] = 125,["145"] = 126,["146"] = 127,["148"] = 125,["149"] = 125,["150"] = 130,["151"] = 131,["153"] = 134,["154"] = 99,["155"] = 138,["156"] = 139,["157"] = 140,["158"] = 141,["161"] = 145,["162"] = 145,["163"] = 145,["164"] = 146,["165"] = 147,["166"] = 149,["167"] = 150,["168"] = 151,["169"] = 151,["173"] = 145,["174"] = 145,["175"] = 161,["176"] = 161,["177"] = 161,["178"] = 162,["179"] = 163,["180"] = 164,["181"] = 165,["182"] = 166,["183"] = 167,["184"] = 168,["185"] = 169,["188"] = 172,["189"] = 173,["190"] = 174,["191"] = 175,["193"] = 177,["194"] = 161,["195"] = 161,["196"] = 179,["197"] = 181,["198"] = 182,["199"] = 183,["200"] = 185,["202"] = 191,["203"] = 191,["204"] = 191,["205"] = 192,["206"] = 192,["207"] = 192,["208"] = 192,["209"] = 191,["210"] = 191,["211"] = 196,["212"] = 197,["213"] = 138,["214"] = 201,["215"] = 202,["216"] = 203,["217"] = 204,["218"] = 205,["219"] = 206,["220"] = 207,["221"] = 208,["223"] = 211,["224"] = 212,["225"] = 213,["226"] = 214,["227"] = 215,["228"] = 216,["229"] = 216,["230"] = 216,["231"] = 216,["232"] = 216,["233"] = 217,["234"] = 218,["235"] = 218,["238"] = 222,["239"] = 223,["240"] = 224,["241"] = 201,["242"] = 227,["243"] = 228,["244"] = 229,["245"] = 231,["246"] = 232,["247"] = 233,["248"] = 233,["249"] = 233,["250"] = 233,["251"] = 234,["253"] = 227,["254"] = 242,["255"] = 243,["256"] = 244,["257"] = 245,["258"] = 247,["259"] = 248,["260"] = 249,["262"] = 252,["263"] = 253,["265"] = 256,["266"] = 258,["267"] = 259,["268"] = 260,["269"] = 261,["270"] = 262,["271"] = 263,["272"] = 263,["273"] = 263,["274"] = 263,["275"] = 263,["276"] = 264,["277"] = 265,["278"] = 265,["281"] = 269,["282"] = 270,["283"] = 270,["284"] = 270,["285"] = 270,["286"] = 270,["287"] = 270,["288"] = 272,["289"] = 242,["290"] = 280,["291"] = 281,["292"] = 282,["294"] = 280,["295"] = 287});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local writeableDatas = ____DataManager.writeableDatas
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____BigBlessConfig = include("logic.configs.BigBlessConfig")
local bigBlessConfigMap = ____BigBlessConfig.bigBlessConfigMap
local ____EquipConfig = include("logic.configs.EquipConfig")
local equipConfigMap = ____EquipConfig.equipConfigMap
local equipConfigMap_groupId = ____EquipConfig.equipConfigMap_groupId
local ____LevelConfig = include("logic.configs.LevelConfig")
local levelConfigMap = ____LevelConfig.levelConfigMap
local ____AuctionData = include("logic.models.AuctionData")
local AuctionData = ____AuctionData.AuctionData
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
local ____ChatData = include("logic.models.ChatData")
local ChatInputType = ____ChatData.ChatInputType
local ____EquipData = include("logic.models.EquipData")
local EquipData = ____EquipData.EquipData
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____ITrigger = include("logic.triggers.ITrigger")
local TriggerType = ____ITrigger.TriggerType
local ____TriggerManager = include("logic.triggers.TriggerManager")
local triggerManager = ____TriggerManager.triggerManager
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local playerIdList = ____PlayerUtils.playerIdList
local ____ChatController = include("logic.controllers.chat.ChatController")
local chatController = ____ChatController.chatController
____exports.AuctionController = __TS__Class()
local AuctionController = ____exports.AuctionController
AuctionController.name = "AuctionController"
function AuctionController.prototype.____constructor(self)
end
function AuctionController.prototype.init(self)
    local auctionData = writeableDatas.global:getOrCreateSingle(AuctionData)
    auctionData.showResult = false
    auctionData.equips = {}
end
function AuctionController.prototype.create(self)
    local auctionData = writeableDatas.global:getOrCreateSingle(AuctionData)
    auctionData.showResult = false
    local max_count = 4
    if #playerIdList <= 2 then
        max_count = 2
    elseif #playerIdList <= 4 then
        max_count = 3
    else
        max_count = 4
    end
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    auctionData.equips = {}
    local levelConfig = levelConfigMap[gameData.level]
    do
        local i = 0
        while i < #levelConfig.equipGroupId do
            local num = levelConfig.equipGroupId[i + 1]
            if num > 0 then
                local color = i + 1
                local bigBlessData = datas.global:getSingle(BigBlessData)
                local ____opt_0 = bigBlessData and bigBlessData.bigBless
                if (____opt_0 and ____opt_0.id) == 7 then
                    color = 3
                else
                    local ____opt_4 = bigBlessData and bigBlessData.bigBless
                    if (____opt_4 and ____opt_4.id) == 8 then
                        color = 1
                    end
                end
                local configs = __TS__ArrayFilter(
                    equipConfigMap_groupId[color],
                    function(____, a) return __TS__ArrayFindIndex(
                        auctionData.excludes,
                        function(____, b) return b == a.id end
                    ) == -1 end
                )
                local equip_configs = random:randomListNum(configs, num)
                __TS__ArrayForEach(
                    equip_configs,
                    function(____, a)
                        local ____auctionData_excludes_8 = auctionData.excludes
                        ____auctionData_excludes_8[#____auctionData_excludes_8 + 1] = a.id
                        local ____auctionData_equips_9 = auctionData.equips
                        ____auctionData_equips_9[#____auctionData_equips_9 + 1] = {
                            cfgId = a.id,
                            price = {},
                            confirm = {},
                            winner = 0,
                            showResult = false
                        }
                    end
                )
            end
            i = i + 1
        end
    end
    auctionData.inAuction = true
    console:log("装备暗拍环节开始。。。。。。", #auctionData.equips)
end
function AuctionController.prototype.auction(self, playerId, index, price)
    local auctionData = writeableDatas.global:getOrCreateSingle(AuctionData)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    if playerData.gold < price then
        return nil
    end
    local data = auctionData.equips[index + 1]
    if data.confirm[playerId] then
        return nil
    end
    local input = {playerId = playerId, ratio = 0}
    triggerManager:trigger(TriggerType["装备暗拍出价时"], input)
    local realPrice = price
    price = math.max(
        0,
        math.floor(price * (1 + input.ratio) + 0.5)
    )
    local ____data_price_10 = data.price
    ____data_price_10[#____data_price_10 + 1] = {playerId = playerId, price = price, realPrice = realPrice}
    data.confirm[playerId] = true
    playerData.gold = playerData.gold - realPrice
    playerData.auction_gold = playerData.auction_gold + realPrice
    local success = true
    __TS__ArrayForEach(
        auctionData.equips,
        function(____, a)
            if #a.price ~= #playerIdList then
                success = false
            end
        end
    )
    if success then
        self:settlement()
    end
    return price
end
function AuctionController.prototype.settlement(self)
    console:log("结算")
    local auctionData = writeableDatas.global:getOrCreateSingle(AuctionData)
    if not auctionData.inAuction then
        return
    end
    __TS__ArrayForEach(
        auctionData.equips,
        function(____, a)
            if #a.price < #playerIdList then
                for ____, playerId in ipairs(playerIdList) do
                    if a.confirm[playerId] == nil or a.confirm[playerId] == false then
                        a.confirm[playerId] = true
                        local ____a_price_11 = a.price
                        ____a_price_11[#____a_price_11 + 1] = {playerId = playerId, price = 0, realPrice = 0}
                    end
                end
            end
        end
    )
    __TS__ArrayForEach(
        auctionData.equips,
        function(____, a)
            local winner = 0
            local price = 0
            local realPrice = 0
            for ____, pinfo in ipairs(a.price) do
                if pinfo.price > price then
                    winner = pinfo.playerId
                    price = pinfo.price
                    realPrice = pinfo.realPrice
                end
            end
            if winner ~= 0 and price ~= 0 then
                console:log((((("玩家ID:" .. tostring(winner)) .. "拍卖价格为：") .. tostring(price)) .. "，获得装备：") .. tostring(a.cfgId))
                a.winner = winner
                self:addEquip(winner, a.cfgId, realPrice)
            end
            a.showResult = true
        end
    )
    auctionData.showResult = true
    for ____, playerId in ipairs(playerIdList) do
        local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        playerData.gold = playerData.gold + playerData.auction_gold
        playerData.auction_gold = 0
    end
    __TS__ArrayForEach(
        auctionData.equips,
        function(____, a)
            __TS__ArraySort(
                a.price,
                function(____, a, b) return b.price - a.price end
            )
        end
    )
    auctionData.inAuction = false
    console:log("结算2")
end
function AuctionController.prototype.addEquip(self, playerId, equipId, realPrice)
    local playerDatas = writeableDatas.players[playerId]
    local playerData = playerDatas:getOrCreateSingle(PlayerData)
    local playerUnit = playerDatas:getOrCreateSingle(UnitData)
    local equipConfig = equipConfigMap[equipId]
    local list = playerDatas:getAll(EquipData)
    if #list >= 3 then
        self:removeEquip(playerId, list[1].configId)
    end
    local equipData = playerDatas:create(EquipData)
    equipData.playerId = playerId
    equipData.configId = equipConfig.id
    equipData.effectList = {}
    for ____, effectConfig in ipairs(equipConfig.effect) do
        local effect = playerUnit:getWritableEntity():addEffect(
            playerUnit:getWritableEntity(),
            effectConfig,
            nil
        )
        if effect ~= nil then
            local ____equipData_effectList_12 = equipData.effectList
            ____equipData_effectList_12[#____equipData_effectList_12 + 1] = effect
        end
    end
    playerData.auction_gold = playerData.auction_gold - realPrice
    console:log("添加装备")
    triggerManager:trigger(TriggerType["获得装备时"], {playerId = playerId})
end
function AuctionController.prototype.removeEquip(self, playerId, equipId)
    local playerDatas = writeableDatas.players[playerId]
    local playerUnit = playerDatas:getOrCreateSingle(UnitData)
    local equip = playerDatas:getObjectByIndex(EquipData, "configId", equipId)
    if equip ~= nil then
        playerUnit:getWritableEntity():removeEffect(
            playerUnit:getWritableEntity(),
            equip.effectList
        )
        playerDatas:remove(EquipData, equip)
    end
end
function AuctionController.prototype.autoAddOrangeEquip(self, playerId, groupId)
    local playerDatas = writeableDatas.players[playerId]
    local playerData = playerDatas:getOrCreateSingle(PlayerData)
    local playerUnit = playerDatas:getOrCreateSingle(UnitData)
    local list = playerDatas:getAll(EquipData)
    if #list >= 3 then
        self:removeEquip(playerId, list[1].configId)
    end
    if #playerData.equipConfigList <= 0 then
        playerData.equipConfigList = __TS__ArraySlice(equipConfigMap_groupId[groupId])
    end
    local equipConfig = random:randomPop(playerData.equipConfigList)
    local equipData = playerDatas:create(EquipData)
    equipData.playerId = playerId
    equipData.configId = equipConfig.id
    equipData.effectList = {}
    for ____, effectConfig in ipairs(equipConfig.effect) do
        local effect = playerUnit:getWritableEntity():addEffect(
            playerUnit:getWritableEntity(),
            effectConfig,
            nil
        )
        if effect ~= nil then
            local ____equipData_effectList_13 = equipData.effectList
            ____equipData_effectList_13[#____equipData_effectList_13 + 1] = effect
        end
    end
    console:log((("玩家" .. tostring(playerId)) .. "随机获得装备") .. tostring(equipConfig.name))
    chatController:sysMsg(
        i18n:format("${name}生效，获得装备【${reward}】", {name = bigBlessConfigMap[15].name.value, reward = equipConfig.name.value}),
        ChatInputType["仅自己可见消息"],
        playerId,
        playerId
    )
    triggerManager:trigger(TriggerType["获得装备时"], {playerId = playerId})
end
function AuctionController.prototype.autoAddOrangeEquipAll(self, groupId)
    for ____, playerId in ipairs(playerIdList) do
        self:autoAddOrangeEquip(playerId, groupId)
    end
end
____exports.auctionController = make(nil, ____exports.AuctionController)
return ____exports
