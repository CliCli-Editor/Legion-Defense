local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 3,["14"] = 9,["15"] = 12,["16"] = 12,["17"] = 12,["18"] = 13,["19"] = 14,["20"] = 15,["21"] = 16,["22"] = 17,["24"] = 19,["25"] = 20,["27"] = 12,["28"] = 12,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["33"] = 9});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____505C_6B62_89C4_5219 = ____BehaveTree["停止规则"]
local _____6761_4EF6 = ____BehaveTree["条件"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____UnitData = include("logic.models.UnitData")
local UnitData = ____UnitData.UnitData
local UnitType = ____UnitData.UnitType
--- 检查佣兵数量
function ____exports.checkMercenaryCount(self, params, decoratee)
    return _____6761_4EF6(
        nil,
        function()
            local player = datas.players[self.playerId]
            local list = player:getListByIndex(UnitData, "type", UnitType.MERCENARY)
            if #list >= params.count then
                self:log(function() return (("当前佣兵数量 " .. tostring(#list)) .. " 达成 ") .. tostring(params.count) end)
                return true
            else
                self:log(function() return (("当前佣兵数量 " .. tostring(#list)) .. " 未达成 ") .. tostring(params.count) end)
                return false
            end
        end,
        _____505C_6B62_89C4_5219["自己"],
        nil,
        nil,
        decoratee
    )
end
return ____exports
