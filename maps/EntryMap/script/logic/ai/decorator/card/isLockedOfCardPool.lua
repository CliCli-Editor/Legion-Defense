local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 4,["11"] = 4,["13"] = 10,["14"] = 11,["15"] = 11,["16"] = 11,["17"] = 12,["18"] = 13,["19"] = 14,["20"] = 15,["21"] = 11,["22"] = 11,["23"] = 11,["24"] = 11,["25"] = 11,["26"] = 11,["27"] = 10});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____505C_6B62_89C4_5219 = ____BehaveTree["停止规则"]
local _____6761_4EF6 = ____BehaveTree["条件"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____PlayerGenreData = include("logic.models.PlayerGenreData")
local PlayerGenreData = ____PlayerGenreData.PlayerGenreData
--- 判断卡池是否已锁定
function ____exports.isLockedOfCardPool(self, decoratee)
    return _____6761_4EF6(
        nil,
        function()
            local player = datas.players[self.playerId]
            local playerGenreData = player:getSingle(PlayerGenreData)
            self:log(function() return ("卡池锁定状态为'" .. tostring(playerGenreData.isLocked)) .. "'" end)
            return playerGenreData.isLocked
        end,
        _____505C_6B62_89C4_5219["自己"],
        nil,
        nil,
        decoratee
    )
end
return ____exports
