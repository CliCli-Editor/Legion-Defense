local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 2,["6"] = 2,["7"] = 33,["8"] = 33,["9"] = 33,["10"] = 38,["11"] = 39,["12"] = 39,["13"] = 39,["14"] = 39,["15"] = 39,["16"] = 39,["17"] = 39,["18"] = 33,["19"] = 33});
local ____exports = {}
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
____exports.DebugData = {
    name = "DebugData",
    indexKeys = {},
    make = function(self)
        return S({
            kof_enable = false,
            control_hero_enable = false,
            ai_enable = "none",
            res_enable = false,
            show_all_player = false
        })
    end
}
return ____exports
