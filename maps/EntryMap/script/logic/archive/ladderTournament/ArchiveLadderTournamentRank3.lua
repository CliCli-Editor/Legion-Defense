local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 4,["12"] = 4,["13"] = 4,["14"] = 4,["16"] = 4,["17"] = 7,["18"] = 4,["19"] = 9,["20"] = 9,["21"] = 12,["22"] = 12,["23"] = 15,["24"] = 15,["25"] = 18,["28"] = 18,["29"] = 21,["30"] = 21,["31"] = 24,["32"] = 24,["33"] = 27,["34"] = 27,["35"] = 31,["36"] = 32,["37"] = 33,["39"] = 35,["40"] = 31,["41"] = 38,["42"] = 39,["43"] = 38});
local ____exports = {}
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseRank = ____ArchiveBase.ArchiveBaseRank
____exports.ArchiveLadderTournamentRank3 = __TS__Class()
local ArchiveLadderTournamentRank3 = ____exports.ArchiveLadderTournamentRank3
ArchiveLadderTournamentRank3.name = "ArchiveLadderTournamentRank3"
__TS__ClassExtends(ArchiveLadderTournamentRank3, ArchiveBaseRank)
function ArchiveLadderTournamentRank3.prototype.____constructor(self, ...)
    ArchiveBaseRank.prototype.____constructor(self, ...)
    self.slot = 61
end
function ArchiveLadderTournamentRank3.prototype.init(self)
end
function ArchiveLadderTournamentRank3.prototype.startGame(self)
end
function ArchiveLadderTournamentRank3.prototype.escape(self)
end
function ArchiveLadderTournamentRank3.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
    end)
end
function ArchiveLadderTournamentRank3.prototype.afterEndGame(self)
end
function ArchiveLadderTournamentRank3.prototype.endGame(self)
end
function ArchiveLadderTournamentRank3.prototype.clear(self)
end
function ArchiveLadderTournamentRank3.prototype.setRank(self, score)
    if score < 0 then
        score = 0
    end
    self.data = score
end
function ArchiveLadderTournamentRank3.prototype.get(self)
    return self.data
end
return ____exports
