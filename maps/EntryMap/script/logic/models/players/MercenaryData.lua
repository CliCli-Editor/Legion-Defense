local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 3,["6"] = 3,["7"] = 18,["8"] = 18,["9"] = 18,["10"] = 23,["11"] = 24,["12"] = 24,["13"] = 24,["14"] = 24,["15"] = 24,["16"] = 24,["17"] = 24,["18"] = 18,["19"] = 18});
local ____exports = {}
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
____exports.MercenaryData = {
    name = "MercenaryData",
    indexKeys = {},
    make = function(self)
        return S({
            playerId = 0,
            refreshCount = 0,
            list1 = {},
            list2 = {},
            list3 = {}
        })
    end
}
return ____exports
