local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 2,["6"] = 2,["7"] = 57,["8"] = 57,["9"] = 57,["10"] = 61,["11"] = 62,["12"] = 62,["13"] = 62,["14"] = 62,["15"] = 62,["16"] = 62,["17"] = 62,["18"] = 62,["19"] = 62,["20"] = 62,["21"] = 62,["22"] = 62,["23"] = 57,["24"] = 57});
local ____exports = {}
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
____exports.GameStatisticsData = {
    name = "GameStatisticsData",
    indexKeys = {},
    make = function(self)
        return S({
            endLevel = 0,
            gameTime = 0,
            KillTower1LevelLeft = 0,
            KillTower2LevelLeft = 0,
            KillTower3LevelLeft = 0,
            KillTower1LevelRight = 0,
            KillTower2LevelRight = 0,
            KillTower3LevelRight = 0,
            match_score = 0,
            match_limit = true
        })
    end
}
return ____exports
