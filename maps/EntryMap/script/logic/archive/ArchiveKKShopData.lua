local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__ArrayIndexOf = ____lualib.__TS__ArrayIndexOf
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["12"] = 1,["13"] = 1,["14"] = 11,["15"] = 11,["16"] = 11,["17"] = 11,["19"] = 11,["20"] = 12,["21"] = 13,["22"] = 11,["23"] = 14,["24"] = 15,["25"] = 14,["26"] = 24,["27"] = 25,["28"] = 24,["29"] = 28,["30"] = 28,["31"] = 32,["32"] = 32,["33"] = 35,["34"] = 35,["35"] = 38,["36"] = 38,["37"] = 41,["38"] = 41,["39"] = 44,["42"] = 44,["43"] = 47,["44"] = 48,["45"] = 47,["46"] = 51,["47"] = 52,["50"] = 55,["51"] = 55,["52"] = 51,["53"] = 58,["54"] = 59,["55"] = 60,["56"] = 61,["58"] = 58,["63"] = 21});
local ____exports = {}
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseProto = ____ArchiveBase.ArchiveBaseProto
____exports.ArchiveKKShopData = __TS__Class()
local ArchiveKKShopData = ____exports.ArchiveKKShopData
ArchiveKKShopData.name = "ArchiveKKShopData"
__TS__ClassExtends(ArchiveKKShopData, ArchiveBaseProto)
function ArchiveKKShopData.prototype.____constructor(self, ...)
    ArchiveBaseProto.prototype.____constructor(self, ...)
    self.name = "ArchiveKKShopData"
    self.slot = 11
end
function ArchiveKKShopData.prototype.default(self)
    return {version = 1, bought = {}}
end
function ArchiveKKShopData.prototype.startGame(self)
    local ____ = self.data
end
function ArchiveKKShopData.prototype.start(self)
end
function ArchiveKKShopData.prototype.endGame(self)
end
function ArchiveKKShopData.prototype.escape(self)
end
function ArchiveKKShopData.prototype.init(self)
end
function ArchiveKKShopData.prototype.afterEndGame(self)
end
function ArchiveKKShopData.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
    end)
end
function ArchiveKKShopData.prototype.has(self, id)
    return __TS__ArrayIndexOf(self.data.bought, id) ~= -1
end
function ArchiveKKShopData.prototype.add(self, id)
    if self:has(id) then
        return
    end
    local ____self_data_bought_0 = self.data.bought
    ____self_data_bought_0[#____self_data_bought_0 + 1] = id
end
function ArchiveKKShopData.prototype.remove(self, id)
    local index = __TS__ArrayIndexOf(self.data.bought, id)
    if index ~= -1 then
        __TS__ArraySplice(self.data.bought, index, 1)
    end
end
__TS__SetDescriptor(
    ArchiveKKShopData.prototype,
    "archive",
    {get = function(self)
        return include("logic.archive.Archive").archive
    end},
    true
)
return ____exports
