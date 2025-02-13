local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 6,["19"] = 6,["20"] = 8,["21"] = 8,["22"] = 8,["23"] = 8,["25"] = 8,["26"] = 9,["27"] = 40,["28"] = 41,["29"] = 42,["30"] = 8,["31"] = 18,["32"] = 19,["33"] = 18,["34"] = 23,["35"] = 23,["36"] = 28,["37"] = 28,["38"] = 43,["39"] = 44,["40"] = 45,["41"] = 46,["43"] = 48,["44"] = 49,["45"] = 49,["46"] = 49,["47"] = 50,["48"] = 51,["50"] = 53,["51"] = 54,["52"] = 55,["53"] = 57,["54"] = 58,["55"] = 59,["56"] = 60,["57"] = 61,["58"] = 61,["59"] = 61,["60"] = 61,["61"] = 61,["62"] = 61,["63"] = 61,["64"] = 61,["65"] = 62,["66"] = 62,["67"] = 62,["68"] = 62,["69"] = 62,["70"] = 62,["71"] = 62,["72"] = 62,["73"] = 63,["74"] = 63,["75"] = 63,["76"] = 63,["77"] = 63,["78"] = 63,["79"] = 63,["80"] = 64,["81"] = 64,["82"] = 64,["83"] = 64,["84"] = 64,["85"] = 64,["86"] = 64,["87"] = 64,["88"] = 64,["89"] = 64,["90"] = 64,["91"] = 62,["92"] = 62,["93"] = 61,["94"] = 61,["95"] = 67,["96"] = 68,["97"] = 69,["98"] = 70,["99"] = 70,["100"] = 70,["101"] = 71,["102"] = 70,["103"] = 70,["104"] = 73,["105"] = 49,["106"] = 49,["107"] = 75,["108"] = 43,["109"] = 80,["111"] = 81,["112"] = 82,["114"] = 86,["115"] = 87,["116"] = 88,["118"] = 80,["119"] = 91,["121"] = 92,["122"] = 92,["123"] = 94,["126"] = 97,["128"] = 91});
local ____exports = {}
local ____global = include("framework.global")
local global = ____global.global
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____SoundManager = include("logic.managers.SoundManager")
local SoundManager = ____SoundManager.SoundManager
local SoundType = ____SoundManager.SoundType
local ____UIEffect = include("logic.utils.UIEffect")
local UIEffect = ____UIEffect.UIEffect
____exports.DTips = __TS__Class()
local DTips = ____exports.DTips
DTips.name = "DTips"
__TS__ClassExtends(DTips, Dialog)
function DTips.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.index = 0
    self.frameIndex = 0
    self.frameCount = 0
end
function DTips.prototype.onCreate(self)
    self:initView()
end
function DTips.prototype.initView(self)
end
function DTips.prototype.onShow(self)
end
function DTips.prototype.showMessage(self, message)
    if self.frameCount ~= math.floor(global.frameCount / 10) then
        self.frameCount = math.floor(global.frameCount / 10)
        self.frameIndex = 0
    end
    local frameIndex = self.frameIndex
    y3.ltimer.wait(
        0.1 * frameIndex,
        function()
            if self.index >= 10 then
                self.index = 0
            end
            local path = "root.tip_" .. tostring(self.index + 1)
            local path2 = path .. ".content"
            local path3 = path .. ".content.tips"
            local ui = self:getUI(path2)
            local x = ui:get_relative_x()
            local time = 0.5
            local offsetY = -35 * frameIndex
            UIEffect:move(
                ui,
                x,
                0 + offsetY,
                x,
                100 + offsetY,
                time,
                function()
                    UIEffect:move(
                        ui,
                        x,
                        100 + offsetY,
                        x,
                        100 + offsetY,
                        1,
                        function()
                            UIEffect:play_opacity(
                                ui,
                                100,
                                0,
                                time,
                                false
                            )
                            UIEffect:move(
                                ui,
                                x,
                                100 + offsetY,
                                x,
                                150 + offsetY,
                                time,
                                function()
                                    ui:set_visible(false)
                                end
                            )
                        end
                    )
                end
            )
            ui:set_visible(true)
            self:getUI(path3):set_text(message)
            UIEffect:stop_opacity(ui)
            y3.ltimer.wait_frame(
                1,
                function()
                    ui:set_alpha(100)
                end
            )
            self.index = self.index + 1
        end
    )
    self.frameIndex = self.frameIndex + 1
end
function DTips.show(self, message)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        if not dialogs:isShowed(____exports.DTips) then
            __TS__Await(dialogs:show(____exports.DTips, {tips = message}))
        end
        local dTips = dialogs:get(____exports.DTips)
        SoundManager:play(SoundType["UI提示"])
        dTips:showMessage(message)
    end)
end
function DTips.showInGame(self, message)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____require_result_0 = include("logic.loop.GameLoop")
        local gameLoop = ____require_result_0.gameLoop
        if gameLoop.isExit then
            return ____awaiter_resolve(nil)
        end
        __TS__Await(self:show(message))
    end)
end
return ____exports
