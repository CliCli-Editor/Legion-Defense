local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["22"] = 6,["23"] = 7,["24"] = 18,["25"] = 6,["26"] = 19,["27"] = 20,["28"] = 21,["29"] = 20,["30"] = 19,["31"] = 25,["33"] = 27,["34"] = 27,["35"] = 27,["36"] = 28,["37"] = 28,["39"] = 29,["40"] = 27,["41"] = 27,["42"] = 32,["43"] = 32,["44"] = 32,["45"] = 33,["46"] = 33,["48"] = 34,["49"] = 35,["50"] = 32,["51"] = 32,["52"] = 37,["53"] = 37,["54"] = 37,["55"] = 38,["56"] = 38,["58"] = 39,["59"] = 40,["60"] = 37,["61"] = 37,["63"] = 43,["64"] = 43,["65"] = 44,["66"] = 45,["67"] = 45,["68"] = 45,["69"] = 46,["70"] = 46,["72"] = 47,["73"] = 48,["74"] = 49,["75"] = 50,["76"] = 50,["78"] = 51,["80"] = 53,["81"] = 54,["82"] = 54,["84"] = 55,["86"] = 57,["87"] = 58,["88"] = 58,["90"] = 59,["92"] = 61,["93"] = 61,["94"] = 61,["95"] = 61,["96"] = 61,["97"] = 61,["98"] = 61,["99"] = 45,["100"] = 45,["101"] = 63,["102"] = 63,["103"] = 63,["104"] = 64,["105"] = 64,["107"] = 65,["108"] = 66,["109"] = 67,["110"] = 67,["113"] = 69,["114"] = 70,["115"] = 70,["118"] = 72,["119"] = 73,["120"] = 73,["123"] = 75,["124"] = 63,["125"] = 63,["126"] = 43,["130"] = 25});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____BlessConfig = include("logic.configs.BlessConfig")
local blessConfigMap = ____BlessConfig.blessConfigMap
local ____RichTextUtils = include("logic.utils.RichTextUtils")
local RichTextUtils = ____RichTextUtils.RichTextUtils
____exports.DWikiBlessInfo = __TS__Class()
local DWikiBlessInfo = ____exports.DWikiBlessInfo
DWikiBlessInfo.name = "DWikiBlessInfo"
__TS__ClassExtends(DWikiBlessInfo, Dialog)
function DWikiBlessInfo.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DWikiBlessInfo.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DWikiBlessInfo.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindPos(
            "tips",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                return self.data.params
            end
        )
        self:bindText(
            "tips.title.name",
            function()
                if self.data.params == nil then
                    return ""
                end
                local cfg = blessConfigMap[self.data.params.skillId]
                return cfg.name.value
            end
        )
        self:bindImage(
            "tips.title.icon",
            function()
                if self.data.params == nil then
                    return 0
                end
                local cfg = blessConfigMap[self.data.params.skillId]
                return cfg.icon
            end
        )
        do
            local index = 0
            while index < 3 do
                local k = index
                self:bindText(
                    ("tips.list.item_" .. tostring(index + 1)) .. ".des",
                    function()
                        if self.data.params == nil then
                            return ""
                        end
                        local cfg = blessConfigMap[self.data.params.skillId]
                        local wave = 4
                        if k == 0 then
                            if #cfg.level1 == 0 then
                                return ""
                            end
                            wave = 4
                        end
                        if k == 1 then
                            if #cfg.level2 == 0 then
                                return ""
                            end
                            wave = 13
                        end
                        if k == 2 then
                            if #cfg.level3 == 0 then
                                return ""
                            end
                            wave = 22
                        end
                        return i18n:format(
                            "#ffffab第${level}波获得时效果：#b9bdca${value}",
                            {
                                level = wave,
                                value = RichTextUtils:replaceBless(cfg.id, k + 1)
                            }
                        )
                    end
                )
                self:bindVisible(
                    ("tips.list.item_" .. tostring(index + 1)) .. ".des",
                    function()
                        if self.data.params == nil then
                            return false
                        end
                        local cfg = blessConfigMap[self.data.params.skillId]
                        if k == 0 then
                            if #cfg.level1 == 0 then
                                return false
                            end
                        end
                        if k == 1 then
                            if #cfg.level2 == 0 then
                                return false
                            end
                        end
                        if k == 2 then
                            if #cfg.level3 == 0 then
                                return false
                            end
                        end
                        return true
                    end
                )
                index = index + 1
            end
        end
    end)
end
return ____exports
