local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 3,["9"] = 3,["10"] = 3,["12"] = 3,["13"] = 37});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
____exports.UnitController = __TS__Class()
local UnitController = ____exports.UnitController
UnitController.name = "UnitController"
function UnitController.prototype.____constructor(self)
end
____exports.unitController = make(nil, ____exports.UnitController)
return ____exports
