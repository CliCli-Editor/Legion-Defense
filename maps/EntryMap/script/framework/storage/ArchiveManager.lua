local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 5,["10"] = 5,["11"] = 5,["13"] = 7,["14"] = 5,["15"] = 10,["16"] = 11,["19"] = 14,["20"] = 15,["21"] = 15,["22"] = 16,["23"] = 18,["24"] = 19,["26"] = 21,["28"] = 10,["29"] = 27});
local ____exports = {}
local ____Proto = include("framework.storage.Proto")
local pb = ____Proto.pb
____exports.ArchiveManager = __TS__Class()
local ArchiveManager = ____exports.ArchiveManager
ArchiveManager.name = "ArchiveManager"
function ArchiveManager.prototype.____constructor(self)
    self.isInit = false
end
function ArchiveManager.prototype.init(self)
    if self.isInit then
        return
    end
    self.isInit = true
    local result
    local err_message
    result = y3.pb.load(pb)
    if not result then
        console:error("protobuff初始化失败!!!!!!", err_message)
    else
        console:log("存档加载成功")
    end
end
____exports.archiveManager = __TS__New(____exports.ArchiveManager)
return ____exports
