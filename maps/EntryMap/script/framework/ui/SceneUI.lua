local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 2,["9"] = 2,["10"] = 4,["11"] = 4,["12"] = 5,["13"] = 5,["14"] = 7,["15"] = 8,["16"] = 9,["17"] = 10,["18"] = 13,["19"] = 13,["20"] = 13,["21"] = 13,["23"] = 13,["24"] = 17,["25"] = 19,["26"] = 40,["27"] = 45,["28"] = 50,["29"] = 55,["30"] = 58,["31"] = 60,["32"] = 65,["33"] = 66,["34"] = 67,["35"] = 67,["37"] = 68,["38"] = 68,["39"] = 68,["40"] = 69,["41"] = 68,["42"] = 68,["43"] = 65,["44"] = 88,["47"] = 93,["48"] = 93,["49"] = 93,["50"] = 93,["51"] = 94,["54"] = 90,["55"] = 90,["57"] = 91,["63"] = 89,["66"] = 88,["67"] = 98,["70"] = 103,["71"] = 103,["72"] = 103,["73"] = 103,["74"] = 104,["77"] = 100,["78"] = 100,["80"] = 101,["86"] = 99,["89"] = 98,["90"] = 112,["93"] = 121,["96"] = 114,["97"] = 115,["98"] = 115,["100"] = 116,["101"] = 117,["102"] = 118,["103"] = 119,["109"] = 112,["110"] = 125,["111"] = 126,["112"] = 125,["113"] = 137,["114"] = 137,["115"] = 15,["116"] = 15,["122"] = 130,["124"] = 133,["125"] = 134});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local DialogStatus = ____Dialog.DialogStatus
local ____SceneUIManager = include("framework.ui.SceneUIManager")
local sceneUIManager = ____SceneUIManager.sceneUIManager
local ____UIBinder = include("framework.ui.UIBinder")
local UIBinder = ____UIBinder.UIBinder
local syncWatch = {immediate = false, flush = "sync"}
local preWatch = {immediate = false, flush = "pre"}
local syncImmediateWatch = {immediate = true, flush = "sync"}
local preImmediateWatch = {immediate = true, flush = "pre"}
____exports.SceneUI = __TS__Class()
local SceneUI = ____exports.SceneUI
SceneUI.name = "SceneUI"
__TS__ClassExtends(SceneUI, UIBinder)
function SceneUI.prototype.____constructor(self)
    UIBinder.prototype.____constructor(self)
    self.id = ""
    self._status = vue.ref(DialogStatus.None)
    self.name = ""
    self.playerId = 0
    self.unitId = 0
    self.source_id = ""
    self.ui = nil
end
function SceneUI.prototype.init(self)
    local unit = y3.unit.get_by_id(self.unitId)
    if not unit then
        error("scene ui 初始化失败了！！！", 0)
    end
    unit:event(
        "单位-移除",
        function()
            self:onDisable()
        end
    )
end
function SceneUI.prototype.getUI(self, path)
    do
        local function ____catch(____error)
            console:error(
                "找不到对应的scene ui 组件，检查路径 " .. tostring(path),
                ____error
            )
            return true, nil
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            if self.ui == nil then
                return true, nil
            end
            return true, self.ui:get_ui_comp_in_scene_ui(y3.player.LOCAL_PLAYER, path)
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
end
function SceneUI.prototype.getUINoError(self, path)
    do
        local function ____catch(____error)
            console:log(
                "找不到对应的scene ui 组件，检查路径 " .. tostring(path),
                ____error
            )
            return true, nil
        end
        local ____try, ____hasReturned, ____returnValue = pcall(function()
            if self.ui == nil then
                return true, nil
            end
            return true, self.ui:get_ui_comp_in_scene_ui(y3.player.LOCAL_PLAYER, path)
        end)
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
        if ____hasReturned then
            return ____returnValue
        end
    end
end
function SceneUI.prototype.hide(self)
    do
        local function ____catch(____error)
            console:error(____error)
        end
        local ____try, ____hasReturned = pcall(function()
            sceneUIManager:hide(self)
            if self.ui ~= nil then
                self.ui:remove_scene_ui()
            end
            self.playerId = nil
            self.source_id = nil
            self.ui = nil
            self:onDisable()
        end)
        if not ____try then
            ____catch(____hasReturned)
        end
    end
end
function SceneUI.prototype.onDisable(self)
    self:clearWatcher()
end
function SceneUI.prototype.setActive(self, v)
end
SceneUI.hideByName = function(____, name)
end
__TS__SetDescriptor(
    SceneUI.prototype,
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
