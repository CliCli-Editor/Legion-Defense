local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 64,["6"] = 65,["7"] = 65,["8"] = 66,["9"] = 66,["10"] = 67,["11"] = 67,["12"] = 70,["13"] = 71,["14"] = 71,["15"] = 72,["16"] = 72});
local ____exports = {}
____exports.PlayerState = PlayerState or ({})
____exports.PlayerState["空闲"] = 1
____exports.PlayerState[____exports.PlayerState["空闲"]] = "空闲"
____exports.PlayerState["匹配中"] = 2
____exports.PlayerState[____exports.PlayerState["匹配中"]] = "匹配中"
____exports.PlayerState["游戏中"] = 3
____exports.PlayerState[____exports.PlayerState["游戏中"]] = "游戏中"
____exports.TeamState = TeamState or ({})
____exports.TeamState["空闲"] = 1
____exports.TeamState[____exports.TeamState["空闲"]] = "空闲"
____exports.TeamState["匹配中"] = 2
____exports.TeamState[____exports.TeamState["匹配中"]] = "匹配中"
return ____exports
