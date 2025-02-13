local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 45,["6"] = 45,["7"] = 45,["8"] = 49,["9"] = 50,["10"] = 45,["11"] = 45});
local ____exports = {}
____exports.LevelData = {
    name = "LevelData",
    indexKeys = {},
    make = function(self)
        return {id = -1, levels = {}}
    end
}
return ____exports
