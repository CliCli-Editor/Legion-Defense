local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 2,["6"] = 2,["7"] = 27,["8"] = 27,["9"] = 27,["10"] = 31,["11"] = 32,["12"] = 32,["13"] = 32,["14"] = 32,["15"] = 32,["16"] = 32,["17"] = 32,["18"] = 32,["19"] = 32,["20"] = 27,["21"] = 27});
local ____exports = {}
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
____exports.PlayerInHookData = {
    name = "PlayerInHookData",
    indexKeys = {},
    make = function(self)
        return S({
            level = 1,
            card_count = 0,
            mercenary_count = 0,
            idle_count = 0,
            report_count = 0,
            cancel_count = 0,
            inHook = false
        })
    end
}
return ____exports
