local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ObjectValues = ____lualib.__TS__ObjectValues
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 8,["23"] = 8,["24"] = 9,["25"] = 9,["26"] = 10,["27"] = 10,["28"] = 11,["29"] = 11,["30"] = 13,["31"] = 13,["32"] = 13,["34"] = 13,["35"] = 15,["36"] = 16,["37"] = 17,["38"] = 19,["39"] = 20,["41"] = 21,["42"] = 21,["43"] = 22,["44"] = 23,["45"] = 21,["48"] = 27,["49"] = 28,["51"] = 29,["52"] = 29,["53"] = 30,["54"] = 31,["55"] = 32,["57"] = 34,["58"] = 34,["60"] = 35,["64"] = 29,["67"] = 39,["68"] = 40,["69"] = 15,["70"] = 43,["71"] = 44,["72"] = 44,["73"] = 44,["74"] = 44,["75"] = 43,["76"] = 47,["77"] = 48,["78"] = 49,["79"] = 50,["80"] = 51,["83"] = 55,["84"] = 56,["85"] = 57,["88"] = 63,["89"] = 66,["90"] = 47,["91"] = 69,["92"] = 70,["93"] = 71,["94"] = 72,["95"] = 74,["96"] = 75,["97"] = 76,["98"] = 77,["99"] = 78,["100"] = 79,["101"] = 79,["102"] = 79,["103"] = 79,["104"] = 79,["105"] = 80,["106"] = 81,["107"] = 81,["110"] = 85,["111"] = 69,["112"] = 88,["113"] = 89,["114"] = 90,["115"] = 91,["116"] = 93,["117"] = 94,["118"] = 95,["119"] = 95,["120"] = 95,["121"] = 95,["122"] = 96,["124"] = 88,["125"] = 101});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local writeableDatas = ____DataManager.writeableDatas
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____EquipConfig = include("logic.configs.EquipConfig")
local equipConfigMap = ____EquipConfig.equipConfigMap
local equipConfigMap_groupId = ____EquipConfig.equipConfigMap_groupId
local ____LevelConfig = include("logic.configs.LevelConfig")
local levelConfigMap = ____LevelConfig.levelConfigMap
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
____exports.EquipController = __TS__Class()
local EquipController = ____exports.EquipController
EquipController.name = "EquipController"
function EquipController.prototype.____constructor(self)
end
function EquipController.prototype.genCanSelEquip(self, playerId)
    local gameData = writeableDatas.global:getOrCreateSingle(GameData)
    local player = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    local equipList = writeableDatas.players[playerId]:getAll(EquipData)
    local map = {}
    do
        local index = 0
        while index < #equipList do
            local element = equipList[index + 1]
            map[element.configId] = true
            index = index + 1
        end
    end
    local poolMap = {}
    local levelConfig = levelConfigMap[gameData.level]
    do
        local i = 0
        while i < #levelConfig.equipGroupId do
            local groupId = levelConfig.equipGroupId[i + 1]
            local configs = equipConfigMap_groupId[groupId]
            for ____, l in ipairs(configs) do
                do
                    if map[l.id] then
                        goto __continue6
                    end
                    poolMap[l.id] = l
                end
                ::__continue6::
            end
            i = i + 1
        end
    end
    local pool = __TS__ObjectValues(poolMap)
    player.canSelEquip = random:randomListNum(pool, 3)
end
function EquipController.prototype.selRandom(self, playerId)
    self:selEquip(
        playerId,
        random:randomRange(0, 2)
    )
end
function EquipController.prototype.selEquip(self, playerId, pos)
    local playerDatas = writeableDatas.players[playerId]
    local player = playerDatas:getOrCreateSingle(PlayerData)
    if player.canSelEquip == nil then
        console:warn(("玩家" .. tostring(playerId)) .. "没有提前生成装备可选项")
        return
    end
    local equipConfig = player.canSelEquip[pos + 1]
    if equipConfig == nil then
        console:warn((("玩家" .. tostring(playerId)) .. "没有找到装备") .. tostring(pos))
        return
    end
    self:addEquip(playerId, equipConfig.id)
    player.canSelEquip = nil
end
function EquipController.prototype.addEquip(self, playerId, equipId)
    local playerDatas = writeableDatas.players[playerId]
    local playerUnit = playerDatas:getOrCreateSingle(UnitData)
    local equipConfig = equipConfigMap[equipId]
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
            local ____equipData_effectList_0 = equipData.effectList
            ____equipData_effectList_0[#____equipData_effectList_0 + 1] = effect
        end
    end
    triggerManager:trigger(TriggerType["获得装备时"], {playerId = playerId})
end
function EquipController.prototype.removeEquip(self, playerId, equipId)
    local playerDatas = writeableDatas.players[playerId]
    local playerUnit = playerDatas:getOrCreateSingle(UnitData)
    local equipConfig = equipConfigMap[equipId]
    local equip = playerDatas:getObjectByIndex(EquipData, "configId", equipId)
    if equip ~= nil then
        playerUnit:getWritableEntity():removeEffect(
            playerUnit:getWritableEntity(),
            equip.effectList
        )
        playerDatas:remove(EquipData, equip)
    end
end
____exports.equipController = make(nil, ____exports.EquipController)
return ____exports
