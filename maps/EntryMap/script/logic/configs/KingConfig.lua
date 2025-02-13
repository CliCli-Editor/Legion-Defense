local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 6,["12"] = 6,["13"] = 7,["14"] = 7,["15"] = 17,["16"] = 17,["17"] = 17,["18"] = 17,["19"] = 17,["20"] = 17,["21"] = 17,["22"] = 17,["23"] = 19,["24"] = 19,["25"] = 19,["27"] = 24,["28"] = 29,["29"] = 36,["30"] = 43,["31"] = 58,["32"] = 60,["33"] = 80,["34"] = 82,["35"] = 19,["40"] = 51,["48"] = 66,["49"] = 67,["50"] = 68,["52"] = 70,["53"] = 70,["54"] = 70,["55"] = 70,["58"] = 73,["66"] = 88,["67"] = 89,["68"] = 90,["70"] = 92,["71"] = 92,["72"] = 92,["73"] = 92,["76"] = 95,["80"] = 100,["81"] = 101,["82"] = 102,["83"] = 104,["84"] = 180,["85"] = 182,["86"] = 183,["87"] = 183,["88"] = 183,["89"] = 183,["90"] = 183,["91"] = 184,["92"] = 185,["94"] = 186,["95"] = 186,["96"] = 187,["97"] = 188,["98"] = 189,["99"] = 190,["101"] = 193,["102"] = 194,["104"] = 196,["106"] = 186,["110"] = 201,["111"] = 203,["112"] = 206,["113"] = 208,["114"] = 209,["115"] = 210,["116"] = 210,["117"] = 210,["119"] = 212,["122"] = 182});
local ____exports = {}
local ____PropertyConfig = include("logic.configs.PropertyConfig")
local propertyConfigMap = ____PropertyConfig.propertyConfigMap
local ____EffectConfig = include("logic.configs.EffectConfig")
local effectConfigMap = ____EffectConfig.effectConfigMap
local ____SkillConfig = include("logic.configs.SkillConfig")
local skillConfigMap = ____SkillConfig.skillConfigMap
local fields = {
    "id",
    "level",
    "type",
    "_property",
    "_effect",
    "_skill"
}
____exports.KingConfig = __TS__Class()
local KingConfig = ____exports.KingConfig
KingConfig.name = "KingConfig"
function KingConfig.prototype.____constructor(self)
    self.id = 0
    self.level = 0
    self.type = 0
    self._property = 0
    self._effect = {}
    self._fkeffect = nil
    self._skill = {}
    self._fkskill = nil
end
__TS__SetDescriptor(
    KingConfig.prototype,
    "property",
    {get = function(self)
        return propertyConfigMap[self._property]
    end},
    true
)
__TS__SetDescriptor(
    KingConfig.prototype,
    "effect",
    {get = function(self)
        if self._fkeffect == nil then
            if not self._effect then
                self._fkeffect = {}
            else
                self._fkeffect = __TS__ArrayMap(
                    self._effect,
                    function(____, a) return effectConfigMap[a] end
                )
            end
        end
        return self._fkeffect
    end},
    true
)
__TS__SetDescriptor(
    KingConfig.prototype,
    "skill",
    {get = function(self)
        if self._fkskill == nil then
            if not self._skill then
                self._fkskill = {}
            else
                self._fkskill = __TS__ArrayMap(
                    self._skill,
                    function(____, a) return skillConfigMap[a] end
                )
            end
        end
        return self._fkskill
    end},
    true
)
____exports.kingConfigList = {}
____exports.kingConfigMap = {}
____exports.map = ____exports.kingConfigMap
____exports.kingConfigMap_type = {}
local encryptModelData = "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"
function ____exports.KingConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "kingiWu%C6F0WV&UcD@0#v^RmZz)KKV~",
        string.sub("king&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.KingConfig)
        do
            local i = 0
            while i < #fields do
                local key = fields[i + 1]
                local value = record[i + 1]
                if value == "%null%" then
                    value = nil
                end
                if type(value) == "string" and obj[key].value ~= nil then
                    obj[key].value = value
                else
                    obj[key] = value
                end
                i = i + 1
            end
        end
        local ____exports_kingConfigList_0 = ____exports.kingConfigList
        ____exports_kingConfigList_0[#____exports_kingConfigList_0 + 1] = obj
        ____exports.kingConfigMap[obj.id] = obj
        if obj.type ~= nil and obj.type ~= nil then
            local list = ____exports.kingConfigMap_type[obj.type]
            if not list then
                local ____temp_1 = {}
                ____exports.kingConfigMap_type[obj.type] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
