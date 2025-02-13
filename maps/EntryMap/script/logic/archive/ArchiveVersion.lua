local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 5,["20"] = 5,["21"] = 24,["22"] = 5,["23"] = 6,["24"] = 6,["25"] = 8,["26"] = 8,["27"] = 10,["28"] = 10,["29"] = 12,["30"] = 12,["31"] = 15,["32"] = 15,["33"] = 18,["34"] = 19,["35"] = 18,["36"] = 21,["39"] = 21,["40"] = 26,["41"] = 28,["42"] = 29,["45"] = 34,["46"] = 26});
local ____exports = {}
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseString = ____ArchiveBase.ArchiveBaseString
local ____Saver = include("framework.storage.Saver")
local Saver = ____Saver.Saver
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
____exports.ArchiveVersion = __TS__Class()
local ArchiveVersion = ____exports.ArchiveVersion
ArchiveVersion.name = "ArchiveVersion"
__TS__ClassExtends(ArchiveVersion, ArchiveBaseString)
function ArchiveVersion.prototype.____constructor(self, ...)
    ArchiveBaseString.prototype.____constructor(self, ...)
    self.slot = 1
end
function ArchiveVersion.prototype.startGame(self)
end
function ArchiveVersion.prototype.escape(self)
end
function ArchiveVersion.prototype.endGame(self)
end
function ArchiveVersion.prototype.init(self)
end
function ArchiveVersion.prototype.afterEndGame(self)
end
function ArchiveVersion.prototype.clear(self)
    Saver:save_string(LOCAL.PLAYER, self.slot, "")
end
function ArchiveVersion.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
    end)
end
function ArchiveVersion.prototype.setVersion(self, version)
    if self.data ~= nil and self.data == "" then
        if self.data ~= version then
        end
    end
    self.data = version
end
return ____exports
