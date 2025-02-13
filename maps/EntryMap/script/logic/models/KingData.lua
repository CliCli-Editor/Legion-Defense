local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 2,["6"] = 2,["7"] = 64,["8"] = 64,["9"] = 64,["10"] = 69,["11"] = 70,["12"] = 70,["13"] = 70,["14"] = 70,["15"] = 70,["16"] = 70,["17"] = 70,["18"] = 70,["19"] = 70,["20"] = 70,["21"] = 70,["22"] = 70,["23"] = 70,["24"] = 64,["25"] = 64});
local ____exports = {}
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
____exports.KingData = {
    name = "KingData",
    indexKeys = {},
    make = function(self)
        return S({
            currentUnit = 0,
            viewUnit = nil,
            gold = 0,
            aliveList = {},
            deathList = {},
            enemys = {},
            effect = {},
            grids = {},
            grid_x_count = 0,
            grid_y_count = 0,
            needNextKing = false
        })
    end
}
return ____exports
