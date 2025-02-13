local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 2,["14"] = 2,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 4,["20"] = 4,["21"] = 5,["22"] = 18,["23"] = 4,["24"] = 20,["25"] = 21,["26"] = 22,["27"] = 21,["28"] = 20,["29"] = 26,["31"] = 28,["32"] = 29,["33"] = 29,["34"] = 29,["35"] = 29,["36"] = 30,["37"] = 30,["39"] = 31,["40"] = 32,["41"] = 33,["42"] = 33,["43"] = 33,["44"] = 33,["45"] = 29,["46"] = 29,["47"] = 36,["48"] = 36,["49"] = 36,["50"] = 36,["51"] = 37,["52"] = 37,["54"] = 38,["55"] = 36,["56"] = 36,["57"] = 41,["58"] = 41,["59"] = 41,["60"] = 41,["61"] = 42,["62"] = 42,["64"] = 43,["65"] = 41,["66"] = 41,["67"] = 46,["68"] = 46,["69"] = 46,["70"] = 46,["71"] = 47,["72"] = 47,["74"] = 48,["75"] = 46,["76"] = 46,["78"] = 26});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____bind = include("framework.ui.bind")
local bindImage = ____bind.bindImage
local bindPos = ____bind.bindPos
local bindText = ____bind.bindText
____exports.DBuffInfo = __TS__Class()
local DBuffInfo = ____exports.DBuffInfo
DBuffInfo.name = "DBuffInfo"
__TS__ClassExtends(DBuffInfo, Dialog)
function DBuffInfo.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DBuffInfo.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DBuffInfo.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ui = self:getUI("buffinfo")
        bindPos(
            self,
            "buffinfo",
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
            "buffinfo.name",
            function()
                if self.data.params == nil then
                    return ""
                end
                return self.data.params.name
            end
        )
        bindText(
            self,
            "buffinfo.des",
            function()
                if self.data.params == nil then
                    return ""
                end
                return self.data.params.des
            end
        )
        bindImage(
            self,
            "buffinfo.icon",
            function()
                if self.data.params == nil then
                    return 0
                end
                return self.data.params.icon
            end
        )
    end)
end
return ____exports
