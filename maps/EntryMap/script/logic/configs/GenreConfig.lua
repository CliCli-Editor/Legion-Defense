local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 6,["12"] = 6,["13"] = 16,["14"] = 16,["15"] = 16,["16"] = 16,["17"] = 16,["18"] = 16,["19"] = 16,["20"] = 16,["21"] = 16,["22"] = 16,["23"] = 16,["24"] = 16,["25"] = 16,["26"] = 16,["27"] = 16,["28"] = 18,["29"] = 18,["30"] = 18,["32"] = 23,["33"] = 28,["34"] = 33,["35"] = 42,["36"] = 47,["37"] = 52,["38"] = 69,["39"] = 74,["40"] = 76,["41"] = 94,["42"] = 99,["43"] = 105,["44"] = 110,["45"] = 123,["46"] = 18,["51"] = 81,["52"] = 82,["53"] = 83,["55"] = 85,["56"] = 85,["57"] = 85,["58"] = 85,["61"] = 88,["69"] = 116,["73"] = 127,["74"] = 128,["75"] = 129,["76"] = 131,["77"] = 133,["78"] = 297,["79"] = 299,["80"] = 300,["81"] = 300,["82"] = 300,["83"] = 300,["84"] = 300,["85"] = 301,["86"] = 302,["88"] = 303,["89"] = 303,["90"] = 304,["91"] = 305,["92"] = 306,["93"] = 307,["95"] = 310,["96"] = 311,["98"] = 313,["100"] = 303,["104"] = 318,["105"] = 320,["106"] = 323,["107"] = 325,["108"] = 326,["109"] = 327,["110"] = 327,["111"] = 327,["113"] = 329,["115"] = 334,["116"] = 336,["117"] = 337,["118"] = 338,["119"] = 339,["120"] = 339,["121"] = 339,["123"] = 341,["127"] = 299});
local ____exports = {}
local ____EffectConfig = include("logic.configs.EffectConfig")
local effectConfigMap = ____EffectConfig.effectConfigMap
local ____SkillConfig = include("logic.configs.SkillConfig")
local skillConfigMap = ____SkillConfig.skillConfigMap
local fields = {
    "id",
    "maxLevel",
    "amount",
    "rarity",
    "money",
    "exp",
    "genre",
    "_effect",
    "icon",
    "name",
    "des",
    "_skill",
    "label"
}
____exports.GenreConfig = __TS__Class()
local GenreConfig = ____exports.GenreConfig
GenreConfig.name = "GenreConfig"
function GenreConfig.prototype.____constructor(self)
    self.id = 0
    self.maxLevel = 0
    self.amount = 0
    self.rarity = 0
    self.money = 0
    self.exp = 0
    self.genre = {}
    self._effect = {}
    self._fkeffect = nil
    self.icon = 0
    self.name = vue.ref("")
    self.des = vue.ref("")
    self._skill = 0
    self.label = 0
end
__TS__SetDescriptor(
    GenreConfig.prototype,
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
    GenreConfig.prototype,
    "skill",
    {get = function(self)
        return skillConfigMap[self._skill]
    end},
    true
)
____exports.genreConfigList = {}
____exports.genreConfigMap = {}
____exports.map = ____exports.genreConfigMap
____exports.genreConfigMap_rarity = {}
____exports.genreConfigMap_genre = {}
local encryptModelData = "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"
function ____exports.GenreConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "genreiWu%C6F0WV&UcD@0#v^RmZz)KKV",
        string.sub("genre&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.GenreConfig)
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
        local ____exports_genreConfigList_0 = ____exports.genreConfigList
        ____exports_genreConfigList_0[#____exports_genreConfigList_0 + 1] = obj
        ____exports.genreConfigMap[obj.id] = obj
        if obj.rarity ~= nil and obj.rarity ~= nil then
            local list = ____exports.genreConfigMap_rarity[obj.rarity]
            if not list then
                local ____temp_1 = {}
                ____exports.genreConfigMap_rarity[obj.rarity] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
        if obj.genre ~= nil and obj.genre ~= nil and #obj.genre > 0 then
            for ____, index in ipairs(obj.genre) do
                local list = ____exports.genreConfigMap_genre[index]
                if not list then
                    local ____temp_2 = {}
                    ____exports.genreConfigMap_genre[index] = ____temp_2
                    list = ____temp_2
                end
                list[#list + 1] = obj
            end
        end
    end
end
return ____exports
