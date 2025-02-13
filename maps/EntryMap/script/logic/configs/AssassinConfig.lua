local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 6,["12"] = 6,["13"] = 7,["14"] = 7,["15"] = 17,["16"] = 17,["17"] = 17,["18"] = 17,["19"] = 17,["20"] = 17,["21"] = 17,["22"] = 17,["23"] = 19,["24"] = 19,["25"] = 19,["27"] = 24,["28"] = 29,["29"] = 41,["30"] = 43,["31"] = 61,["32"] = 63,["33"] = 82,["34"] = 87,["35"] = 19,["40"] = 35,["48"] = 48,["49"] = 49,["50"] = 50,["52"] = 52,["53"] = 52,["54"] = 52,["55"] = 52,["58"] = 55,["66"] = 68,["67"] = 69,["68"] = 70,["70"] = 72,["71"] = 72,["72"] = 72,["73"] = 72,["76"] = 75,["80"] = 91,["81"] = 92,["82"] = 93,["83"] = 129,["84"] = 131,["85"] = 132,["86"] = 132,["87"] = 132,["88"] = 132,["89"] = 132,["90"] = 133,["91"] = 134,["93"] = 135,["94"] = 135,["95"] = 136,["96"] = 137,["97"] = 138,["98"] = 139,["100"] = 142,["101"] = 143,["103"] = 145,["105"] = 135,["109"] = 150,["110"] = 152,["112"] = 131});
local ____exports = {}
local ____LevelConfig = include("logic.configs.LevelConfig")
local levelConfigMap = ____LevelConfig.levelConfigMap
local ____MonsterConfig = include("logic.configs.MonsterConfig")
local monsterConfigMap = ____MonsterConfig.monsterConfigMap
local ____EffectConfig = include("logic.configs.EffectConfig")
local effectConfigMap = ____EffectConfig.effectConfigMap
local fields = {
    "id",
    "_wave",
    "_monsterList",
    "_effect",
    "hpChange",
    "attackChange"
}
____exports.AssassinConfig = __TS__Class()
local AssassinConfig = ____exports.AssassinConfig
AssassinConfig.name = "AssassinConfig"
function AssassinConfig.prototype.____constructor(self)
    self.id = 0
    self._wave = 0
    self._monsterList = {}
    self._fkmonsterList = nil
    self._effect = {}
    self._fkeffect = nil
    self.hpChange = 0
    self.attackChange = 0
end
__TS__SetDescriptor(
    AssassinConfig.prototype,
    "wave",
    {get = function(self)
        return levelConfigMap[self._wave]
    end},
    true
)
__TS__SetDescriptor(
    AssassinConfig.prototype,
    "monsterList",
    {get = function(self)
        if self._fkmonsterList == nil then
            if not self._monsterList then
                self._fkmonsterList = {}
            else
                self._fkmonsterList = __TS__ArrayMap(
                    self._monsterList,
                    function(____, a) return monsterConfigMap[a] end
                )
            end
        end
        return self._fkmonsterList
    end},
    true
)
__TS__SetDescriptor(
    AssassinConfig.prototype,
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
____exports.assassinConfigList = {}
____exports.assassinConfigMap = {}
____exports.map = ____exports.assassinConfigMap
local encryptModelData = "7LYT+iufgICiCBab3J7cjf2ZQgPn4LGZsuCMuwYsT+lIFWGhmX0IOH2G3qTunadA4Vx32cIkx+84/m1wa43NT22E0SHrPjqDT9TgG6VO+tIRwQIaqswekaPT1Kv7A4z38QJF+J5bYTVjvbkR4aqJVQmG/ZhxjyXe8Rl3PxaGSJSDIPowO6nBUXQrgztzrw2mkhaQtQacIck3sYfUypoUzvwjY8fpikAvPs9xIC2a49QGzQc4DGqsZiq6zpSJNVVLSbRyH6d2E4C92YbXn67YfyNYE/VLZD7YN2itlk3sNcNNEo2cwfj6NAM7xVe4OzmerJyYmyxTTh/jhb/6G7p162tOG7RYa2ZX46a6FCD4HjkEXhkv5FNuDesMCEJ95sIRlO7WxqZCnqlW8k3wexzm4SwMI1lLlf4q3CRs/qf1nHK0uNwmLC8Y8/hGTMHUmYL8UYV3xvwWmFW2RXDU7R/dwFx7WylPaaxzM3Z1sGYdhvdYlHh0yywCxFOZqA7L3CUqtx33D+mDA4bRfQMPEqrU9bsWDrxEOc0SSN/1AQEJCpz2KybGlxwn46jr0cXErJPk45KcgPZL/0U26Q82wUX3jeBG3SdCQbJ4l3Y7hgL82G87aHbZ4prLef/rCHe6Y8N3mtiA4E2tHf6bBg1YxhGsmVVrXnecw+lJ2Y9w7tBqAlDiWAuaOP9j/2iNz7IuwwrLXfpq0vTiW8itZjucyNcTZe+cXpVptjmL+GeXKNANWPlvU7XQPxxm4o+3Ovj7ea2L2abbtXdd9HULq8x60rVWCLMtvAQxitWZ9/uVolTcE3lIuKQJJ8DGBnOuXKy4+pxfzOYKa2b/0mscEXqcf6Zwr4ayN5rNUGmQX/46DhwR2Y7GcEaGHI1KVq+3OJaFmhGet/sc6XWV16h/WluXUtEqh32izSNnhLU/anTwoKhNMfO+dtQXqqhUJxB99OaCGCKI8/hAkNTJ5WrprvU1mpRh3lrj+3kcWZEDaao/D/HgYmr1aM7q2/fDH61dRZ8W0MRedzhcd/ykN2LD3dO2XSH1klR7lLZwYGo6Vkajt+TrEMw1gntRDpQy8HRUT6/IzN7bUx58enmXsyDzxnzZUEERydQG5ZaTSyECGyGx78EuAmGtSocgi5iOaFPdncVREJvRfVecJ2WWCZFSCPNsSvodkbMSPQKmkkNzDW+YFIKY60VAA2grqYyeex8z2aPyAkke"
function ____exports.AssassinConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "assassiniWu%C6F0WV&UcD@0#v^RmZz)",
        string.sub("assassin&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.AssassinConfig)
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
        local ____exports_assassinConfigList_0 = ____exports.assassinConfigList
        ____exports_assassinConfigList_0[#____exports_assassinConfigList_0 + 1] = obj
        ____exports.assassinConfigMap[obj.id] = obj
    end
end
return ____exports
