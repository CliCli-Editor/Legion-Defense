local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 6,["12"] = 6,["13"] = 16,["14"] = 16,["15"] = 16,["16"] = 16,["17"] = 16,["18"] = 16,["19"] = 16,["20"] = 16,["21"] = 16,["22"] = 16,["23"] = 16,["24"] = 16,["25"] = 16,["26"] = 16,["27"] = 16,["28"] = 16,["29"] = 16,["30"] = 16,["31"] = 16,["32"] = 16,["33"] = 16,["34"] = 16,["35"] = 16,["36"] = 16,["37"] = 16,["38"] = 18,["39"] = 18,["40"] = 18,["42"] = 23,["43"] = 28,["44"] = 33,["45"] = 38,["46"] = 44,["47"] = 49,["48"] = 51,["49"] = 71,["50"] = 86,["51"] = 91,["52"] = 99,["53"] = 104,["54"] = 109,["55"] = 114,["56"] = 119,["57"] = 124,["58"] = 129,["59"] = 134,["60"] = 139,["61"] = 144,["62"] = 149,["63"] = 154,["64"] = 159,["65"] = 164,["66"] = 18,["71"] = 56,["72"] = 57,["73"] = 58,["75"] = 60,["76"] = 60,["77"] = 60,["78"] = 60,["81"] = 63,["89"] = 79,["93"] = 168,["94"] = 169,["95"] = 170,["96"] = 172,["97"] = 207,["98"] = 209,["99"] = 210,["100"] = 210,["101"] = 210,["102"] = 210,["103"] = 210,["104"] = 211,["105"] = 212,["107"] = 213,["108"] = 213,["109"] = 214,["110"] = 215,["111"] = 216,["112"] = 217,["114"] = 220,["115"] = 221,["117"] = 223,["119"] = 213,["123"] = 228,["124"] = 230,["125"] = 233,["126"] = 235,["127"] = 236,["128"] = 237,["129"] = 237,["130"] = 237,["132"] = 239,["135"] = 209});
local ____exports = {}
local ____SkillConfig = include("logic.configs.SkillConfig")
local skillConfigMap = ____SkillConfig.skillConfigMap
local ____PropertyConfig = include("logic.configs.PropertyConfig")
local propertyConfigMap = ____PropertyConfig.propertyConfigMap
local fields = {
    "id",
    "role",
    "showName",
    "name",
    "level",
    "_skills",
    "_property",
    "changeFrom",
    "changeTo",
    "hpChange",
    "attackChange",
    "criticalChange",
    "extraCriticalChange",
    "missChange",
    "atkSpeedChange",
    "physicalDefChange",
    "magicDefChange",
    "mpRecoverChange",
    "moveSpeedChange",
    "apAttackChange",
    "defChange",
    "apDefChange",
    "poisonChange"
}
____exports.SummonedConfig = __TS__Class()
local SummonedConfig = ____exports.SummonedConfig
SummonedConfig.name = "SummonedConfig"
function SummonedConfig.prototype.____constructor(self)
    self.id = 0
    self.role = 0
    self.showName = vue.ref("")
    self.name = ""
    self.level = 0
    self._skills = {}
    self._fkskills = nil
    self._property = 0
    self.changeFrom = {}
    self.changeTo = {}
    self.hpChange = 0
    self.attackChange = 0
    self.criticalChange = 0
    self.extraCriticalChange = 0
    self.missChange = 0
    self.atkSpeedChange = 0
    self.physicalDefChange = 0
    self.magicDefChange = 0
    self.mpRecoverChange = 0
    self.moveSpeedChange = 0
    self.apAttackChange = 0
    self.defChange = 0
    self.apDefChange = 0
    self.poisonChange = 0
end
__TS__SetDescriptor(
    SummonedConfig.prototype,
    "skills",
    {get = function(self)
        if self._fkskills == nil then
            if not self._skills then
                self._fkskills = {}
            else
                self._fkskills = __TS__ArrayMap(
                    self._skills,
                    function(____, a) return skillConfigMap[a] end
                )
            end
        end
        return self._fkskills
    end},
    true
)
__TS__SetDescriptor(
    SummonedConfig.prototype,
    "property",
    {get = function(self)
        return propertyConfigMap[self._property]
    end},
    true
)
____exports.summonedConfigList = {}
____exports.summonedConfigMap = {}
____exports.map = ____exports.summonedConfigMap
____exports.summonedConfigMap_name = {}
local encryptModelData = "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"
function ____exports.SummonedConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "summonediWu%C6F0WV&UcD@0#v^RmZz)",
        string.sub("summoned&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.SummonedConfig)
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
        local ____exports_summonedConfigList_0 = ____exports.summonedConfigList
        ____exports_summonedConfigList_0[#____exports_summonedConfigList_0 + 1] = obj
        ____exports.summonedConfigMap[obj.id] = obj
        if obj.name ~= nil and obj.name ~= nil then
            local list = ____exports.summonedConfigMap_name[obj.name]
            if not list then
                local ____temp_1 = {}
                ____exports.summonedConfigMap_name[obj.name] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
