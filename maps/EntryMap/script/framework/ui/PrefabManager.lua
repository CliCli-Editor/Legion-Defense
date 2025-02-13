local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 1,["7"] = 1,["8"] = 2,["9"] = 2,["10"] = 7,["11"] = 7,["12"] = 7,["14"] = 7,["15"] = 15,["16"] = 16,["17"] = 15,["18"] = 18,["19"] = 19,["20"] = 18});
local ____exports = {}
local ____UIController = include("logic.controllers.UIController")
local uiController = ____UIController.uiController
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
____exports.PrefabManager = __TS__Class()
local PrefabManager = ____exports.PrefabManager
PrefabManager.name = "PrefabManager"
function PrefabManager.prototype.____constructor(self)
end
function PrefabManager.prototype.showByPath(self, rootPath, clazz, params)
    local ui = uiController:createByPath(LOCAL.PLAYER_ID, clazz.name, rootPath)
end
function PrefabManager.prototype.show(self, rootUI, clazz, params)
    local ui = uiController:createByUI(LOCAL.PLAYER_ID, clazz.name, rootUI)
end
return ____exports
