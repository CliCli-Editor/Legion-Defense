local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ObjectDefineProperty = ____lualib.__TS__ObjectDefineProperty
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 3,["10"] = 3,["11"] = 6,["12"] = 6,["13"] = 7,["14"] = 7,["15"] = 8,["16"] = 8,["17"] = 9,["18"] = 9,["19"] = 12,["20"] = 12,["21"] = 12,["23"] = 12,["24"] = 56,["25"] = 57,["26"] = 58,["27"] = 58,["28"] = 60,["30"] = 63,["31"] = 64,["32"] = 65,["33"] = 66,["35"] = 69,["36"] = 70,["38"] = 72,["39"] = 56,["40"] = 78,["41"] = 79,["42"] = 81,["43"] = 82,["44"] = 82,["45"] = 84,["47"] = 86,["49"] = 78,["50"] = 90,["51"] = 91,["52"] = 92,["53"] = 94,["54"] = 95,["55"] = 95,["56"] = 97,["58"] = 100,["59"] = 90,["60"] = 103,["61"] = 104,["62"] = 105,["63"] = 105,["64"] = 107,["65"] = 108,["68"] = 111,["69"] = 103,["74"] = 18,["81"] = 26,["82"] = 27,["83"] = 28,["84"] = 29,["85"] = 30,["88"] = 33,["95"] = 40,["96"] = 41,["97"] = 41,["98"] = 43,["100"] = 45,["101"] = 45,["102"] = 47,["104"] = 50});
local ____exports = {}
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____DefaultConfig = include("logic.configs.DefaultConfig")
local defaultConfig = ____DefaultConfig.defaultConfig
local ____BigBlessData = include("logic.models.BigBlessData")
local BigBlessData = ____BigBlessData.BigBlessData
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
local ____RoleStatus = include("logic.models.RoleStatus")
local RoleStatus = ____RoleStatus.RoleStatus
local ____PlayerUtils = include("logic.utils.PlayerUtils")
local playerIdList = ____PlayerUtils.playerIdList
____exports.GameUtils = __TS__Class()
local GameUtils = ____exports.GameUtils
GameUtils.name = "GameUtils"
function GameUtils.prototype.____constructor(self)
end
function GameUtils.getMaxBaseInterest(self, playerId)
    local bigBlessData = datas.global:getSingle(BigBlessData)
    local ____opt_0 = bigBlessData and bigBlessData.bigBless
    if (____opt_0 and ____opt_0.id) == 1 then
        return 0
    end
    local max = self.maxBaseInterest
    local playerData = datas.players[playerId]:getSingle(PlayerData)
    if playerData ~= nil and playerData.interestRate >= 0 then
        max = playerData.interestRate
    end
    if playerData ~= nil and playerData.addInterestMax > 0 then
        max = max + playerData.addInterestMax
    end
    return max
end
function GameUtils.getFarmerGatherNum(self, playerId)
    local playerData = datas.players[playerId]:getSingle(PlayerData)
    local bigBlessData = datas.global:getSingle(BigBlessData)
    local ____opt_4 = bigBlessData and bigBlessData.bigBless
    if (____opt_4 and ____opt_4.id) == 3 then
        return (playerData and playerData.farmerGatherNum or 0) * 2
    else
        return playerData and playerData.farmerGatherNum or 0
    end
end
function GameUtils.getGenreRefreshPrice(self, playerId)
    local playerData = datas.players[playerId]:getSingle(PlayerData)
    local price = math.floor(defaultConfig["流派刷新消耗"] * (1 + playerData.cardRefresh) + playerData.cardRefreshValue + 0.5)
    local bigBlessData = datas.global:getSingle(BigBlessData)
    local ____opt_12 = bigBlessData and bigBlessData.bigBless
    if (____opt_12 and ____opt_12.id) == 14 then
        price = math.ceil(price * math.max(1 - bigBlessData.bigBless.a, 0))
    end
    return price
end
function GameUtils.getLevelType(self, level)
    local bigBlessData = datas.global:getSingle(BigBlessData)
    local ____opt_16 = bigBlessData and bigBlessData.bigBless
    if (____opt_16 and ____opt_16.id) == 17 then
        if level.type == 1 or level.type == 2 then
            return 4
        end
    end
    return level.type
end
__TS__ObjectDefineProperty(
    GameUtils,
    "gameMode",
    {get = function(self)
        return y3.game.get_current_game_mode()
    end}
)
__TS__ObjectDefineProperty(
    GameUtils,
    "isSingleGame",
    {get = function(self)
        local playerCount = 0
        for ____, id in ipairs(playerIdList) do
            local player = y3.player.get_by_id(id)
            if player ~= nil and player:get_state() ~= RoleStatus.NONE then
                playerCount = playerCount + 1
            end
        end
        return (self.gameMode == 1001 or self.gameMode == 0) and playerCount == 1
    end}
)
__TS__ObjectDefineProperty(
    GameUtils,
    "maxBaseInterest",
    {get = function(self)
        local bigBlessData = datas.global:getSingle(BigBlessData)
        local ____opt_20 = bigBlessData and bigBlessData.bigBless
        if (____opt_20 and ____opt_20.id) == 1 then
            return 0
        end
        local ____opt_24 = bigBlessData and bigBlessData.bigBless
        if (____opt_24 and ____opt_24.id) == 2 then
            return defaultConfig["利息上限"] * 2
        end
        return defaultConfig["利息上限"]
    end}
)
return ____exports
