local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 5,["12"] = 5,["13"] = 5,["14"] = 5,["16"] = 5,["17"] = 6,["18"] = 16,["19"] = 5,["20"] = 18,["21"] = 19,["22"] = 20,["23"] = 19,["24"] = 18,["25"] = 24,["27"] = 25,["28"] = 25,["29"] = 25,["30"] = 26,["31"] = 26,["33"] = 27,["34"] = 25,["35"] = 25,["37"] = 24,["38"] = 31,["39"] = 31});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
____exports.DHelpEscape = __TS__Class()
local DHelpEscape = ____exports.DHelpEscape
DHelpEscape.name = "DHelpEscape"
__TS__ClassExtends(DHelpEscape, Dialog)
function DHelpEscape.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DHelpEscape.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DHelpEscape.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindPos(
            "root",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                return self.data.params
            end
        )
    end)
end
function DHelpEscape.prototype.onShow(self)
end
return ____exports
