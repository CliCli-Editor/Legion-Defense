local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 5,["14"] = 5,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["20"] = 15,["21"] = 16,["22"] = 46,["23"] = 15,["24"] = 36,["25"] = 37,["26"] = 38,["27"] = 37,["28"] = 36,["29"] = 42,["30"] = 43,["31"] = 42,["32"] = 48,["33"] = 49,["34"] = 50,["35"] = 50,["36"] = 50,["37"] = 50,["38"] = 50,["39"] = 50,["40"] = 50,["41"] = 51,["42"] = 48,["43"] = 54,["44"] = 55,["45"] = 56,["46"] = 56,["47"] = 56,["48"] = 56,["49"] = 56,["50"] = 56,["51"] = 56,["52"] = 57,["53"] = 54,["54"] = 60,["56"] = 62,["57"] = 62,["58"] = 62,["59"] = 62,["60"] = 63,["61"] = 64,["62"] = 64,["63"] = 64,["64"] = 65,["65"] = 64,["66"] = 64,["67"] = 62,["68"] = 62,["69"] = 68,["70"] = 68,["71"] = 68,["72"] = 68,["73"] = 69,["74"] = 70,["75"] = 70,["76"] = 70,["77"] = 71,["78"] = 70,["79"] = 70,["80"] = 68,["81"] = 68,["82"] = 75,["83"] = 75,["84"] = 75,["85"] = 75,["86"] = 76,["87"] = 77,["88"] = 77,["89"] = 77,["90"] = 78,["91"] = 77,["92"] = 77,["93"] = 75,["94"] = 75,["95"] = 81,["96"] = 81,["97"] = 81,["98"] = 82,["99"] = 81,["100"] = 81,["101"] = 85,["102"] = 85,["103"] = 85,["104"] = 86,["105"] = 85,["106"] = 85,["107"] = 89,["108"] = 89,["109"] = 89,["110"] = 90,["111"] = 89,["112"] = 89,["113"] = 92,["114"] = 92,["115"] = 92,["116"] = 93,["117"] = 92,["118"] = 92,["120"] = 60,["121"] = 99,["123"] = 100,["124"] = 101,["125"] = 102,["126"] = 102,["127"] = 102,["128"] = 102,["129"] = 102,["130"] = 102,["131"] = 102,["132"] = 102,["133"] = 102,["134"] = 103,["135"] = 104,["138"] = 99});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____DialogManager = include("framework.ui.DialogManager")
local dialogs = ____DialogManager.dialogs
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
____exports.DAlert = __TS__Class()
local DAlert = ____exports.DAlert
DAlert.name = "DAlert"
__TS__ClassExtends(DAlert, Dialog)
function DAlert.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {params = {title = "提示", tips = ""}, returnData = {ok = false}}
    self.animTime = 0.1
end
function DAlert.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DAlert.prototype.onShow(self)
    self:showAni()
end
function DAlert.prototype.showAni(self)
    self:getUI("disable"):set_visible(false)
    self:getUI("root"):set_anim_scale(
        0,
        0,
        1,
        1,
        self.animTime
    )
    self:getUI("background"):set_anim_opacity(0, 100, self.animTime)
end
function DAlert.prototype.hideAni(self)
    self:getUI("disable"):set_visible(true)
    self:getUI("root"):set_anim_scale(
        1,
        1,
        0,
        0,
        self.animTime
    )
    self:getUI("background"):set_anim_opacity(100, 0, self.animTime)
end
function DAlert.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindAction(
            "root.btns.cancel",
            "左键-点击",
            function()
                self:hideAni()
                y3.ltimer.wait(
                    self.animTime,
                    function()
                        self:exit({ok = false})
                    end
                )
            end
        )
        self:bindAction(
            "root.close",
            "左键-点击",
            function()
                self:hideAni()
                y3.ltimer.wait(
                    self.animTime,
                    function()
                        self:exit({ok = false})
                    end
                )
            end
        )
        self:bindAction(
            "root.btns.ok",
            "左键-点击",
            function()
                self:hideAni()
                y3.ltimer.wait(
                    self.animTime,
                    function()
                        self:exit({ok = true})
                    end
                )
            end
        )
        self:bindVisible(
            "root.btns.cancel",
            function()
                return self.data.params.hideCancel ~= true
            end
        )
        self:bindText(
            "root.title",
            function()
                return self.data.params.title or ""
            end
        )
        self:bindText(
            "root.des",
            function()
                return self.data.params.tips
            end
        )
        self:bindText(
            "root.btns.ok.title",
            function()
                return self.data.params.sure or i18n["local"](i18n, "确定")
            end
        )
    end)
end
function DAlert.accessBuy(self, costStr, rewardStr, action)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local text = i18n:format("是否消耗${costStr}兑换${rewardStr}（确认后本次登录中不再提示）", {costStr = costStr, rewardStr = rewardStr})
        local sure = i18n["local"](i18n, "确认")
        local ____TS__Await_result_0 = __TS__Await(dialogs:got(
            ____exports.DAlert,
            {
                title = i18n["local"](i18n, "提示"),
                tips = text,
                sure = sure
            }
        ))
        local ok = ____TS__Await_result_0.ok
        if ok then
            action(nil)
        end
    end)
end
return ____exports
