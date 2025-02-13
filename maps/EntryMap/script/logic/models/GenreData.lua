local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 4,["6"] = 4,["7"] = 67,["8"] = 67,["9"] = 67,["10"] = 72,["11"] = 73,["12"] = 73,["13"] = 73,["14"] = 73,["15"] = 73,["16"] = 73,["17"] = 73,["18"] = 73,["19"] = 73,["20"] = 67,["21"] = 67});
local ____exports = {}
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local S = ____SafeTableUtils.S
____exports.GenreData = {
    name = "GenreData",
    indexKeys = {},
    make = function(self)
        return S({
            total = 0,
            enableList = {},
            disableList = {},
            skillCount = {},
            skillCountWithout = {},
            skillCountByGenre = {},
            genrePool = {}
        })
    end
}
return ____exports
