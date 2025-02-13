local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 4,["6"] = 4,["7"] = 32,["8"] = 32,["9"] = 32,["10"] = 37,["11"] = 38,["12"] = 38,["13"] = 38,["14"] = 38,["15"] = 38,["16"] = 38,["17"] = 38,["18"] = 38,["19"] = 32,["20"] = 32});
local ____exports = {}
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
____exports.BlessData = {
    name = "BlessData",
    indexKeys = {},
    make = function(self)
        return S({
            have = S({}),
            pool = S({}),
            level = 0,
            temp = {},
            refreshCount = {0, 0, 0},
            refreshMaxCount = {1, 1, 1}
        })
    end
}
return ____exports
