local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 4,["14"] = 4,["15"] = 6,["16"] = 6,["17"] = 6,["18"] = 6,["20"] = 6,["21"] = 7,["22"] = 6,["23"] = 27,["24"] = 28,["25"] = 27,["26"] = 32,["27"] = 34,["28"] = 36,["29"] = 36,["30"] = 36,["31"] = 37,["32"] = 36,["33"] = 36,["34"] = 40,["35"] = 40,["36"] = 40,["37"] = 41,["38"] = 40,["39"] = 40,["40"] = 44,["41"] = 44,["42"] = 44,["43"] = 45,["44"] = 44,["45"] = 44,["46"] = 48,["47"] = 48,["48"] = 48,["49"] = 50,["50"] = 51,["51"] = 52,["52"] = 54,["53"] = 48,["54"] = 48,["55"] = 32});
local ____exports = {}
local ____global = include("framework.global")
local global = ____global.global
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____Random = include("framework.utils.Random")
local localRandom = ____Random.localRandom
____exports.DMatching = __TS__Class()
local DMatching = ____exports.DMatching
DMatching.name = "DMatching"
__TS__ClassExtends(DMatching, Dialog)
function DMatching.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {params = {showCancel = false, message = ""}, startTime = 0}
end
function DMatching.prototype.onShow(self)
    self.data.startTime = global.time.value
end
function DMatching.prototype.onCreate(self)
    local scale = 0.9 + 0.2 * localRandom:random()
    self:bindText(
        "box.list.text",
        function()
            return self.data.params.message
        end
    )
    self:bindVisible(
        "box.list.cancel",
        function()
            return self.data.params.showCancel
        end
    )
    self:bindClick(
        "box.list.cancel",
        function()
            self:exit({cancel = true})
        end
    )
    self:bindText(
        "box.list.timer",
        function()
            local time = math.floor((global.time.value - self.data.startTime) * scale)
            local m = math.floor(time / 60)
            local s = time % 60
            return i18n:format("${second}秒", {second = time})
        end
    )
end
return ____exports
