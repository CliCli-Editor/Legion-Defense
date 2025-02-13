local ____lualib = include("lualib_bundle")
local __TS__ArrayFind = ____lualib.__TS__ArrayFind
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 4,["12"] = 4,["14"] = 11,["15"] = 22,["16"] = 22,["17"] = 22,["18"] = 24,["19"] = 26,["20"] = 27,["21"] = 27,["22"] = 27,["23"] = 27,["24"] = 28,["26"] = 33,["27"] = 22,["28"] = 22,["29"] = 22,["30"] = 22,["31"] = 22,["32"] = 22,["33"] = 11});
local ____exports = {}
local ____BehaveTree = include("framework.ai.BehaveTree")
local _____505C_6B62_89C4_5219 = ____BehaveTree["停止规则"]
local _____6761_4EF6 = ____BehaveTree["条件"]
local ____DataManager = include("framework.data.DataManager")
local datas = ____DataManager.datas
local ____AuctionData = include("logic.models.AuctionData")
local AuctionData = ____AuctionData.AuctionData
--- 判断当前是否有某个暗拍装备
function ____exports.hasAuction(self, params, decoratee)
    return _____6761_4EF6(
        nil,
        function()
            local auctionData = datas.global:getSingle(AuctionData)
            if params.id ~= nil then
                return __TS__ArrayFind(
                    auctionData.equips,
                    function(____, a) return a.cfgId == params.id end
                ) ~= nil
            elseif params.genreId ~= nil then
            end
            return false
        end,
        _____505C_6B62_89C4_5219["自己"],
        nil,
        nil,
        decoratee
    )
end
return ____exports
