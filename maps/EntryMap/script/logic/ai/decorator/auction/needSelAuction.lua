local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 5,["11"] = 5,["13"] = 14,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 16,["18"] = 17,["19"] = 15,["20"] = 15,["21"] = 15,["22"] = 15,["23"] = 15,["24"] = 15,["25"] = 14});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____505C_6B62_89C4_5219 = ____BehaveTree["停止规则"]
local _____6761_4EF6 = ____BehaveTree["条件"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____AuctionData = include("logic.models.AuctionData")
local AuctionData = ____AuctionData.AuctionData
--- 需要选择暗拍
function ____exports.needSelAuction(self, decoratee)
    return _____6761_4EF6(
        nil,
        function()
            local auctionData = datas.global:getSingle(AuctionData)
            return auctionData.inAuction
        end,
        _____505C_6B62_89C4_5219["自己"],
        nil,
        nil,
        decoratee
    )
end
return ____exports
