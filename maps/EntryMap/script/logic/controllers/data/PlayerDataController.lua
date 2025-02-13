local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 8,["23"] = 9,["24"] = 9,["25"] = 10,["26"] = 10,["27"] = 11,["28"] = 11,["29"] = 12,["30"] = 12,["31"] = 13,["32"] = 13,["33"] = 15,["34"] = 15,["35"] = 15,["37"] = 15,["38"] = 17,["39"] = 18,["40"] = 19,["41"] = 20,["44"] = 23,["45"] = 24,["48"] = 27,["49"] = 28,["50"] = 31,["51"] = 32,["52"] = 17,["53"] = 35,["54"] = 36,["55"] = 37,["56"] = 38,["59"] = 41,["60"] = 42,["63"] = 45,["64"] = 46,["65"] = 47,["68"] = 50,["69"] = 53,["70"] = 54,["71"] = 55,["74"] = 58,["75"] = 35,["76"] = 61,["77"] = 62,["78"] = 63,["79"] = 65,["80"] = 66,["81"] = 61,["82"] = 69,["83"] = 70,["84"] = 71,["85"] = 72,["88"] = 75,["89"] = 77,["90"] = 78,["91"] = 79,["94"] = 82,["95"] = 69,["96"] = 85,["97"] = 86,["98"] = 87,["99"] = 85,["100"] = 90,["101"] = 91,["102"] = 92,["103"] = 95,["104"] = 96,["107"] = 98,["108"] = 99,["109"] = 100,["110"] = 101,["112"] = 103,["113"] = 104,["114"] = 106,["115"] = 109,["116"] = 112,["117"] = 113,["118"] = 113,["119"] = 113,["120"] = 113,["122"] = 117,["123"] = 118,["124"] = 119,["125"] = 121,["126"] = 122,["127"] = 122,["128"] = 122,["129"] = 122,["130"] = 123,["131"] = 125,["132"] = 126,["133"] = 127,["135"] = 130,["137"] = 90,["138"] = 138,["139"] = 139,["140"] = 140,["141"] = 138,["142"] = 145});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local writeableDatas = ____DataManager.writeableDatas
local ____BlackboardEnum = include("logic.ai.BlackboardEnum")
local BlackboardEnum = ____BlackboardEnum.BlackboardEnum
local ____RoleLevelConfig = include("logic.configs.RoleLevelConfig")
local roleLevelConfigList = ____RoleLevelConfig.roleLevelConfigList
local roleLevelConfigMap = ____RoleLevelConfig.roleLevelConfigMap
local ____KingData = include("logic.models.KingData")
local KingData = ____KingData.KingData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____PlayerStatisticsData = include("logic.models.PlayerStatisticsData")
local PlayerStatisticsData = ____PlayerStatisticsData.PlayerStatisticsData
local ____Property = include("logic.models.Property")
local propertyConfig2PropertyNumbers = ____Property.propertyConfig2PropertyNumbers
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____ITrigger = include("logic.triggers.ITrigger")
local TriggerType = ____ITrigger.TriggerType
local ____TriggerManager = include("logic.triggers.TriggerManager")
local triggerManager = ____TriggerManager.triggerManager
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local PlayerId = ____PlayerUtils.PlayerId
local ____EffectController = include("logic.controllers.ui.EffectController")
local effectController = ____EffectController.effectController
____exports.PlayerDataController = __TS__Class()
local PlayerDataController = ____exports.PlayerDataController
PlayerDataController.name = "PlayerDataController"
function PlayerDataController.prototype.____constructor(self)
end
function PlayerDataController.prototype.addGold(self, playerId, gold)
    if playerId == PlayerId.LEFT_KING or playerId == PlayerId.RIGHT_KING then
        local kingData = writeableDatas.players[playerId]:getOrCreateSingle(KingData)
        kingData.gold = kingData.gold + gold
        return
    end
    if writeableDatas.players[playerId] == nil then
        console:error("输入参数异常", playerId, gold)
        return
    end
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    playerData.gold = playerData.gold + gold
    local playerStatisticsData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerStatisticsData)
    playerStatisticsData.gold = playerStatisticsData.gold + gold
end
function PlayerDataController.prototype.costGold(self, playerId, gold)
    if playerId == PlayerId.LEFT_KING or playerId == PlayerId.RIGHT_KING then
        local kingData = writeableDatas.players[playerId]:getOrCreateSingle(KingData)
        kingData.gold = kingData.gold - gold
        return
    end
    if writeableDatas.players[playerId] == nil then
        console:error("输入参数异常", playerId, gold)
        return
    end
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    if playerData.gold < gold then
        console:log("金币不足", playerId, gold)
        return
    end
    playerData.gold = playerData.gold - gold
    local playerStatisticsData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerStatisticsData)
    if playerStatisticsData.gold < gold then
        console:log("金币不足", playerId, gold)
        return
    end
    playerStatisticsData.gold = playerStatisticsData.gold - gold
end
function PlayerDataController.prototype.addWood(self, playerId, wood)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    player.wood = player.wood + wood
    local playerStatisticsData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerStatisticsData)
    playerStatisticsData.wood = playerStatisticsData.wood + wood
end
function PlayerDataController.prototype.costWood(self, playerId, wood)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    if player.wood < wood then
        console:log("水晶不足", playerId, wood)
        return
    end
    player.wood = player.wood - wood
    local playerStatisticsData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerStatisticsData)
    if playerStatisticsData.wood < wood then
        console:log("水晶不足", playerId, wood)
        return
    end
    playerStatisticsData.wood = playerStatisticsData.wood - wood
end
function PlayerDataController.prototype.addFarmer(self, playerId, farmer)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    player.farmer = player.farmer + farmer
end
function PlayerDataController.prototype.addExp(self, playerId, exp)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    player.exp = player.exp + exp
    local maxLevel = roleLevelConfigList[#roleLevelConfigList]
    if maxLevel.level <= player.level then
        return
    end
    local nextLevel = roleLevelConfigMap[player.level + 1]
    local expCost = nextLevel.exp
    if player.expRate ~= -1 then
        expCost = math.floor(expCost * player.expRate)
    end
    while player.exp >= expCost do
        player.exp = player.exp - expCost
        effectController:showLvUpEffect(playerId)
        player.level = player.level + 1
        if player.behaveTree ~= nil then
            player.behaveTree.blackboard:Set(
                BlackboardEnum.levelupCount,
                player.behaveTree.blackboard:Get(BlackboardEnum.levelupCount) + 1
            )
        end
        local playerUnit = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
        playerUnit:getWritableEntity().activeData.level = player.level
        playerUnit.entity.y3Unit:set_level(player.level)
        local property = player.hero.property
        playerUnit:getWritableEntity():updateBaseProperties(
            playerUnit:getWritableEntity(),
            propertyConfig2PropertyNumbers(nil, property, player.level)
        )
        nextLevel = roleLevelConfigMap[player.level + 1]
        expCost = nextLevel.exp
        if player.expRate ~= -1 then
            expCost = math.floor(expCost * player.expRate)
        end
        triggerManager:trigger(TriggerType["英雄等级提升时"], {playerId = playerId, level = player.level})
    end
end
function PlayerDataController.prototype.setLevel(self, playerId, level)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    player.level = level
end
____exports.playerDataController = make(nil, ____exports.PlayerDataController)
return ____exports
