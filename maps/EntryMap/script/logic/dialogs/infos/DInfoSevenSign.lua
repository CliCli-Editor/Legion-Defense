local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 2,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["19"] = 4,["20"] = 5,["21"] = 4,["22"] = 17,["23"] = 18,["24"] = 19,["25"] = 18,["26"] = 17,["27"] = 23,["29"] = 25,["30"] = 26,["31"] = 26,["32"] = 26,["33"] = 26,["34"] = 27,["35"] = 27,["37"] = 28,["38"] = 29,["39"] = 30,["40"] = 30,["41"] = 30,["42"] = 30,["43"] = 26,["44"] = 26,["45"] = 33,["46"] = 33,["47"] = 33,["48"] = 33,["49"] = 34,["50"] = 34,["51"] = 33,["52"] = 33,["53"] = 37,["54"] = 37,["55"] = 37,["56"] = 37,["57"] = 38,["58"] = 38,["59"] = 37,["60"] = 37,["62"] = 23});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____bind = include("framework.ui.bind")
local bindPos = ____bind.bindPos
local bindText = ____bind.bindText
____exports.DInfoSevenSign = __TS__Class()
local DInfoSevenSign = ____exports.DInfoSevenSign
DInfoSevenSign.name = "DInfoSevenSign"
__TS__ClassExtends(DInfoSevenSign, Dialog)
function DInfoSevenSign.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
end
function DInfoSevenSign.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DInfoSevenSign.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ui = self:getUI("bg")
        bindPos(
            self,
            "bg",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                local w = ui:get_real_width()
                local windowWidth = y3.ui.get_window_width()
                return {
                    x = math.min(windowWidth - w / 2, self.data.params.x),
                    y = self.data.params.y
                }
            end
        )
        bindText(
            self,
            "bg.name",
            function()
                local ____opt_0 = self.data.params
                return ____opt_0 and ____opt_0.name or ""
            end
        )
        bindText(
            self,
            "bg.des",
            function()
                local ____opt_2 = self.data.params
                return ____opt_2 and ____opt_2.des or ""
            end
        )
    end)
end
return ____exports
