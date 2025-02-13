local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 4,["12"] = 4,["13"] = 4,["14"] = 4,["16"] = 4,["17"] = 7,["18"] = 4,["19"] = 9,["20"] = 9,["21"] = 12,["22"] = 12,["23"] = 15,["24"] = 15,["25"] = 18,["26"] = 18,["27"] = 21,["30"] = 21,["31"] = 24,["32"] = 24,["33"] = 27,["34"] = 27,["35"] = 31,["36"] = 32,["37"] = 31,["38"] = 35,["39"] = 36,["40"] = 35});
local ____exports = {}
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseRank = ____ArchiveBase.ArchiveBaseRank
____exports.ArchiveExpRankInfo = __TS__Class()
local ArchiveExpRankInfo = ____exports.ArchiveExpRankInfo
ArchiveExpRankInfo.name = "ArchiveExpRankInfo"
__TS__ClassExtends(ArchiveExpRankInfo, ArchiveBaseRank)
function ArchiveExpRankInfo.prototype.____constructor(self, ...)
    ArchiveBaseRank.prototype.____constructor(self, ...)
    self.slot = 51
end
function ArchiveExpRankInfo.prototype.init(self)
end
function ArchiveExpRankInfo.prototype.startGame(self)
end
function ArchiveExpRankInfo.prototype.escape(self)
end
function ArchiveExpRankInfo.prototype.afterEndGame(self)
end
function ArchiveExpRankInfo.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
    end)
end
function ArchiveExpRankInfo.prototype.endGame(self)
end
function ArchiveExpRankInfo.prototype.clear(self)
end
function ArchiveExpRankInfo.prototype.setRank(self, exp)
    self.data = math.floor(exp)
end
function ArchiveExpRankInfo.prototype.get(self)
    return self.data
end
return ____exports
