local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 3,["10"] = 3,["11"] = 3,["12"] = 3,["14"] = 3,["15"] = 4,["16"] = 14,["17"] = 3,["18"] = 16,["19"] = 17,["20"] = 16,["21"] = 20,["22"] = 21,["23"] = 21,["24"] = 21,["25"] = 22,["26"] = 22,["28"] = 23,["29"] = 21,["30"] = 21,["31"] = 26,["32"] = 26,["33"] = 26,["34"] = 27,["35"] = 26,["36"] = 26,["37"] = 20,["38"] = 31,["39"] = 31});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
____exports.DHelpItem = __TS__Class()
local DHelpItem = ____exports.DHelpItem
DHelpItem.name = "DHelpItem"
__TS__ClassExtends(DHelpItem, Dialog)
function DHelpItem.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DHelpItem.prototype.onCreate(self)
    self:initView()
end
function DHelpItem.prototype.initView(self)
    self:bindPos(
        "root",
        function()
            if self.data.params == nil then
                return {x = 0, y = 0}
            end
            return self.data.params
        end
    )
    self:bindText(
        "root.des",
        function()
            return self.data.params.des
        end
    )
end
function DHelpItem.prototype.onShow(self)
end
return ____exports
