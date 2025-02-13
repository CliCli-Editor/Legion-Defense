local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 7,["15"] = 7,["16"] = 7,["18"] = 7,["19"] = 9,["20"] = 10,["21"] = 11,["22"] = 13,["23"] = 14,["24"] = 15,["26"] = 18,["27"] = 9,["28"] = 21,["29"] = 22,["30"] = 24,["31"] = 25,["32"] = 26,["34"] = 29,["35"] = 21});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____RoleLevelConfig = include("logic.configs.RoleLevelConfig")
local roleLevelConfigMap = ____RoleLevelConfig.roleLevelConfigMap
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____GameUtils = include("logic.utils.GameUtils")
local GameUtils = ____GameUtils.GameUtils
____exports.BlessUtils = __TS__Class()
local BlessUtils = ____exports.BlessUtils
BlessUtils.name = "BlessUtils"
function BlessUtils.prototype.____constructor(self)
end
function BlessUtils.prototype.getExp(self, playerId, level)
    local player = datas.players[playerId]:getSingle(PlayerData)
    local nextLevel = roleLevelConfigMap[level]
    local expCost = nextLevel.exp
    if player.expRate ~= -1 then
        expCost = math.floor(expCost * player.expRate)
    end
    return expCost
end
function BlessUtils.prototype.getWood(self, playerId)
    local player = datas.players[playerId]:getSingle(PlayerData)
    local wood = GameUtils:getFarmerGatherNum(playerId)
    if player.gatherScale ~= -1 then
        wood = wood * player.gatherScale
    end
    return wood
end
return ____exports
