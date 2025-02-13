local ____lualib = include("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 2,["6"] = 6,["7"] = 6,["8"] = 10,["9"] = 10,["10"] = 14,["11"] = 14,["12"] = 18,["13"] = 18,["14"] = 23,["15"] = 23,["17"] = 29,["18"] = 31,["19"] = 31,["20"] = 35,["21"] = 35,["22"] = 39,["23"] = 39,["24"] = 43,["25"] = 43,["26"] = 47,["27"] = 47,["28"] = 51,["29"] = 51});
local ____exports = {}
____exports.RoleStatus = RoleStatus or ({})
____exports.RoleStatus.PLAYING = 1
____exports.RoleStatus[____exports.RoleStatus.PLAYING] = "PLAYING"
____exports.RoleStatus.NONE = 2
____exports.RoleStatus[____exports.RoleStatus.NONE] = "NONE"
____exports.RoleStatus.LOST = 3
____exports.RoleStatus[____exports.RoleStatus.LOST] = "LOST"
____exports.RoleStatus.LEFT = 4
____exports.RoleStatus[____exports.RoleStatus.LEFT] = "LEFT"
____exports.RoleStatus.WATCHING = 5
____exports.RoleStatus[____exports.RoleStatus.WATCHING] = "WATCHING"
--- 玩家控制者类型
____exports.RoleType = RoleType or ({})
____exports.RoleType.NONE = 0
____exports.RoleType[____exports.RoleType.NONE] = "NONE"
____exports.RoleType.USER = 1
____exports.RoleType[____exports.RoleType.USER] = "USER"
____exports.RoleType.COMPUTER = 2
____exports.RoleType[____exports.RoleType.COMPUTER] = "COMPUTER"
____exports.RoleType.AI_EASY = 5
____exports.RoleType[____exports.RoleType.AI_EASY] = "AI_EASY"
____exports.RoleType.AI_HARD = 6
____exports.RoleType[____exports.RoleType.AI_HARD] = "AI_HARD"
____exports.RoleType.OBSERVER = 10
____exports.RoleType[____exports.RoleType.OBSERVER] = "OBSERVER"
return ____exports
