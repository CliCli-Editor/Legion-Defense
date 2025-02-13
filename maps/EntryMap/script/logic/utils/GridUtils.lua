local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 11,["25"] = 11,["26"] = 11,["28"] = 11,["29"] = 13,["30"] = 14,["31"] = 15,["32"] = 16,["35"] = 19,["36"] = 19,["38"] = 20,["39"] = 20,["40"] = 21,["41"] = 22,["42"] = 23,["44"] = 20,["47"] = 19,["50"] = 27,["51"] = 13,["52"] = 30,["53"] = 30,["54"] = 30,["56"] = 32,["57"] = 33,["58"] = 34,["59"] = 35,["60"] = 36,["61"] = 37,["62"] = 39,["63"] = 40,["65"] = 43,["66"] = 45,["67"] = 46,["68"] = 47,["69"] = 48,["71"] = 50,["73"] = 52,["74"] = 53,["75"] = 54,["77"] = 56,["78"] = 56,["79"] = 57,["80"] = 58,["81"] = 59,["83"] = 62,["85"] = 63,["86"] = 63,["88"] = 64,["89"] = 64,["90"] = 64,["91"] = 64,["92"] = 64,["93"] = 64,["94"] = 64,["95"] = 65,["98"] = 77,["99"] = 77,["100"] = 78,["101"] = 78,["102"] = 78,["103"] = 78,["104"] = 78,["105"] = 78,["106"] = 78,["107"] = 79,["109"] = 77,["112"] = 83,["115"] = 63,["118"] = 56,["121"] = 86,["123"] = 90,["124"] = 91,["125"] = 91,["127"] = 92,["128"] = 94,["130"] = 96,["131"] = 96,["132"] = 97,["133"] = 98,["134"] = 99,["136"] = 102,["138"] = 103,["139"] = 103,["141"] = 104,["142"] = 104,["143"] = 104,["144"] = 104,["145"] = 104,["146"] = 104,["147"] = 104,["148"] = 105,["150"] = 107,["152"] = 109,["153"] = 109,["154"] = 110,["155"] = 111,["156"] = 111,["157"] = 111,["158"] = 111,["159"] = 111,["160"] = 111,["161"] = 111,["162"] = 112,["164"] = 109,["168"] = 116,["171"] = 103,["174"] = 96,["177"] = 119,["179"] = 30});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
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
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local BattleGroundId = ____PlayerUtils.BattleGroundId
local player2King = ____PlayerUtils.player2King
____exports.GridUtils = __TS__Class()
local GridUtils = ____exports.GridUtils
GridUtils.name = "GridUtils"
function GridUtils.prototype.____constructor(self)
end
function GridUtils.canPut(self, x, y, collisionX, collisionY, data)
    local index = y * data.grid_x_count + x
    if data.grids[index + 1] == 1 then
        return false
    end
    do
        local y1 = 0
        while y1 < collisionY do
            do
                local x1 = 0
                while x1 < collisionX do
                    local idx1 = (y + y1) * data.grid_x_count + (x + x1)
                    if data.grids[idx1 + 1] == 1 then
                        return false
                    end
                    x1 = x1 + 1
                end
            end
            y1 = y1 + 1
        end
    end
    return true
end
function GridUtils.check(self, playerId, ____type, collisionX, collisionY, randomPos)
    if ____type == nil then
        ____type = 0
    end
    local gameData = datas.global:getSingle(GameData)
    local data
    if gameData.mode == GameMode["终极大战"] then
        local kingId = player2King[playerId]
        local playerUnit = datas.players[playerId]:getSingle(UnitData)
        data = datas.players[kingId]:getSingle(KingData)
        if kingId == BattleGroundId.LEFT_KING then
            ____type = 32 - ____type
        end
        local offsetX = ____type
        local playerPos = playerUnit.entity:getPosition()
        local areaId = 0
        if kingId == BattleGroundId.RIGHT_KING then
            areaId = mapConfig["终极大战右边阵营"]
        else
            areaId = mapConfig["终极大战左边阵营"]
        end
        local area = y3.area.get_rectangle_by_res_id(areaId)
        local suggestY = math.floor((playerPos.y - area:get_min_y()) / 50)
        console:log("suggestY", suggestY)
        do
            local X = 0
            while X < data.grid_x_count do
                local kkk = X
                if ____type >= 5 * 4 then
                    kkk = -X
                end
                local X0 = math.abs((data.grid_x_count + offsetX + kkk) % data.grid_x_count)
                do
                    local Y = 0
                    while Y < data.grid_y_count do
                        do
                            if not self:canPut(
                                X0,
                                Y,
                                collisionX,
                                collisionY,
                                data
                            ) then
                                goto __continue15
                            end
                            do
                                local sy = suggestY - 5
                                while sy < suggestY + 5 do
                                    if self:canPut(
                                        X0,
                                        sy,
                                        collisionX,
                                        collisionY,
                                        data
                                    ) then
                                        return {x = X0, y = sy}
                                    end
                                    sy = sy + 1
                                end
                            end
                            return {x = X0, y = Y}
                        end
                        ::__continue15::
                        Y = Y + 1
                    end
                end
                X = X + 1
            end
        end
        return nil
    else
        local playerData = datas.players[playerId]:getSingle(PlayerData)
        if not playerData then
            return nil
        end
        data = playerData
        local offsetY = ____type
        do
            local y = 0
            while y < data.grid_y_count do
                local kkk = y
                if ____type >= 5 * 4 then
                    kkk = -y
                end
                local y0 = math.abs((data.grid_y_count + offsetY + kkk) % data.grid_y_count)
                do
                    local x = 0
                    while x < data.grid_x_count do
                        do
                            if not self:canPut(
                                x,
                                y0,
                                collisionX,
                                collisionY,
                                data
                            ) then
                                goto __continue23
                            end
                            if randomPos then
                                do
                                    local i = 0
                                    while i < 4 do
                                        local newX = random:randomRange(x, data.grid_x_count - 1)
                                        if self:canPut(
                                            newX,
                                            y0,
                                            collisionX,
                                            collisionY,
                                            data
                                        ) then
                                            return {x = newX, y = y0}
                                        end
                                        i = i + 1
                                    end
                                end
                            end
                            return {x = x, y = y0}
                        end
                        ::__continue23::
                        x = x + 1
                    end
                end
                y = y + 1
            end
        end
        return nil
    end
end
return ____exports
