local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 5,["20"] = 5,["21"] = 7,["22"] = 5,["23"] = 8,["24"] = 8,["25"] = 10,["26"] = 10,["27"] = 12,["28"] = 12,["29"] = 14,["30"] = 14,["31"] = 17,["34"] = 17,["35"] = 20,["36"] = 21,["37"] = 20,["38"] = 23,["39"] = 23,["40"] = 30,["41"] = 31,["42"] = 30});
local ____exports = {}
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseInt = ____ArchiveBase.ArchiveBaseInt
local ____Saver = include("framework.storage.Saver")
local Saver = ____Saver.Saver
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
____exports.ArchiveCheatCount = __TS__Class()
local ArchiveCheatCount = ____exports.ArchiveCheatCount
ArchiveCheatCount.name = "ArchiveCheatCount"
__TS__ClassExtends(ArchiveCheatCount, ArchiveBaseInt)
function ArchiveCheatCount.prototype.____constructor(self, ...)
    ArchiveBaseInt.prototype.____constructor(self, ...)
    self.slot = 5
end
function ArchiveCheatCount.prototype.startGame(self)
end
function ArchiveCheatCount.prototype.escape(self)
end
function ArchiveCheatCount.prototype.endGame(self)
end
function ArchiveCheatCount.prototype.afterEndGame(self)
end
function ArchiveCheatCount.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
    end)
end
function ArchiveCheatCount.prototype.clear(self)
    Saver:save_number(LOCAL.PLAYER, self.slot, 0)
end
function ArchiveCheatCount.prototype.init(self)
end
function ArchiveCheatCount.prototype.increase(self)
    self.data = self.data + 1
end
return ____exports
