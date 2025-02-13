local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 2,["6"] = 7,["7"] = 7,["8"] = 12,["9"] = 12,["10"] = 16,["11"] = 16,["12"] = 21,["13"] = 21,["14"] = 25,["15"] = 25});
local ____exports = {}
____exports.UnitOrder = UnitOrder or ({})
____exports.UnitOrder.NONE = 0
____exports.UnitOrder[____exports.UnitOrder.NONE] = "NONE"
____exports.UnitOrder.BUILDING = 1
____exports.UnitOrder[____exports.UnitOrder.BUILDING] = "BUILDING"
____exports.UnitOrder.MONSTER = 10
____exports.UnitOrder[____exports.UnitOrder.MONSTER] = "MONSTER"
____exports.UnitOrder.ELITE = 100
____exports.UnitOrder[____exports.UnitOrder.ELITE] = "ELITE"
____exports.UnitOrder.HERO = 1000
____exports.UnitOrder[____exports.UnitOrder.HERO] = "HERO"
return ____exports
