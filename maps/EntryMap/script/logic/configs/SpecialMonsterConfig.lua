local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 6,["12"] = 6,["13"] = 7,["14"] = 7,["15"] = 17,["16"] = 17,["17"] = 17,["18"] = 17,["19"] = 17,["20"] = 17,["21"] = 17,["22"] = 17,["23"] = 17,["24"] = 17,["25"] = 17,["26"] = 19,["27"] = 19,["28"] = 19,["30"] = 24,["31"] = 29,["32"] = 41,["33"] = 43,["34"] = 65,["35"] = 70,["36"] = 75,["37"] = 80,["38"] = 82,["39"] = 101,["40"] = 106,["41"] = 19,["46"] = 35,["54"] = 48,["55"] = 49,["56"] = 50,["58"] = 52,["59"] = 52,["60"] = 52,["61"] = 52,["64"] = 55,["72"] = 87,["73"] = 88,["74"] = 89,["76"] = 91,["77"] = 91,["78"] = 91,["79"] = 91,["82"] = 94,["86"] = 110,["87"] = 111,["88"] = 112,["89"] = 238,["90"] = 240,["91"] = 241,["92"] = 241,["93"] = 241,["94"] = 241,["95"] = 241,["96"] = 242,["97"] = 243,["99"] = 244,["100"] = 244,["101"] = 245,["102"] = 246,["103"] = 247,["104"] = 248,["106"] = 251,["107"] = 252,["109"] = 254,["111"] = 244,["115"] = 259,["116"] = 261,["118"] = 240});
local ____exports = {}
local ____LevelConfig = include("logic.configs.LevelConfig")
local levelConfigMap = ____LevelConfig.levelConfigMap
local ____MonsterPoolConfig = include("logic.configs.MonsterPoolConfig")
local monsterPoolConfigMap = ____MonsterPoolConfig.monsterPoolConfigMap
local ____EffectConfig = include("logic.configs.EffectConfig")
local effectConfigMap = ____EffectConfig.effectConfigMap
local fields = {
    "id",
    "_wave",
    "_monster",
    "rewardType",
    "rewardGold",
    "rewardWood",
    "_effect",
    "hpChange",
    "attackChange"
}
____exports.SpecialMonsterConfig = __TS__Class()
local SpecialMonsterConfig = ____exports.SpecialMonsterConfig
SpecialMonsterConfig.name = "SpecialMonsterConfig"
function SpecialMonsterConfig.prototype.____constructor(self)
    self.id = 0
    self._wave = 0
    self._monster = {}
    self._fkmonster = nil
    self.rewardType = 0
    self.rewardGold = 0
    self.rewardWood = 0
    self._effect = {}
    self._fkeffect = nil
    self.hpChange = 0
    self.attackChange = 0
end
__TS__SetDescriptor(
    SpecialMonsterConfig.prototype,
    "wave",
    {get = function(self)
        return levelConfigMap[self._wave]
    end},
    true
)
__TS__SetDescriptor(
    SpecialMonsterConfig.prototype,
    "monster",
    {get = function(self)
        if self._fkmonster == nil then
            if not self._monster then
                self._fkmonster = {}
            else
                self._fkmonster = __TS__ArrayMap(
                    self._monster,
                    function(____, a) return monsterPoolConfigMap[a] end
                )
            end
        end
        return self._fkmonster
    end},
    true
)
__TS__SetDescriptor(
    SpecialMonsterConfig.prototype,
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
____exports.specialMonsterConfigList = {}
____exports.specialMonsterConfigMap = {}
____exports.map = ____exports.specialMonsterConfigMap
local encryptModelData = "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"
function ____exports.SpecialMonsterConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "specialmonsteriWu%C6F0WV&UcD@0#v",
        string.sub("specialmonster&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.SpecialMonsterConfig)
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
        local ____exports_specialMonsterConfigList_0 = ____exports.specialMonsterConfigList
        ____exports_specialMonsterConfigList_0[#____exports_specialMonsterConfigList_0 + 1] = obj
        ____exports.specialMonsterConfigMap[obj.id] = obj
    end
end
return ____exports
