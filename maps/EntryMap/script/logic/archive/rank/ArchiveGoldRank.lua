local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 4,["12"] = 4,["13"] = 4,["14"] = 4,["16"] = 4,["17"] = 7,["18"] = 4,["19"] = 9,["20"] = 9,["21"] = 12,["22"] = 12,["23"] = 15,["24"] = 15,["25"] = 18,["26"] = 18,["27"] = 21,["30"] = 21,["31"] = 24,["32"] = 24,["33"] = 27,["34"] = 27,["35"] = 31,["36"] = 32,["37"] = 33,["39"] = 31,["40"] = 37,["41"] = 38,["42"] = 37});
local ____exports = {}
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseRank = ____ArchiveBase.ArchiveBaseRank
____exports.ArchiveGoldRank = __TS__Class()
local ArchiveGoldRank = ____exports.ArchiveGoldRank
ArchiveGoldRank.name = "ArchiveGoldRank"
__TS__ClassExtends(ArchiveGoldRank, ArchiveBaseRank)
function ArchiveGoldRank.prototype.____constructor(self, ...)
    ArchiveBaseRank.prototype.____constructor(self, ...)
    self.slot = 57
end
function ArchiveGoldRank.prototype.init(self)
end
function ArchiveGoldRank.prototype.startGame(self)
end
function ArchiveGoldRank.prototype.escape(self)
end
function ArchiveGoldRank.prototype.afterEndGame(self)
end
function ArchiveGoldRank.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
    end)
end
function ArchiveGoldRank.prototype.endGame(self)
end
function ArchiveGoldRank.prototype.clear(self)
end
function ArchiveGoldRank.prototype.setRank(self, gold)
    if gold >= self.data then
        self.data = math.floor(gold)
    end
end
function ArchiveGoldRank.prototype.get(self)
    return self.data
end
return ____exports
