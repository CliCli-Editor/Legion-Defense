local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 6,["24"] = 6,["25"] = 7,["26"] = 17,["27"] = 6,["28"] = 19,["29"] = 20,["30"] = 21,["31"] = 20,["32"] = 19,["33"] = 25,["35"] = 27,["36"] = 27,["37"] = 27,["38"] = 27,["39"] = 28,["40"] = 28,["42"] = 29,["43"] = 27,["44"] = 27,["45"] = 32,["46"] = 32,["47"] = 32,["48"] = 32,["49"] = 33,["50"] = 33,["52"] = 34,["53"] = 32,["54"] = 32,["55"] = 37,["56"] = 37,["57"] = 37,["58"] = 37,["59"] = 38,["60"] = 38,["62"] = 39,["63"] = 37,["64"] = 37,["65"] = 42,["66"] = 42,["67"] = 42,["68"] = 42,["69"] = 43,["70"] = 43,["72"] = 44,["73"] = 42,["74"] = 42,["76"] = 25});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____bind = include("framework.ui.bind")
local bindImage = ____bind.bindImage
local bindPos = ____bind.bindPos
local bindText = ____bind.bindText
local ____EquipConfig = include("logic.configs.EquipConfig")
local equipConfigMap = ____EquipConfig.equipConfigMap
local ____RichTextUtils = include("logic.utils.RichTextUtils")
local RichTextUtils = ____RichTextUtils.RichTextUtils
____exports.DEquipInfo = __TS__Class()
local DEquipInfo = ____exports.DEquipInfo
DEquipInfo.name = "DEquipInfo"
__TS__ClassExtends(DEquipInfo, Dialog)
function DEquipInfo.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DEquipInfo.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DEquipInfo.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        bindPos(
            self,
            "skill",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                return self.data.params
            end
        )
        bindText(
            self,
            "skill.name",
            function()
                if self.data.params == nil then
                    return ""
                end
                return equipConfigMap[self.data.params.skillId].name.value
            end
        )
        bindText(
            self,
            "skill.des",
            function()
                if self.data.params == nil then
                    return ""
                end
                return RichTextUtils:replaceSkill(equipConfigMap[self.data.params.skillId].des.value, "#c2d1eb")
            end
        )
        bindImage(
            self,
            "skill.icon",
            function()
                if self.data.params == nil then
                    return 0
                end
                return equipConfigMap[self.data.params.skillId].icon
            end
        )
    end)
end
return ____exports
