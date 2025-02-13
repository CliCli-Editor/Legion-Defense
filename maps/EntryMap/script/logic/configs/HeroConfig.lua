local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 6,["12"] = 6,["13"] = 7,["14"] = 7,["15"] = 17,["16"] = 17,["17"] = 17,["18"] = 17,["19"] = 17,["20"] = 17,["21"] = 17,["22"] = 17,["23"] = 17,["24"] = 17,["25"] = 17,["26"] = 17,["27"] = 17,["28"] = 17,["29"] = 17,["30"] = 17,["31"] = 17,["32"] = 17,["33"] = 17,["34"] = 17,["35"] = 17,["36"] = 17,["37"] = 17,["38"] = 17,["39"] = 19,["40"] = 19,["41"] = 19,["43"] = 25,["44"] = 30,["45"] = 35,["46"] = 40,["47"] = 47,["48"] = 52,["49"] = 57,["50"] = 62,["51"] = 67,["52"] = 72,["53"] = 77,["54"] = 82,["55"] = 87,["56"] = 89,["57"] = 107,["58"] = 119,["59"] = 121,["60"] = 140,["61"] = 142,["62"] = 161,["63"] = 177,["64"] = 182,["65"] = 187,["66"] = 194,["67"] = 200,["68"] = 19,["73"] = 94,["74"] = 95,["75"] = 96,["77"] = 98,["78"] = 98,["79"] = 98,["80"] = 98,["83"] = 101,["91"] = 113,["99"] = 126,["100"] = 127,["101"] = 128,["103"] = 130,["104"] = 130,["105"] = 130,["106"] = 130,["109"] = 133,["117"] = 148,["118"] = 149,["119"] = 150,["121"] = 152,["122"] = 152,["123"] = 152,["124"] = 152,["127"] = 155,["131"] = 204,["132"] = 205,["133"] = 206,["134"] = 208,["135"] = 266,["136"] = 268,["137"] = 269,["138"] = 269,["139"] = 269,["140"] = 269,["141"] = 269,["142"] = 270,["143"] = 271,["145"] = 272,["146"] = 272,["147"] = 273,["148"] = 274,["149"] = 275,["150"] = 276,["152"] = 279,["153"] = 280,["155"] = 282,["157"] = 272,["161"] = 287,["162"] = 289,["163"] = 292,["164"] = 294,["165"] = 295,["166"] = 296,["167"] = 296,["168"] = 296,["170"] = 298,["173"] = 268});
local ____exports = {}
local ____SkillConfig = include("logic.configs.SkillConfig")
local skillConfigMap = ____SkillConfig.skillConfigMap
local ____PropertyConfig = include("logic.configs.PropertyConfig")
local propertyConfigMap = ____PropertyConfig.propertyConfigMap
local ____TalentConfig = include("logic.configs.TalentConfig")
local talentConfigMap = ____TalentConfig.talentConfigMap
local fields = {
    "id",
    "showName",
    "name",
    "ban",
    "defaultHero",
    "steamDefaultHero",
    "role",
    "pic",
    "icon",
    "badge",
    "buildId",
    "atkDistance",
    "_skill",
    "_property",
    "_talent",
    "_lastTalent",
    "lvLimit",
    "heroGenre",
    "aiGenrePool",
    "aiWeight",
    "robotSelect",
    "robotGenrePool"
}
____exports.HeroConfig = __TS__Class()
local HeroConfig = ____exports.HeroConfig
HeroConfig.name = "HeroConfig"
function HeroConfig.prototype.____constructor(self)
    self.id = 0
    self.showName = vue.ref("")
    self.name = ""
    self.ban = 0
    self.defaultHero = 0
    self.steamDefaultHero = false
    self.role = 0
    self.pic = 0
    self.icon = 0
    self.badge = 0
    self.buildId = 0
    self.atkDistance = 0
    self._skill = {}
    self._fkskill = nil
    self._property = 0
    self._talent = {}
    self._fktalent = nil
    self._lastTalent = {}
    self._fklastTalent = nil
    self.lvLimit = 0
    self.heroGenre = {}
    self.aiGenrePool = {}
    self.aiWeight = {}
    self.robotSelect = false
    self.robotGenrePool = {}
end
__TS__SetDescriptor(
    HeroConfig.prototype,
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
    HeroConfig.prototype,
    "property",
    {get = function(self)
        return propertyConfigMap[self._property]
    end},
    true
)
__TS__SetDescriptor(
    HeroConfig.prototype,
    "talent",
    {get = function(self)
        if self._fktalent == nil then
            if not self._talent then
                self._fktalent = {}
            else
                self._fktalent = __TS__ArrayMap(
                    self._talent,
                    function(____, a) return talentConfigMap[a] end
                )
            end
        end
        return self._fktalent
    end},
    true
)
__TS__SetDescriptor(
    HeroConfig.prototype,
    "lastTalent",
    {get = function(self)
        if self._fklastTalent == nil then
            if not self._lastTalent then
                self._fklastTalent = {}
            else
                self._fklastTalent = __TS__ArrayMap(
                    self._lastTalent,
                    function(____, a) return talentConfigMap[a] end
                )
            end
        end
        return self._fklastTalent
    end},
    true
)
____exports.heroConfigList = {}
____exports.heroConfigMap = {}
____exports.map = ____exports.heroConfigMap
____exports.heroConfigMap_name = {}
local encryptModelData = "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"
function ____exports.HeroConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "heroiWu%C6F0WV&UcD@0#v^RmZz)KKV~",
        string.sub("hero&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.HeroConfig)
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
        local ____exports_heroConfigList_0 = ____exports.heroConfigList
        ____exports_heroConfigList_0[#____exports_heroConfigList_0 + 1] = obj
        ____exports.heroConfigMap[obj.id] = obj
        if obj.name ~= nil and obj.name ~= nil then
            local list = ____exports.heroConfigMap_name[obj.name]
            if not list then
                local ____temp_1 = {}
                ____exports.heroConfigMap_name[obj.name] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
