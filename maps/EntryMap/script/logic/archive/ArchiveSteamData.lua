local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 6,["13"] = 6,["14"] = 6,["15"] = 6,["17"] = 6,["18"] = 7,["19"] = 8,["20"] = 6,["21"] = 9,["22"] = 10,["23"] = 10,["24"] = 10,["25"] = 10,["26"] = 10,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 9,["32"] = 24,["33"] = 24,["34"] = 28,["35"] = 28,["36"] = 32,["37"] = 32,["38"] = 35,["39"] = 35,["40"] = 38,["41"] = 38,["42"] = 41,["43"] = 41,["44"] = 44,["47"] = 44,["52"] = 21});
local ____exports = {}
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseProto = ____ArchiveBase.ArchiveBaseProto
____exports.ArchiveSteamData = __TS__Class()
local ArchiveSteamData = ____exports.ArchiveSteamData
ArchiveSteamData.name = "ArchiveSteamData"
__TS__ClassExtends(ArchiveSteamData, ArchiveBaseProto)
function ArchiveSteamData.prototype.____constructor(self, ...)
    ArchiveBaseProto.prototype.____constructor(self, ...)
    self.name = "ArchiveSteamData"
    self.slot = 12
end
function ArchiveSteamData.prototype.default(self)
    return {
        version = 1,
        silverChestKey = 0,
        goldChestKey = 0,
        point = 0,
        boxBought = {},
        ssr = 0,
        sr = 0
    }
end
function ArchiveSteamData.prototype.startGame(self)
end
function ArchiveSteamData.prototype.start(self)
end
function ArchiveSteamData.prototype.endGame(self)
end
function ArchiveSteamData.prototype.escape(self)
end
function ArchiveSteamData.prototype.init(self)
end
function ArchiveSteamData.prototype.afterEndGame(self)
end
function ArchiveSteamData.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
    end)
end
__TS__SetDescriptor(
    ArchiveSteamData.prototype,
    "archive",
    {get = function(self)
        return include("logic.archive.Archive").archive
    end},
    true
)
return ____exports
