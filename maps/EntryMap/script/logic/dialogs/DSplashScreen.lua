local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 4,["14"] = 4,["15"] = 4,["16"] = 4,["18"] = 4,["19"] = 5,["20"] = 4,["21"] = 15,["22"] = 16,["23"] = 17,["24"] = 16,["25"] = 15,["26"] = 21,["27"] = 22,["28"] = 22,["29"] = 23,["30"] = 23,["31"] = 23,["32"] = 24,["33"] = 23,["34"] = 23,["36"] = 28,["37"] = 29,["38"] = 30,["39"] = 21,["40"] = 33,["41"] = 34,["42"] = 35,["43"] = 35,["44"] = 35,["45"] = 36,["46"] = 35,["47"] = 35,["48"] = 33,["49"] = 40,["52"] = 40});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____TipsConfig = include("logic.configs.TipsConfig")
local tipsConfigList = ____TipsConfig.tipsConfigList
____exports.DSplashScreen = __TS__Class()
local DSplashScreen = ____exports.DSplashScreen
DSplashScreen.name = "DSplashScreen"
__TS__ClassExtends(DSplashScreen, Dialog)
function DSplashScreen.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DSplashScreen.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DSplashScreen.prototype.onShow(self)
    local ____opt_0 = self.data.params
    if (____opt_0 and ____opt_0.autoHide) == true then
        y3.ltimer.wait(
            1.5,
            function()
                self:playHide()
            end
        )
    end
    local time = os.time(os.date("!*t"))
    local cfg = tipsConfigList[time % #tipsConfigList + 1]
    self:getUI("background.tips.contents"):set_text(cfg.des.value)
end
function DSplashScreen.prototype.playHide(self)
    self:getUI(nil):set_anim_opacity(100, 0, 0.5)
    y3.ltimer.wait(
        0.5,
        function()
            self:hide()
        end
    )
end
function DSplashScreen.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
    end)
end
return ____exports
