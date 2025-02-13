local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 5,["20"] = 5,["21"] = 6,["22"] = 5,["23"] = 14,["24"] = 15,["25"] = 14,["26"] = 18,["27"] = 19,["28"] = 19,["29"] = 19,["31"] = 20,["33"] = 19,["34"] = 19,["35"] = 18,["36"] = 25,["37"] = 25});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____LocalPlayer = include("framework.utils.LocalPlayer")
local LOCAL = ____LocalPlayer.LOCAL
local ____PlayerController = include("logic.controllers.PlayerController")
local playerController = ____PlayerController.playerController
____exports.DReleaseHookView = __TS__Class()
local DReleaseHookView = ____exports.DReleaseHookView
DReleaseHookView.name = "DReleaseHookView"
__TS__ClassExtends(DReleaseHookView, Dialog)
function DReleaseHookView.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DReleaseHookView.prototype.onCreate(self)
    self:initView()
end
function DReleaseHookView.prototype.initView(self)
    self:bindClick(
        "root",
        function()
            return __TS__AsyncAwaiter(function(____awaiter_resolve)
                playerController.onLine:execute(LOCAL.PLAYER_ID)
            end)
        end
    )
end
function DReleaseHookView.prototype.onShow(self)
end
return ____exports
