local ____lualib = include("lualib_bundle")
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["14"] = 9,["15"] = 10,["16"] = 10,["17"] = 10,["18"] = 11,["19"] = 12,["20"] = 13,["22"] = 15,["23"] = 15,["24"] = 15,["25"] = 15,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 9});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____505C_6B62_89C4_5219 = ____BehaveTree["停止规则"]
local _____6761_4EF6 = ____BehaveTree["条件"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____PlayerData = include("logic.models.PlayerData")
local PlayerData = ____PlayerData.PlayerData
--- 当前可选祝福列表中，是否有某个祝福ID
function ____exports.hasBless(self, id, decoratee)
    return _____6761_4EF6(
        nil,
        function()
            local player = datas.players[self.playerId]:getSingle(PlayerData)
            if player.canSelBless == nil then
                return false
            end
            return __TS__ArrayFind(
                player.canSelBless,
                function(____, a) return a.id == id end
            ) ~= nil
        end,
        _____505C_6B62_89C4_5219["自己"],
        nil,
        nil,
        decoratee
    )
end
return ____exports
