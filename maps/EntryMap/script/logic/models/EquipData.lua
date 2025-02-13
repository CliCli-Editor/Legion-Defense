local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 23,["6"] = 23,["7"] = 23,["8"] = 28,["9"] = 29,["10"] = 23,["11"] = 23});
local ____exports = {}
____exports.EquipData = {
    name = "EquipData",
    indexKeys = {{single = true, key = "configId"}},
    make = function(self)
        return {playerId = nil, configId = 0, effectList = {}}
    end
}
return ____exports
