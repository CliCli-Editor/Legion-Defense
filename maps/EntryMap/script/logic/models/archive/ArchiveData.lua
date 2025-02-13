local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 3,["6"] = 3,["7"] = 56,["8"] = 56,["9"] = 56,["10"] = 61,["11"] = 62,["12"] = 62,["13"] = 62,["14"] = 62,["15"] = 62,["16"] = 62,["17"] = 62,["18"] = 62,["19"] = 62,["20"] = 62,["21"] = 62,["22"] = 62,["23"] = 62,["24"] = 56,["25"] = 56});
local ____exports = {}
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
____exports.InGameArchiveData = {
    name = "ArchiveData",
    indexKeys = {},
    make = function(self)
        return S({
            playerInfo = nil,
            statInfo = nil,
            shopInfo = nil,
            petInfo = nil,
            mercenaryInfo = nil,
            achieveInfo = nil,
            vipInfo = nil,
            reward_gold = 0,
            reward_exp = 0,
            reward_diamond = 0,
            rewards = {}
        })
    end
}
return ____exports
