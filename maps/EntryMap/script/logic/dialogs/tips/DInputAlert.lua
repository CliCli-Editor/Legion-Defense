local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 4,["14"] = 4,["15"] = 4,["16"] = 4,["18"] = 4,["19"] = 5,["20"] = 4,["21"] = 28,["22"] = 29,["23"] = 30,["24"] = 29,["25"] = 28,["26"] = 35,["27"] = 36,["28"] = 37,["29"] = 38,["30"] = 38,["31"] = 38,["32"] = 39,["33"] = 38,["34"] = 38,["35"] = 35,["36"] = 43,["37"] = 44,["39"] = 44,["41"] = 45,["42"] = 46,["43"] = 43,["44"] = 49,["46"] = 51,["47"] = 53,["48"] = 53,["49"] = 53,["50"] = 53,["51"] = 54,["53"] = 54,["55"] = 55,["56"] = 56,["57"] = 53,["58"] = 53,["59"] = 59,["60"] = 59,["61"] = 59,["62"] = 59,["63"] = 60,["65"] = 60,["67"] = 61,["68"] = 62,["69"] = 62,["70"] = 62,["71"] = 62,["72"] = 59,["73"] = 59,["74"] = 64,["75"] = 64,["76"] = 64,["77"] = 65,["78"] = 64,["79"] = 64,["80"] = 68,["81"] = 68,["82"] = 68,["83"] = 69,["84"] = 68,["85"] = 68,["86"] = 71,["87"] = 71,["88"] = 71,["89"] = 72,["90"] = 71,["91"] = 71,["92"] = 74,["93"] = 74,["94"] = 74,["95"] = 75,["96"] = 74,["97"] = 74,["98"] = 78,["99"] = 78,["100"] = 78,["101"] = 79,["102"] = 80,["104"] = 82,["105"] = 78,["106"] = 78,["108"] = 49});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
____exports.DInputAlert = __TS__Class()
local DInputAlert = ____exports.DInputAlert
DInputAlert.name = "DInputAlert"
__TS__ClassExtends(DInputAlert, Dialog)
function DInputAlert.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {params = {title = "提示", des = "", sure = "确定"}, returnData = {ok = false, result = ""}}
end
function DInputAlert.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DInputAlert.prototype.onShow(self)
    local input = self:getUI("root.inputBg.input")
    input:set_text("")
    self.timer = y3.ltimer.loop_frame(
        1,
        function()
            self.data.returnData.result = input:get_input_field_content()
        end
    )
end
function DInputAlert.prototype.onHide(self)
    local ____opt_0 = self.timer
    if ____opt_0 ~= nil then
        ____opt_0:remove()
    end
    self.timer = nil
    self.data.params.allowEmpty = nil
end
function DInputAlert.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local input = self:getUI("root.inputBg.input")
        self:bindAction(
            "root.cancel",
            "左键-点击",
            function()
                local ____opt_2 = self.timer
                if ____opt_2 ~= nil then
                    ____opt_2:remove()
                end
                self.timer = nil
                self:exit({ok = false, result = ""})
            end
        )
        self:bindAction(
            "root.ok",
            "左键-点击",
            function()
                local ____opt_4 = self.timer
                if ____opt_4 ~= nil then
                    ____opt_4:remove()
                end
                self.timer = nil
                self:exit({
                    ok = true,
                    result = input:get_input_field_content()
                })
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
                return self.data.params.des
            end
        )
        self:bindText(
            "root.ok.title",
            function()
                return self.data.params.sure or i18n["local"](i18n, "确定")
            end
        )
        self:bindText(
            "root.cancel.title",
            function()
                return i18n["local"](i18n, "取消")
            end
        )
        self:bindButtonEnable(
            "root.ok",
            function()
                if self.data.params.allowEmpty then
                    return true
                end
                return self.data.returnData.result ~= ""
            end
        )
    end)
end
return ____exports
