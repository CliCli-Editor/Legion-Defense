local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 4,["14"] = 4,["15"] = 6,["16"] = 6,["17"] = 6,["18"] = 6,["20"] = 6,["21"] = 7,["22"] = 6,["23"] = 17,["25"] = 18,["26"] = 19,["27"] = 19,["28"] = 19,["29"] = 19,["30"] = 19,["31"] = 19,["32"] = 19,["33"] = 19,["34"] = 75,["35"] = 76,["36"] = 78,["37"] = 78,["38"] = 78,["39"] = 79,["40"] = 78,["41"] = 78,["42"] = 81,["43"] = 81,["44"] = 81,["45"] = 82,["46"] = 81,["47"] = 81,["48"] = 85,["49"] = 85,["50"] = 85,["51"] = 86,["52"] = 85,["53"] = 85,["54"] = 89,["55"] = 89,["56"] = 89,["57"] = 90,["58"] = 89,["59"] = 89,["61"] = 17,["62"] = 94,["63"] = 95,["64"] = 97,["65"] = 97,["66"] = 98,["67"] = 99,["69"] = 102,["70"] = 103,["71"] = 104,["72"] = 104,["73"] = 104,["74"] = 105,["75"] = 106,["76"] = 107,["77"] = 108,["79"] = 104,["80"] = 104,["81"] = 113,["82"] = 114,["83"] = 115,["84"] = 94,["85"] = 119,["86"] = 120,["87"] = 121,["88"] = 119});
local ____exports = {}
local ____Easing = include("framework.animation.Easing")
local Easing = ____Easing.default
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____TipsConfig = include("logic.configs.TipsConfig")
local tipsConfigList = ____TipsConfig.tipsConfigList
____exports.DLoading = __TS__Class()
local DLoading = ____exports.DLoading
DLoading.name = "DLoading"
__TS__ClassExtends(DLoading, Dialog)
function DLoading.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {progress = 0}
end
function DLoading.prototype.onCreate(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        console:log("DLoading onCreate")
        local list = {
            {des = "蓝拳", background = 134240004, bar = 106177},
            {des = "001", background = 134252797, bar = 106177},
            {des = "0017壹壹单人宣传（新）", background = 134264955, bar = 106177},
            {des = "0081梦魔爱神宣传", background = 134266677, bar = 106177},
            {des = "0508壹壹_提交", background = 134231886, bar = 106177},
            {des = "杰克小丑", background = 134234066, bar = 106177}
        }
        local time = os.time(os.date("!*t"))
        local bg = list[time % #list + 1]
        self:bindImage(
            "loading_background",
            function()
                return bg.background
            end
        )
        self:bindImage(
            "loading_bar_percent",
            function()
                return bg.bar
            end
        )
        self:bindProgress(
            "loading_bar_percent",
            function()
                return self.data.progress * 100
            end
        )
        self:bindText(
            "label_percent",
            function()
                return tostring(math.floor(self.data.progress * 100)) .. "%"
            end
        )
    end)
end
function DLoading.prototype.onShow(self)
    local ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER, "DLoading")
    local ____require_result_0 = include("logic.loop.GameLoop")
    local gameLoop = ____require_result_0.gameLoop
    if not gameLoop.isExit then
        ui:set_z_order(499)
    end
    self.data.progress = 0
    local loadingTime = 1.5 * 30
    y3.ltimer.loop_frame(
        1,
        function(timer, count)
            self.data.progress = Easing.Sinusoidal:Out(count / loadingTime)
            if count >= loadingTime then
                timer:remove()
                self:hide()
            end
        end
    )
    local time = os.time(os.date("!*t"))
    local cfg = tipsConfigList[time % #tipsConfigList + 1]
    self:getUI("tips.contents"):set_text(cfg.des.value)
end
function DLoading.prototype.onHide(self)
    local ui = y3.ui.get_ui(y3.player.LOCAL_PLAYER, "DLoading")
    ui:set_z_order(1)
end
return ____exports
