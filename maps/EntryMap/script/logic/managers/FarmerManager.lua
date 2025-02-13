local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 7,["21"] = 7,["22"] = 10,["23"] = 10,["24"] = 10,["26"] = 10,["27"] = 12,["28"] = 12,["29"] = 12,["31"] = 13,["32"] = 14,["33"] = 15,["34"] = 17,["35"] = 18,["36"] = 19,["38"] = 21,["40"] = 23,["41"] = 24,["42"] = 25,["43"] = 26,["45"] = 28,["47"] = 30,["48"] = 31,["49"] = 32,["51"] = 33,["53"] = 35,["54"] = 12,["55"] = 37,["56"] = 38,["57"] = 39,["58"] = 40,["59"] = 41,["61"] = 43,["62"] = 44,["63"] = 37,["64"] = 47,["65"] = 48,["66"] = 49,["67"] = 50,["68"] = 47,["69"] = 53,["70"] = 53,["71"] = 53,["73"] = 54,["74"] = 55,["75"] = 55,["77"] = 56,["79"] = 58,["80"] = 59,["82"] = 61,["83"] = 62,["84"] = 63,["85"] = 64,["87"] = 66,["88"] = 68,["89"] = 68,["91"] = 69,["93"] = 71,["94"] = 73,["95"] = 73,["97"] = 74,["99"] = 76,["100"] = 53,["101"] = 86,["102"] = 87,["103"] = 88,["104"] = 89,["105"] = 89,["107"] = 90,["108"] = 86,["109"] = 92,["110"] = 93,["111"] = 93,["113"] = 94,["114"] = 95,["115"] = 96,["116"] = 96,["118"] = 97,["119"] = 92,["120"] = 108,["121"] = 109,["122"] = 110,["123"] = 111,["124"] = 111,["126"] = 112,["127"] = 108,["128"] = 124});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____TechnologyConfig = include("logic.configs.TechnologyConfig")
local technologyConfigList = ____TechnologyConfig.technologyConfigList
local technologyConfigMap = ____TechnologyConfig.technologyConfigMap
local ____DTips = include("logic.dialogs.DTips")
local DTips = ____DTips.DTips
local ____GameData = include("logic.models.GameData")
local GameData = ____GameData.GameData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
____exports.FarmerManager = __TS__Class()
local FarmerManager = ____exports.FarmerManager
FarmerManager.name = "FarmerManager"
function FarmerManager.prototype.____constructor(self)
end
function FarmerManager.prototype.isLocked(self, playerId, show)
    if show == nil then
        show = false
    end
    local playerData = datas.players[playerId]:getSingle(PlayerData)
    local gameData = datas.global:getSingle(GameData)
    local cfg = technologyConfigMap[playerData.farmerLevel + 1]
    if cfg == nil then
        if show then
            DTips:show(i18n["local"](i18n, "科技已满级!"))
        end
        return true
    end
    local limit = #cfg.limitArgs ~= 0 and cfg.limitArgs[1] or 0
    if cfg.limit == 1 and playerData.level < limit then
        if show then
            DTips:show(i18n:format("玩家等级${limit}级以后，才能解锁当前科技", {limit = limit}))
        end
        return true
    end
    if cfg.limit == 2 and gameData.level < limit then
        if show then
            DTips:show(i18n:format("第${limit}波次以后，才能解锁当前科技", {limit = limit}))
        end
        return true
    end
    return false
end
function FarmerManager.prototype.needLevel(self, playerId)
    local playerData = datas.players[playerId]:getSingle(PlayerData)
    local cfg = technologyConfigMap[playerData.farmerLevel + 1]
    if cfg == nil then
        return 0
    end
    local limit = #cfg.limitArgs ~= 0 and cfg.limitArgs[1] or 0
    return limit
end
function FarmerManager.prototype.isMaxLevel(self, playerId)
    local playerData = datas.players[playerId]:getSingle(PlayerData)
    local max = technologyConfigList[#technologyConfigList]
    return max.id <= playerData.farmerLevel
end
function FarmerManager.prototype.checkLevelUp(self, playerId, isshow)
    if isshow == nil then
        isshow = true
    end
    if self:isMaxLevel(playerId) then
        if isshow then
            DTips:show(i18n["local"](i18n, "已满级"))
        end
        return false
    end
    if self:isLocked(playerId, isshow) then
        return false
    end
    local playerData = datas.players[playerId]:getSingle(PlayerData)
    local cfg = technologyConfigMap[playerData.farmerLevel + 1]
    if cfg == nil then
        return false
    end
    if cfg.consumeWood > 0 and playerData.wood < cfg.consumeWood then
        if isshow then
            DTips:show(i18n["local"](i18n, "水晶不够"))
        end
        return false
    end
    if cfg.consumeGold > 0 and playerData.gold < cfg.consumeGold then
        if isshow then
            DTips:show(i18n["local"](i18n, "金币不够"))
        end
        return false
    end
    return true
end
function FarmerManager.prototype.getFarmerNumCost(self)
    local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
    local cfg = technologyConfigMap[playerData.farmerLevel + 1]
    if cfg == nil then
        return 0
    end
    return cfg.consumeWood
end
function FarmerManager.prototype.getFarmerNumCost2(self, level)
    if #technologyConfigList < level then
        return technologyConfigList[#technologyConfigList].consumeWood
    end
    local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
    local cfg = technologyConfigMap[playerData.farmerLevel + 1]
    if cfg == nil then
        return 0
    end
    return cfg.consumeWood
end
function FarmerManager.prototype.getFarmerNumDes(self)
    local playerData = LOCAL.PLAYER_DATA:getSingle(PlayerData)
    local cfg = technologyConfigMap[playerData.farmerLevel + 1]
    if cfg == nil then
        return ""
    end
    return cfg.des.value
end
____exports.farmerManager = __TS__New(____exports.FarmerManager)
return ____exports
