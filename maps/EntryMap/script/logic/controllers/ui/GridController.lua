local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 9,["26"] = 9,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 13,["31"] = 13,["32"] = 13,["34"] = 13,["35"] = 14,["36"] = 15,["37"] = 16,["38"] = 17,["39"] = 18,["40"] = 19,["41"] = 20,["43"] = 22,["46"] = 25,["47"] = 26,["49"] = 28,["50"] = 29,["51"] = 30,["52"] = 31,["53"] = 32,["55"] = 33,["56"] = 33,["58"] = 34,["59"] = 34,["60"] = 35,["61"] = 36,["62"] = 34,["65"] = 33,["68"] = 14,["69"] = 41,["70"] = 42,["71"] = 43,["72"] = 44,["73"] = 44,["74"] = 44,["75"] = 44,["77"] = 46,["80"] = 48,["81"] = 49,["82"] = 50,["83"] = 51,["84"] = 52,["86"] = 54,["89"] = 56,["90"] = 56,["92"] = 57,["93"] = 57,["94"] = 58,["95"] = 59,["96"] = 57,["99"] = 56,["102"] = 41,["103"] = 64,["104"] = 65,["105"] = 66,["106"] = 67,["107"] = 67,["108"] = 67,["109"] = 67,["111"] = 69,["114"] = 71,["115"] = 72,["116"] = 73,["117"] = 74,["118"] = 75,["119"] = 76,["120"] = 77,["121"] = 78,["122"] = 79,["125"] = 82,["126"] = 83,["128"] = 85,["129"] = 88,["130"] = 89,["131"] = 90,["132"] = 91,["134"] = 93,["135"] = 93,["137"] = 94,["138"] = 94,["139"] = 95,["140"] = 96,["141"] = 94,["144"] = 93,["147"] = 64,["148"] = 101,["149"] = 102,["150"] = 103,["151"] = 104,["152"] = 104,["153"] = 104,["154"] = 104,["156"] = 106,["159"] = 107,["160"] = 108,["161"] = 109,["162"] = 110,["163"] = 111,["165"] = 113,["168"] = 115,["169"] = 115,["171"] = 116,["172"] = 116,["173"] = 117,["174"] = 118,["175"] = 116,["178"] = 115,["181"] = 101,["182"] = 123,["183"] = 124,["184"] = 125,["185"] = 126,["186"] = 123,["187"] = 139,["188"] = 139,["189"] = 139,["191"] = 140,["192"] = 141,["193"] = 142,["194"] = 143,["195"] = 144,["197"] = 146,["199"] = 148,["200"] = 148,["201"] = 148,["202"] = 148,["203"] = 148,["204"] = 148,["205"] = 148,["206"] = 149,["207"] = 150,["209"] = 152,["210"] = 152,["211"] = 152,["212"] = 152,["213"] = 139,["214"] = 156});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local writeableDatas = ____DataManager.writeableDatas
local ____Random = include("framework.utils.Random")
local random = ____Random.random
local ____MapConfig = include("logic.configs.MapConfig")
local mapConfig = ____MapConfig.mapConfig
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local GameMode = ____GameData.GameMode
local ____KingData = include("logic.models.KingData")
local KingData = ____KingData.KingData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local ____GridUtils = include("logic.utils.GridUtils")
local GridUtils = ____GridUtils.GridUtils
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local BattleGroundId = ____PlayerUtils.BattleGroundId
local player2King = ____PlayerUtils.player2King
____exports.GridController = __TS__Class()
local GridController = ____exports.GridController
GridController.name = "GridController"
function GridController.prototype.____constructor(self)
end
function GridController.prototype.initGrid(self, playerId)
    local data
    local areaId = 0
    if playerId == BattleGroundId.LEFT_KING or playerId == BattleGroundId.RIGHT_KING then
        data = writeableDatas.players[playerId]:getOrCreateSingle(KingData)
        if playerId == BattleGroundId.RIGHT_KING then
            areaId = mapConfig["终极大战右边阵营"]
        else
            areaId = mapConfig["终极大战左边阵营"]
        end
    else
        data = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        areaId = mapConfig["玩家佣兵据点"][playerId]
    end
    local area = y3.area.get_rectangle_by_res_id(areaId)
    local x_count = math.floor((area:get_max_x() - area:get_min_x()) / 50 + 0.5)
    local y_count = math.floor((area:get_max_y() - area:get_min_y()) / 50 + 0.5)
    data.grid_x_count = x_count
    data.grid_y_count = y_count
    do
        local y = 0
        while y < y_count do
            do
                local x = 0
                while x < x_count do
                    local idx = y * x_count + x
                    data.grids[idx + 1] = 0
                    x = x + 1
                end
            end
            y = y + 1
        end
    end
end
function GridController.prototype.addGrid(self, playerId, unitId)
    local unitData = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
    if unitData.id ~= unitId then
        unitData = __TS__ArrayFind(
            writeableDatas.players[playerId]:getAll(UnitData),
            function(____, a) return a.id == unitId end
        )
    end
    if unitData == nil then
        return
    end
    local data
    local gameData = datas.global:getSingle(GameData)
    if gameData.mode == GameMode["终极大战"] then
        local kingId = player2King[playerId]
        data = writeableDatas.players[kingId]:getOrCreateSingle(KingData)
    else
        data = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    end
    do
        local y = 0
        while y < unitData.collision_y do
            do
                local x = 0
                while x < unitData.collision_x do
                    local idx = (unitData.grid_y + y) * data.grid_x_count + (unitData.grid_x + x)
                    data.grids[idx + 1] = 1
                    x = x + 1
                end
            end
            y = y + 1
        end
    end
end
function GridController.prototype.addGridByPos(self, playerId, unitId)
    local unitData = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
    if unitData.id ~= unitId then
        unitData = __TS__ArrayFind(
            writeableDatas.players[playerId]:getAll(UnitData),
            function(____, a) return a.id == unitId end
        )
    end
    if unitData == nil then
        return
    end
    local data
    local areaId = 0
    local gameData = datas.global:getSingle(GameData)
    if gameData.mode == GameMode["终极大战"] then
        local kingId = player2King[playerId]
        data = writeableDatas.players[kingId]:getOrCreateSingle(KingData)
        areaId = mapConfig["终极大战左边阵营"]
        if kingId == BattleGroundId.RIGHT_KING then
            areaId = mapConfig["终极大战右边阵营"]
        end
    else
        data = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
        areaId = mapConfig["玩家佣兵据点"][playerId]
    end
    local area = y3.area.get_rectangle_by_res_id(areaId)
    local grid_x = math.floor((unitData.origin_position:get_x() - area:get_min_x()) / 50 - unitData.collision_x / 2 + 0.5)
    local grid_y = math.floor((unitData.origin_position:get_y() - area:get_min_y()) / 50 - unitData.collision_x / 2 + 0.5)
    unitData.grid_x = grid_x
    unitData.grid_y = grid_y
    do
        local y = 0
        while y < unitData.collision_y do
            do
                local x = 0
                while x < unitData.collision_x do
                    local idx = (unitData.grid_y + y) * data.grid_x_count + (unitData.grid_x + x)
                    data.grids[idx + 1] = 1
                    x = x + 1
                end
            end
            y = y + 1
        end
    end
end
function GridController.prototype.removeGrid(self, playerId, unitId)
    local unitData = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
    if unitData.id ~= unitId then
        unitData = __TS__ArrayFind(
            writeableDatas.players[playerId]:getAll(UnitData),
            function(____, a) return a.id == unitId end
        )
    end
    if unitData == nil then
        return
    end
    local data
    local gameData = datas.global:getSingle(GameData)
    if gameData.mode == GameMode["终极大战"] then
        local kingId = player2King[playerId]
        data = writeableDatas.players[kingId]:getOrCreateSingle(KingData)
    else
        data = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    end
    do
        local y = 0
        while y < unitData.collision_y do
            do
                local x = 0
                while x < unitData.collision_x do
                    local idx = (unitData.grid_y + y) * data.grid_x_count + (unitData.grid_x + x)
                    data.grids[idx + 1] = 0
                    x = x + 1
                end
            end
            y = y + 1
        end
    end
end
function GridController.prototype.reset(self, playerId)
    self:initGrid(playerId)
    local unitData = writeableDatas.players[playerId]:getOrCreateSingle(UnitData)
    self:addGrid(playerId, unitData.id)
end
function GridController.prototype.findAGrid(self, playerId, ____type, collisionX, collisionY, randomPos)
    if ____type == nil then
        ____type = 0
    end
    local data
    local gameData = datas.global:getSingle(GameData)
    if gameData.mode == GameMode["终极大战"] then
        local kingId = player2King[playerId]
        data = writeableDatas.players[kingId]:getOrCreateSingle(KingData)
    else
        data = writeableDatas.players[playerId]:getOrCreateSingle(PlayerData)
    end
    local pos = GridUtils:check(
        playerId,
        ____type,
        collisionX,
        collisionY,
        randomPos
    )
    if pos ~= nil then
        return pos
    end
    return {
        x = random:randomRange(0, data.grid_x_count),
        y = random:randomRange(0, data.grid_y_count)
    }
end
____exports.gridController = make(nil, ____exports.GridController)
return ____exports
