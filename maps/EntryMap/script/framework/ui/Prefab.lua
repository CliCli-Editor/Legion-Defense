local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 4,["10"] = 4,["11"] = 4,["12"] = 4,["14"] = 4,["15"] = 24,["16"] = 4});
local ____exports = {}
local ____UIBinder = include("framework.ui.UIBinder")
local UIBinder = ____UIBinder.UIBinder
____exports.Prefab = __TS__Class()
local Prefab = ____exports.Prefab
Prefab.name = "Prefab"
__TS__ClassExtends(Prefab, UIBinder)
function Prefab.prototype.____constructor(self, ...)
    UIBinder.prototype.____constructor(self, ...)
    self.ui = nil
end
return ____exports
