local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["18"] = 7,["19"] = 7,["20"] = 8,["21"] = 8,["22"] = 9,["23"] = 9,["24"] = 10,["25"] = 10,["26"] = 11,["27"] = 11,["28"] = 12,["29"] = 12,["30"] = 12,["31"] = 13,["32"] = 13,["33"] = 14,["34"] = 14,["35"] = 16,["36"] = 16,["37"] = 18,["38"] = 18,["39"] = 18,["41"] = 18,["42"] = 22,["43"] = 22,["44"] = 25,["45"] = 26,["46"] = 28,["47"] = 29,["48"] = 30,["49"] = 31,["50"] = 33,["51"] = 34,["52"] = 35,["53"] = 25,["54"] = 51,["55"] = 52,["56"] = 52,["57"] = 52,["58"] = 53,["59"] = 54,["63"] = 58,["64"] = 58,["65"] = 59,["66"] = 62,["67"] = 58,["70"] = 52,["71"] = 52,["72"] = 51,["73"] = 67,["74"] = 68,["75"] = 69,["78"] = 70,["81"] = 71,["82"] = 72,["85"] = 79,["86"] = 82,["87"] = 84,["88"] = 85,["89"] = 86,["90"] = 87,["91"] = 88,["92"] = 89,["93"] = 90,["94"] = 91,["96"] = 93,["97"] = 95,["98"] = 98,["99"] = 67,["100"] = 104,["101"] = 105,["102"] = 106,["104"] = 107,["105"] = 107,["106"] = 108,["107"] = 109,["108"] = 107,["111"] = 104,["112"] = 113,["113"] = 113,["114"] = 117,["115"] = 118,["116"] = 119,["117"] = 120,["118"] = 121,["119"] = 122,["121"] = 123,["122"] = 123,["123"] = 124,["124"] = 125,["125"] = 126,["126"] = 127,["127"] = 128,["128"] = 128,["129"] = 128,["130"] = 128,["131"] = 128,["132"] = 128,["133"] = 128,["134"] = 136,["135"] = 137,["136"] = 136,["137"] = 139,["138"] = 123,["142"] = 117,["143"] = 144,["144"] = 145,["145"] = 146,["147"] = 148,["148"] = 149,["150"] = 151,["151"] = 152,["153"] = 154,["154"] = 155,["156"] = 157,["157"] = 158,["159"] = 160,["160"] = 161,["162"] = 163,["163"] = 164,["165"] = 166,["166"] = 167,["168"] = 169,["169"] = 144,["170"] = 176,["171"] = 176,["172"] = 180,["173"] = 181,["174"] = 183,["175"] = 185,["176"] = 186,["177"] = 187,["178"] = 189,["179"] = 190,["182"] = 194,["183"] = 196,["184"] = 197,["185"] = 180,["186"] = 200,["187"] = 200,["188"] = 208});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local writeableDatas = ____DataManager.writeableDatas
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local playerIdList = ____PlayerUtils.playerIdList
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____TechnologyConfig = include("logic.configs.TechnologyConfig")
local technologyConfigMap = ____TechnologyConfig.technologyConfigMap
local ____FarmerData = include("logic.models.FarmerData")
local FarmerUnit = ____FarmerData.FarmerUnit
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____FarmerManager = include("logic.managers.FarmerManager")
local farmerManager = ____FarmerManager.farmerManager
local ____TechnologyDefaultConfig = include("logic.configs.TechnologyDefaultConfig")
local technologyDefaultConfig = ____TechnologyDefaultConfig.technologyDefaultConfig
local ____PlayerStatisticsData = include("logic.models.PlayerStatisticsData")
local PlayerStatisticsData = ____PlayerStatisticsData.PlayerStatisticsData
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local ____ITrigger = include("logic.triggers.ITrigger")
local TriggerType = ____ITrigger.TriggerType
local ____TriggerManager = include("logic.triggers.TriggerManager")
local triggerManager = ____TriggerManager.triggerManager
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
____exports.TechnologyController = __TS__Class()
local TechnologyController = ____exports.TechnologyController
TechnologyController.name = "TechnologyController"
function TechnologyController.prototype.____constructor(self)
end
function TechnologyController.prototype.init(self)
end
function TechnologyController.prototype.initFarmer(self, playerId)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    playerData.farmerLevel = 0
    playerData.farmer = technologyDefaultConfig["初始农民数量"]
    playerData.farmerSpeed = technologyDefaultConfig["初始采集效率"]
    playerData.farmerGatherNum = technologyDefaultConfig["初始采集数量"]
    self:updateFarmer(playerId)
    self:updateSpeed(playerId)
    self:updateGather(playerId)
end
function TechnologyController.prototype.startTimer(self)
    y3.ltimer.loop(
        5,
        function()
            local gameData = writeableDatas.global:getOrCreateSingle(GameData)
            if gameData.level < 1 or gameData.mode == GameMode.KOF or gameData.mode == GameMode["兔羊大战"] then
                return
            end
            do
                local index = 0
                while index < #playerIdList do
                    local playerId = playerIdList[index + 1]
                    ____exports.technologyController:gather(playerId)
                    index = index + 1
                end
            end
        end
    )
end
function TechnologyController.prototype.levelUp(self, playerId)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    if farmerManager:isMaxLevel(playerId) then
        return
    end
    if farmerManager:isLocked(playerId) then
        return
    end
    local cfg = technologyConfigMap[player.farmerLevel + 1]
    if player.wood < cfg.consumeWood then
        return
    end
    player.farmerLevel = player.farmerLevel + 1
    player.wood = player.wood - cfg.consumeWood
    if cfg.promoteType == 1 then
        player.farmer = cfg.promoteArgs
        self:updateFarmer(playerId)
    elseif cfg.promoteType == 2 then
        player.farmerSpeed = cfg.promoteArgs
        self:updateSpeed(playerId)
    elseif cfg.promoteType == 3 then
        self:updateGather(playerId)
    end
    player.farmerGatherNum = cfg.gather
    triggerManager:trigger(TriggerType["科技等级提升时"], {playerId = playerId})
    triggerManager:trigger(TriggerType["获得及科技等级提升时"], {playerId = playerId, isGet = false})
end
function TechnologyController.prototype.updateSpeed(self, playerId)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local farmers = writeableDatas.players[playerId]:getAll(FarmerUnit)
    do
        local index = 0
        while index < #farmers do
            local unitData = farmers[index + 1]
            unitData:set_speed(player.farmerSpeed)
            index = index + 1
        end
    end
end
function TechnologyController.prototype.updateGather(self, playerId)
end
function TechnologyController.prototype.updateFarmer(self, playerId)
    local playerData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local farmers = writeableDatas.players[playerId]:getAll(FarmerUnit)
    local count = playerData.farmer - #farmers
    if count > 0 then
        local player = y3.player.get_by_id(playerId)
        do
            local index = 0
            while index < count do
                local unit = writeableDatas.players[playerId]:create(FarmerUnit)
                local roadData = self:getRoad(playerId)
                local road = roadData[1]
                local area = roadData[2]
                unit:init({
                    player = player,
                    roleId = defaultConfig["农民外观"],
                    name = (playerData.name .. "的农民") .. tostring(count + index),
                    area = area,
                    road = road
                })
                unit.set_complete_callback = function(____, playerId)
                    self:gather(playerId)
                end
                unit:set_speed(playerData.farmerSpeed)
                index = index + 1
            end
        end
    end
end
function TechnologyController.prototype.getRoad(self, playerId)
    if playerId == 1 then
        return mapConfig["玩家1农民点位"]
    end
    if playerId == 2 then
        return mapConfig["玩家2农民点位"]
    end
    if playerId == 3 then
        return mapConfig["玩家3农民点位"]
    end
    if playerId == 4 then
        return mapConfig["玩家4农民点位"]
    end
    if playerId == 5 then
        return mapConfig["玩家5农民点位"]
    end
    if playerId == 6 then
        return mapConfig["玩家6农民点位"]
    end
    if playerId == 7 then
        return mapConfig["玩家7农民点位"]
    end
    if playerId == 8 then
        return mapConfig["玩家8农民点位"]
    end
    return mapConfig["玩家1农民点位"]
end
function TechnologyController.prototype.kingAttrLevelUp(self, playerId)
end
function TechnologyController.prototype.gather(self, playerId)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local wood = GameUtils:getFarmerGatherNum(playerId)
    if player.gatherScale ~= -1 then
        wood = wood * player.gatherScale
        player.gatherScaleCount = player.gatherScaleCount - 1
        if player.gatherScaleCount <= 0 then
            player.gatherScale = -1
        end
    end
    player.wood = player.wood + wood
    local playerStatisticsData = writeableDatas.players[playerId]:getOrCreateSingle(PlayerStatisticsData)
    playerStatisticsData.wood = playerStatisticsData.wood + wood
end
function TechnologyController.prototype.settlement(self)
end
____exports.technologyController = make(nil, ____exports.TechnologyController)
return ____exports
