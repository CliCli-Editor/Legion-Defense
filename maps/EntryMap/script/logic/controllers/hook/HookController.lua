local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 6,["13"] = 6,["14"] = 6,["16"] = 6,["17"] = 8,["18"] = 9,["19"] = 10,["20"] = 8,["21"] = 13,["22"] = 14,["23"] = 13,["24"] = 19});
local ____exports = {}
local ____Controller = include("framework.data.Controller")
local make = ____Controller.make
local ____CameraController = include("logic.controllers.ui.CameraController")
local cameraController = ____CameraController.cameraController
local ____FowController = include("logic.controllers.ui.FowController")
local fowController = ____FowController.fowController
____exports.HookController = __TS__Class()
local HookController = ____exports.HookController
HookController.name = "HookController"
function HookController.prototype.____constructor(self)
end
function HookController.prototype.gotoHook(self, playerId)
    cameraController:hookCamera(playerId)
    fowController:hide_fog()
end
function HookController.prototype.exitHook(self, playerId)
    cameraController:defaultCamera(playerId)
end
____exports.hookController = make(nil, ____exports.HookController)
return ____exports
