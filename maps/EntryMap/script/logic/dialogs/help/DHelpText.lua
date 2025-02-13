local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["22"] = 6,["23"] = 7,["24"] = 17,["25"] = 6,["26"] = 19,["27"] = 20,["28"] = 21,["29"] = 20,["30"] = 19,["31"] = 25,["33"] = 26,["34"] = 26,["35"] = 26,["36"] = 27,["37"] = 27,["39"] = 28,["40"] = 26,["41"] = 26,["42"] = 31,["43"] = 31,["44"] = 31,["45"] = 32,["46"] = 33,["47"] = 33,["48"] = 33,["49"] = 33,["50"] = 33,["51"] = 33,["52"] = 33,["53"] = 33,["54"] = 33,["55"] = 31,["56"] = 31,["58"] = 25,["59"] = 37,["60"] = 37});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____TextConfig = include("logic.configs.TextConfig")
local textConfigMap = ____TextConfig.textConfigMap
local ____RichTextUtils = include("logic.utils.RichTextUtils")
local RichTextUtils = ____RichTextUtils.RichTextUtils
____exports.DHelpText = __TS__Class()
local DHelpText = ____exports.DHelpText
DHelpText.name = "DHelpText"
__TS__ClassExtends(DHelpText, Dialog)
function DHelpText.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DHelpText.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DHelpText.prototype.initView(self)
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
        self:bindText(
            "root.des",
            function()
                local cfg = textConfigMap[self.data.params.id]
                local ____temp_4 = ("【" .. tostring(cfg.showName)) .. "】："
                local ____RichTextUtils_2 = RichTextUtils
                local ____RichTextUtils_replaceSkill_3 = RichTextUtils.replaceSkill
                local ____opt_0 = textConfigMap[self.data.params.id]
                return ____temp_4 .. ____RichTextUtils_replaceSkill_3(
                    ____RichTextUtils_2,
                    ____opt_0 and ____opt_0.des.value or i18n["local"](i18n, "未配置：") .. tostring(self.data.params.id),
                    "#c2d1eb"
                )
            end
        )
    end)
end
function DHelpText.prototype.onShow(self)
end
return ____exports
