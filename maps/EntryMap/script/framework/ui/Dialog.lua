local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__New = ____lualib.__TS__New
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 5,["14"] = 10,["15"] = 10,["16"] = 14,["17"] = 14,["18"] = 18,["19"] = 18,["20"] = 22,["21"] = 22,["22"] = 25,["23"] = 25,["24"] = 25,["25"] = 25,["27"] = 25,["28"] = 29,["29"] = 31,["30"] = 33,["31"] = 52,["32"] = 54,["33"] = 66,["34"] = 67,["35"] = 76,["36"] = 125,["37"] = 126,["38"] = 125,["39"] = 133,["40"] = 134,["41"] = 135,["42"] = 133,["43"] = 142,["44"] = 143,["45"] = 142,["46"] = 154,["47"] = 155,["48"] = 154,["49"] = 27,["50"] = 27,["55"] = 61,["63"] = 70,["64"] = 71,["66"] = 73,["74"] = 139,["83"] = 147,["85"] = 150,["86"] = 151});
local ____exports = {}
local ____EventTarget = include("framework.ui.EventTarget")
local EventTarget = ____EventTarget.EventTarget
local ____UIBinder = include("framework.ui.UIBinder")
local UIBinder = ____UIBinder.UIBinder
____exports.DialogStatus = DialogStatus or ({})
____exports.DialogStatus.None = 0
____exports.DialogStatus[____exports.DialogStatus.None] = "None"
____exports.DialogStatus.Showing = 1
____exports.DialogStatus[____exports.DialogStatus.Showing] = "Showing"
____exports.DialogStatus.Showed = 2
____exports.DialogStatus[____exports.DialogStatus.Showed] = "Showed"
____exports.DialogStatus.Hiding = 3
____exports.DialogStatus[____exports.DialogStatus.Hiding] = "Hiding"
____exports.Dialog = __TS__Class()
local Dialog = ____exports.Dialog
Dialog.name = "Dialog"
__TS__ClassExtends(Dialog, UIBinder)
function Dialog.prototype.____constructor(self)
    UIBinder.prototype.____constructor(self)
    self._status = vue.ref(____exports.DialogStatus.None)
    self.event = __TS__New(EventTarget)
    self.isHover = false
    self.isFullScene = false
    self._visible = true
    self.name = ""
    self._ui = nil
end
function Dialog.prototype.hide(self)
    ____exports.Dialog:hideByName(self.name)
end
function Dialog.prototype.exit(self, returnData)
    self.data.returnData = returnData
    self:hide()
end
function Dialog.prototype.onDisable(self)
    self:clearWatcher()
end
function Dialog.prototype.setActive(self, v)
    self.ui:set_visible(v)
end
Dialog.hideByName = function(____, name)
end
__TS__SetDescriptor(
    Dialog.prototype,
    "visible",
    {get = function(self)
        return self._visible
    end},
    true
)
__TS__SetDescriptor(
    Dialog.prototype,
    "ui",
    {get = function(self)
        if self._ui == nil then
            self._ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER, self.name)
        end
        return self._ui
    end},
    true
)
__TS__SetDescriptor(
    Dialog.prototype,
    "isFullSceneLogic",
    {get = function(self)
        return self.isFullScene
    end},
    true
)
__TS__SetDescriptor(
    Dialog.prototype,
    "status",
    {
        get = function(self)
            return self._status.value
        end,
        set = function(self, v)
            self._status.value = v
        end
    },
    true
)
return ____exports
