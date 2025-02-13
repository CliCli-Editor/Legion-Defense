local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 6,["13"] = 6,["14"] = 6,["15"] = 6,["17"] = 6,["18"] = 7,["19"] = 8,["20"] = 6,["21"] = 9,["22"] = 10,["23"] = 9,["24"] = 17,["25"] = 17,["26"] = 20,["27"] = 20,["28"] = 22,["29"] = 22,["30"] = 24,["31"] = 24,["32"] = 27,["35"] = 27,["36"] = 30,["37"] = 30,["38"] = 34,["39"] = 35,["40"] = 35,["41"] = 34});
local ____exports = {}
local ____ArchiveBase = include("framework.storage.ArchiveBase")
local ArchiveBaseProto = ____ArchiveBase.ArchiveBaseProto
____exports.ArchiveOtherInfo = __TS__Class()
local ArchiveOtherInfo = ____exports.ArchiveOtherInfo
ArchiveOtherInfo.name = "ArchiveOtherInfo"
__TS__ClassExtends(ArchiveOtherInfo, ArchiveBaseProto)
function ArchiveOtherInfo.prototype.____constructor(self, ...)
    ArchiveBaseProto.prototype.____constructor(self, ...)
    self.name = "ArchiveOtherInfo"
    self.slot = 4
end
function ArchiveOtherInfo.prototype.default(self)
    return {version = 1, cheat_list = {}}
end
function ArchiveOtherInfo.prototype.startGame(self)
end
function ArchiveOtherInfo.prototype.endGame(self)
end
function ArchiveOtherInfo.prototype.escape(self)
end
function ArchiveOtherInfo.prototype.afterEndGame(self)
end
function ArchiveOtherInfo.prototype.sync(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
    end)
end
function ArchiveOtherInfo.prototype.init(self)
end
function ArchiveOtherInfo.prototype.addCheat(self, key, errVal, rightVal)
    local ____self_data_cheat_list_0 = self.data.cheat_list
    ____self_data_cheat_list_0[#____self_data_cheat_list_0 + 1] = (((((__TS__New(Date):toLocaleString() .. " ") .. tostring(key)) .. " from ") .. tostring(rightVal)) .. " to ") .. tostring(errVal)
end
return ____exports
