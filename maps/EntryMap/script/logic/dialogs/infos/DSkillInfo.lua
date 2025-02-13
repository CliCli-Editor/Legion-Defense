local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["28"] = 8,["29"] = 9,["30"] = 20,["31"] = 8,["32"] = 21,["33"] = 22,["34"] = 23,["35"] = 22,["36"] = 21,["37"] = 27,["39"] = 29,["40"] = 29,["41"] = 29,["42"] = 30,["43"] = 30,["45"] = 31,["46"] = 32,["47"] = 33,["49"] = 35,["50"] = 29,["51"] = 29,["52"] = 37,["53"] = 37,["54"] = 37,["55"] = 38,["56"] = 38,["58"] = 39,["59"] = 40,["60"] = 41,["61"] = 42,["63"] = 44,["64"] = 45,["66"] = 47,["67"] = 48,["69"] = 50,["70"] = 51,["71"] = 52,["72"] = 52,["74"] = 53,["76"] = 55,["77"] = 37,["78"] = 37,["79"] = 58,["80"] = 58,["81"] = 58,["82"] = 58,["83"] = 59,["84"] = 59,["86"] = 60,["87"] = 58,["88"] = 58,["89"] = 63,["90"] = 63,["91"] = 63,["92"] = 63,["93"] = 64,["94"] = 64,["96"] = 65,["97"] = 66,["98"] = 63,["99"] = 63,["100"] = 69,["101"] = 69,["102"] = 69,["103"] = 69,["104"] = 70,["105"] = 70,["107"] = 71,["108"] = 72,["109"] = 69,["110"] = 69,["111"] = 75,["112"] = 75,["113"] = 75,["114"] = 75,["115"] = 76,["116"] = 76,["118"] = 77,["119"] = 78,["120"] = 75,["121"] = 75,["122"] = 81,["123"] = 81,["124"] = 81,["125"] = 81,["126"] = 82,["127"] = 82,["129"] = 83,["130"] = 84,["131"] = 84,["133"] = 85,["134"] = 85,["136"] = 86,["137"] = 86,["139"] = 87,["140"] = 81,["141"] = 81,["143"] = 27});
local ____exports = {}
local ____Dialog = include("framework.ui.Dialog")
local Dialog = ____Dialog.Dialog
local ____bind = include("framework.ui.bind")
local bindImage = ____bind.bindImage
local bindPos = ____bind.bindPos
local bindText = ____bind.bindText
local ____I18N = include("framework.utils.I18N")
local i18n = ____I18N.i18n
local ____SkillConfig = include("logic.configs.SkillConfig")
local skillConfigMap = ____SkillConfig.skillConfigMap
local ____TextConfig = include("logic.configs.TextConfig")
local textConfigMap_name = ____TextConfig.textConfigMap_name
local ____RichTextUtils = include("logic.utils.RichTextUtils")
local RichTextUtils = ____RichTextUtils.RichTextUtils
____exports.DSkillInfo = __TS__Class()
local DSkillInfo = ____exports.DSkillInfo
DSkillInfo.name = "DSkillInfo"
__TS__ClassExtends(DSkillInfo, Dialog)
function DSkillInfo.prototype.____constructor(self, ...)
    Dialog.prototype.____constructor(self, ...)
    self.data = {}
    self.isHover = true
end
function DSkillInfo.prototype.onCreate(self)
    self:initView():catch(function(____, e)
        console:error(e)
    end)
end
function DSkillInfo.prototype.initView(self)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:bindVisible(
            "skill.tips",
            function()
                if self.data.params == nil then
                    return false
                end
                local cfg = skillConfigMap[self.data.params.skillId]
                if cfg.desType == 1 or cfg.desType == 2 or cfg.desType == 3 then
                    return true
                end
                return false
            end
        )
        self:bindText(
            "skill.tips.content",
            function()
                if self.data.params == nil then
                    return ""
                end
                local cfg = skillConfigMap[self.data.params.skillId]
                local keyword = ""
                if cfg.desType == 1 then
                    keyword = "撕裂"
                end
                if cfg.desType == 2 then
                    keyword = "流血"
                end
                if cfg.desType == 3 then
                    keyword = "灼烧"
                end
                if keyword ~= "" then
                    local data = textConfigMap_name[keyword]
                    if data == nil or #data == 0 then
                        return ""
                    end
                    return (tostring(data[1].showName) .. ":") .. tostring(data[1].des)
                end
                return ""
            end
        )
        bindPos(
            self,
            "skill",
            function()
                if self.data.params == nil then
                    return {x = 0, y = 0}
                end
                return {x = self.data.params.x, y = self.data.params.y + 50}
            end
        )
        bindText(
            self,
            "skill.name",
            function()
                if self.data.params == nil then
                    return ""
                end
                local cfg = skillConfigMap[self.data.params.skillId]
                return cfg.showName.value
            end
        )
        bindText(
            self,
            "skill.des",
            function()
                if self.data.params == nil then
                    return ""
                end
                local cfg = skillConfigMap[self.data.params.skillId]
                return RichTextUtils:replaceSkill(cfg.des.value, "#c2d1eb")
            end
        )
        bindImage(
            self,
            "skill.icon",
            function()
                if self.data.params == nil then
                    return 0
                end
                local cfg = skillConfigMap[self.data.params.skillId]
                return cfg.icon
            end
        )
        bindText(
            self,
            "skill.type.type",
            function()
                if self.data.params == nil then
                    return ""
                end
                local cfg = skillConfigMap[self.data.params.skillId]
                if cfg.skillTag == 1 then
                    return i18n["local"](i18n, "普攻")
                end
                if cfg.skillTag == 2 then
                    return i18n["local"](i18n, "被动")
                end
                if cfg.skillTag == 3 then
                    return i18n["local"](i18n, "大招")
                end
                return ""
            end
        )
    end)
end
return ____exports
