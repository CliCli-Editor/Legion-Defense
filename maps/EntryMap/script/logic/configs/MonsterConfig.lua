local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 6,["12"] = 6,["13"] = 16,["14"] = 16,["15"] = 16,["16"] = 16,["17"] = 16,["18"] = 16,["19"] = 16,["20"] = 16,["21"] = 16,["22"] = 16,["23"] = 16,["24"] = 16,["25"] = 16,["26"] = 16,["27"] = 16,["28"] = 16,["29"] = 16,["30"] = 16,["31"] = 16,["32"] = 18,["33"] = 18,["34"] = 18,["36"] = 23,["37"] = 28,["38"] = 33,["39"] = 38,["40"] = 43,["41"] = 48,["42"] = 55,["43"] = 61,["44"] = 74,["45"] = 79,["46"] = 84,["47"] = 86,["48"] = 107,["49"] = 113,["50"] = 118,["51"] = 123,["52"] = 125,["53"] = 144,["54"] = 149,["55"] = 18,["60"] = 68,["68"] = 91,["69"] = 92,["70"] = 93,["72"] = 95,["73"] = 95,["74"] = 95,["75"] = 95,["78"] = 98,["86"] = 130,["87"] = 131,["88"] = 132,["90"] = 134,["91"] = 134,["92"] = 134,["93"] = 134,["96"] = 137,["100"] = 153,["101"] = 154,["102"] = 155,["103"] = 157,["104"] = 234,["105"] = 236,["106"] = 237,["107"] = 237,["108"] = 237,["109"] = 237,["110"] = 237,["111"] = 238,["112"] = 239,["114"] = 240,["115"] = 240,["116"] = 241,["117"] = 242,["118"] = 243,["119"] = 244,["121"] = 247,["122"] = 248,["124"] = 250,["126"] = 240,["130"] = 255,["131"] = 257,["132"] = 260,["133"] = 262,["134"] = 263,["135"] = 264,["136"] = 264,["137"] = 264,["139"] = 266,["142"] = 236});
local ____exports = {}
local ____PropertyConfig = include("logic.configs.PropertyConfig")
local propertyConfigMap = ____PropertyConfig.propertyConfigMap
local ____SkillConfig = include("logic.configs.SkillConfig")
local skillConfigMap = ____SkillConfig.skillConfigMap
local fields = {
    "id",
    "showName",
    "name",
    "special",
    "des",
    "ban",
    "type",
    "_property",
    "icon",
    "role",
    "_skill",
    "pos",
    "genreEffect",
    "atkDistance",
    "_showSkill",
    "changeFrom",
    "changeTo"
}
____exports.MonsterConfig = __TS__Class()
local MonsterConfig = ____exports.MonsterConfig
MonsterConfig.name = "MonsterConfig"
function MonsterConfig.prototype.____constructor(self)
    self.id = 0
    self.showName = vue.ref("")
    self.name = ""
    self.special = vue.ref("")
    self.des = vue.ref("")
    self.ban = 0
    self.type = 0
    self._property = 0
    self.icon = 0
    self.role = 0
    self._skill = {}
    self._fkskill = nil
    self.pos = 0
    self.genreEffect = {}
    self.atkDistance = 0
    self._showSkill = {}
    self._fkshowSkill = nil
    self.changeFrom = {}
    self.changeTo = {}
end
__TS__SetDescriptor(
    MonsterConfig.prototype,
    "property",
    {get = function(self)
        return propertyConfigMap[self._property]
    end},
    true
)
__TS__SetDescriptor(
    MonsterConfig.prototype,
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
__TS__SetDescriptor(
    MonsterConfig.prototype,
    "showSkill",
    {get = function(self)
        if self._fkshowSkill == nil then
            if not self._showSkill then
                self._fkshowSkill = {}
            else
                self._fkshowSkill = __TS__ArrayMap(
                    self._showSkill,
                    function(____, a) return skillConfigMap[a] end
                )
            end
        end
        return self._fkshowSkill
    end},
    true
)
____exports.monsterConfigList = {}
____exports.monsterConfigMap = {}
____exports.map = ____exports.monsterConfigMap
____exports.monsterConfigMap_name = {}
local encryptModelData = "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"
function ____exports.MonsterConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "monsteriWu%C6F0WV&UcD@0#v^RmZz)K",
        string.sub("monster&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.MonsterConfig)
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
        local ____exports_monsterConfigList_0 = ____exports.monsterConfigList
        ____exports_monsterConfigList_0[#____exports_monsterConfigList_0 + 1] = obj
        ____exports.monsterConfigMap[obj.id] = obj
        if obj.name ~= nil and obj.name ~= nil then
            local list = ____exports.monsterConfigMap_name[obj.name]
            if not list then
                local ____temp_1 = {}
                ____exports.monsterConfigMap_name[obj.name] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
