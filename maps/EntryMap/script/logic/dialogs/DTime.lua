local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 4,["16"] = 6,["17"] = 6,["18"] = 6,["19"] = 6,["21"] = 6,["22"] = 7,["23"] = 26,["24"] = 6,["25"] = 22,["26"] = 23,["27"] = 22,["28"] = 27,["29"] = 28,["30"] = 29,["31"] = 30,["33"] = 32,["34"] = 33,["35"] = 34,["36"] = 34,["37"] = 34,["38"] = 35,["39"] = 36,["40"] = 37,["41"] = 38,["42"] = 34,["43"] = 34,["44"] = 40,["45"] = 41,["46"] = 42,["48"] = 44,["49"] = 44,["50"] = 44,["51"] = 44,["52"] = 45,["53"] = 45,["54"] = 46,["55"] = 47,["56"] = 48,["57"] = 49,["58"] = 50,["60"] = 52,["62"] = 44,["63"] = 44,["65"] = 56,["67"] = 27,["68"] = 60,["69"] = 61,["70"] = 61,["71"] = 61,["72"] = 62,["73"] = 61,["74"] = 61,["75"] = 61,["76"] = 64,["77"] = 64,["78"] = 64,["79"] = 65,["80"] = 64,["81"] = 64,["82"] = 64,["83"] = 67,["84"] = 67,["85"] = 67,["86"] = 68,["87"] = 67,["88"] = 67,["89"] = 67,["90"] = 70,["91"] = 70,["92"] = 70,["93"] = 71,["94"] = 70,["95"] = 70,["96"] = 70,["97"] = 73,["98"] = 73,["99"] = 73,["100"] = 74,["101"] = 73,["102"] = 73,["103"] = 73,["104"] = 77,["105"] = 77,["106"] = 77,["107"] = 78,["108"] = 77,["109"] = 77,["110"] = 81,["111"] = 81,["112"] = 81,["113"] = 82,["114"] = 81,["115"] = 81,["116"] = 85,["117"] = 85,["118"] = 85,["119"] = 86,["120"] = 85,["121"] = 85,["122"] = 89,["123"] = 89,["124"] = 89,["125"] = 90,["126"] = 89,["127"] = 89,["128"] = 60,["129"] = 96,["130"] = 101,["131"] = 101,["132"] = 102,["135"] = 105,["136"] = 106,["137"] = 107,["138"] = 108,["141"] = 111,["142"] = 96,["143"] = 114,["144"] = 115,["145"] = 114,["146"] = 120,["147"] = 121,["148"] = 120});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____SoundManager = include("logic.managers.SoundManager")
local SoundManager = ____SoundManager.SoundManager
local SoundType = ____SoundManager.SoundType
____exports.DTime = __TS__Class()
local DTime = ____exports.DTime
DTime.name = "DTime"
__TS__ClassExtends(DTime, Dialog)
function DTime.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {params = {time = 0, ready = false}}
    self.timer = nil
end
function DTime.prototype.onCreate(self)
    self:initView()
end
function DTime.prototype.onShow(self)
    if self.timer ~= nil then
        self.timer:remove()
        self.timer = nil
    end
    if self.data.params.ready then
        SoundManager:play(SoundType["战斗阶段"])
        self.timer = y3.ltimer.wait(
            1,
            function()
                self.data.params.ready = false
                self.timer:remove()
                self.timer = nil
                self:hide()
            end
        )
    elseif self.data.params.time > 0 then
        if self.data.params.time == 3 then
            SoundManager:play(SoundType["战斗3s倒计时VC"])
        end
        self.timer = y3.ltimer.loop_count(
            1,
            self.data.params.time + 1,
            function(time, count)
                local ____self_data_params_0, ____time_1 = self.data.params, "time"
                ____self_data_params_0[____time_1] = ____self_data_params_0[____time_1] - 1
                console:log("当前事件", self.data.params.time, count)
                if self.data.params.time < 0 then
                    self:hide()
                    self.timer:remove()
                    self.timer = nil
                else
                    SoundManager:play(SoundType["倒计时SE"])
                end
            end
        )
    else
        self:hide()
    end
end
function DTime.prototype.initView(self)
    self:bindVisible(
        "center.image_3",
        function()
            return self.data.params.time == 3
        end,
        false
    )
    self:bindVisible(
        "center.image_2",
        function()
            return self.data.params.time == 2
        end,
        false
    )
    self:bindVisible(
        "center.image_1",
        function()
            return self.data.params.time == 1
        end,
        false
    )
    self:bindVisible(
        "center.image_0",
        function()
            return self.data.params.time == 0
        end,
        false
    )
    self:bindVisible(
        "center.ready",
        function()
            return self.data.params.ready
        end,
        false
    )
    self:bindVisible(
        "center.image_0.zh",
        function()
            return i18n.currentLang ~= "en"
        end
    )
    self:bindVisible(
        "center.image_0.en",
        function()
            return i18n.currentLang == "en"
        end
    )
    self:bindVisible(
        "center.ready.zh",
        function()
            return i18n.currentLang ~= "en"
        end
    )
    self:bindVisible(
        "center.ready.en",
        function()
            return i18n.currentLang == "en"
        end
    )
end
function DTime.show(self, params)
    local ____require_result_2 = include("logic.loop.GameLoop")
    local gameLoop = ____require_result_2.gameLoop
    if gameLoop.isExit then
        return
    end
    if dialogs:isShowed(____exports.DTime) then
        local dTips = dialogs:get(____exports.DTime)
        dTips.data.params = params
        dTips:onShow()
        return
    end
    dialogs:show(____exports.DTime, params)
end
function DTime.show321(self)
    self:show({time = 3, ready = false})
end
function DTime.showReady(self)
    self:show({time = -1, ready = true})
end
return ____exports
