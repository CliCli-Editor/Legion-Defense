local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 5,["16"] = 5,["17"] = 5,["18"] = 5,["20"] = 5,["21"] = 6,["22"] = 18,["23"] = 5,["24"] = 20,["25"] = 21,["26"] = 22,["27"] = 21,["28"] = 20,["29"] = 26,["31"] = 27,["32"] = 27,["33"] = 27,["34"] = 28,["35"] = 28,["37"] = 29,["38"] = 27,["39"] = 27,["40"] = 32,["41"] = 32,["42"] = 32,["43"] = 33,["44"] = 32,["45"] = 32,["46"] = 36,["47"] = 36,["48"] = 36,["49"] = 37,["50"] = 36,["51"] = 36,["52"] = 40,["53"] = 40,["54"] = 40,["55"] = 42,["56"] = 40,["57"] = 40,["59"] = 26,["60"] = 47,["61"] = 47});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____BlessConfig = include("logic.configs.BlessConfig")
local blessConfigMap = ____BlessConfig.blessConfigMap
local ____RichTextUtils = include("logic.utils.RichTextUtils")
local RichTextUtils = ____RichTextUtils.RichTextUtils
____exports.DHelpBless = __TS__Class()
local DHelpBless = ____exports.DHelpBless
DHelpBless.name = "DHelpBless"
__TS__ClassExtends(DHelpBless, Dialog)
function DHelpBless.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DHelpBless.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DHelpBless.prototype.initView(self)
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
        self:bindImage(
            "root.icon",
            function()
                return blessConfigMap[self.data.params.configId].icon
            end
        )
        self:bindText(
            "root.name",
            function()
                return blessConfigMap[self.data.params.configId].name.value
            end
        )
        self:bindText(
            "root.des",
            function()
                return RichTextUtils:replaceBless(self.data.params.configId, self.data.params.level)
            end
        )
    end)
end
function DHelpBless.prototype.onShow(self)
end
return ____exports
