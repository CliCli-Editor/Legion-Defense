local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 3,["10"] = 3,["11"] = 3,["12"] = 3,["14"] = 3,["15"] = 4,["16"] = 3,["17"] = 12,["18"] = 12});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
____exports.DFrameChasing = __TS__Class()
local DFrameChasing = ____exports.DFrameChasing
DFrameChasing.name = "DFrameChasing"
__TS__ClassExtends(DFrameChasing, Dialog)
function DFrameChasing.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {params = {}}
end
function DFrameChasing.prototype.onCreate(self)
end
return ____exports
