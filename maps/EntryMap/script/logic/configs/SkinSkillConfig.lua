local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 6,["12"] = 6,["13"] = 16,["14"] = 16,["15"] = 16,["16"] = 16,["17"] = 16,["18"] = 16,["19"] = 16,["20"] = 16,["21"] = 16,["22"] = 16,["23"] = 16,["24"] = 18,["25"] = 18,["26"] = 18,["28"] = 23,["29"] = 29,["30"] = 34,["31"] = 39,["32"] = 44,["33"] = 46,["34"] = 65,["35"] = 71,["36"] = 77,["37"] = 82,["38"] = 84,["39"] = 18,["44"] = 51,["45"] = 52,["46"] = 53,["48"] = 55,["49"] = 55,["50"] = 55,["51"] = 55,["54"] = 58,["62"] = 89,["63"] = 90,["64"] = 91,["66"] = 93,["67"] = 93,["68"] = 93,["69"] = 93,["72"] = 96,["76"] = 101,["77"] = 102,["78"] = 103,["79"] = 105,["80"] = 144,["81"] = 146,["82"] = 147,["83"] = 147,["84"] = 147,["85"] = 147,["86"] = 147,["87"] = 148,["88"] = 149,["90"] = 150,["91"] = 150,["92"] = 151,["93"] = 152,["94"] = 153,["95"] = 154,["97"] = 157,["98"] = 158,["100"] = 160,["102"] = 150,["106"] = 165,["107"] = 167,["108"] = 170,["109"] = 172,["110"] = 173,["111"] = 174,["112"] = 174,["113"] = 174,["115"] = 176,["118"] = 146});
local ____exports = {}
local ____EffectConfig = include("logic.configs.EffectConfig")
local effectConfigMap = ____EffectConfig.effectConfigMap
local ____SkinSummonedConfig = include("logic.configs.SkinSummonedConfig")
local skinSummonedConfigMap = ____SkinSummonedConfig.skinSummonedConfigMap
local fields = {
    "id",
    "skillId",
    "particleId",
    "icon",
    "_effectsId",
    "particle1",
    "particle2",
    "particle3",
    "_SkinSummoned"
}
____exports.SkinSkillConfig = __TS__Class()
local SkinSkillConfig = ____exports.SkinSkillConfig
SkinSkillConfig.name = "SkinSkillConfig"
function SkinSkillConfig.prototype.____constructor(self)
    self.id = 0
    self.skillId = 0
    self.particleId = {}
    self.icon = 0
    self._effectsId = {}
    self._fkeffectsId = nil
    self.particle1 = nil
    self.particle2 = nil
    self.particle3 = nil
    self._SkinSummoned = {}
    self._fkSkinSummoned = nil
end
__TS__SetDescriptor(
    SkinSkillConfig.prototype,
    "effectsId",
    {get = function(self)
        if self._fkeffectsId == nil then
            if not self._effectsId then
                self._fkeffectsId = {}
            else
                self._fkeffectsId = __TS__ArrayMap(
                    self._effectsId,
                    function(____, a) return effectConfigMap[a] end
                )
            end
        end
        return self._fkeffectsId
    end},
    true
)
__TS__SetDescriptor(
    SkinSkillConfig.prototype,
    "SkinSummoned",
    {get = function(self)
        if self._fkSkinSummoned == nil then
            if not self._SkinSummoned then
                self._fkSkinSummoned = {}
            else
                self._fkSkinSummoned = __TS__ArrayMap(
                    self._SkinSummoned,
                    function(____, a) return skinSummonedConfigMap[a] end
                )
            end
        end
        return self._fkSkinSummoned
    end},
    true
)
____exports.skinSkillConfigList = {}
____exports.skinSkillConfigMap = {}
____exports.map = ____exports.skinSkillConfigMap
____exports.skinSkillConfigMap_skillId = {}
local encryptModelData = "Aa+7BwICAAIZ8xhc6hx/vxc5AAMVLb4G6nGYqSNZ9y3/PSeZc/Dw4akdeYFuDALV+XdCZO7zytKjxfV5FWM1vPCZ+TaJtIWSmCXgViMdFNTVE6wmqVvOcBL4nO9BJ6f3EBYRHmE/BFnufduDHRruLsaM25rahXSpzfwiry3m/7vl+MiLoYBF5asfIQO/RrNbp4UYxpey1ntQJ/lzJmbsgou6y0AzsCuFiMvtDAGGvvLEg3XB5nmIAvdtAQxPSeUOugGpQAUI14REQ0+OqrZNs6O6xqhsFo7puHkxc0rxYfaNHvt+Mhk5yfImbciUgO1c4RKXM6MgmLQIvtG2Fzu1OTkYQKisiRvU/orUV1fEAb0LRcQ2fAfhIOIXIH71ZLUuUJkcvxuydRG41TE4Rs3xeCsmF6DVAjxqiSbREXfK6BK2ISYJdMt/iudgJcIh1Ta/ZZkHUAPQrHGVWI1FBmlmPISsBwJPtLE77SaNX97WvmQcoW65UK/d4/Q6DcxrWXJdR75oOqQTtwpXBPUfBnPSA7zf2PC469JK8ONzEywAUBH7dB+EBedNJoFEdUuW7ws+/a8PvxDmSsmIRrRLzCA+e8GQWTHY0cgvirp4HntFiUUmP8MdhLpAsXsdUVVqDyOIyFxN+rl+61m3Z7uAzqxDe4O3uD6oh/hU2HplItlO8TQfkyhUcIqtEJFleesBv7+7TMhyEJtal8oajZ0mI8maTCpE7REkpjoZoiWIWMb7JKwKHxSMHLd/XyTxPe4CpZDtaZI7aKWKFUMW8F0IPYWYWAV5WbKZB89nBfaQGgM8VCVH37DmoORFdBmLW/CaMVavvB+X7cGXQPIWDdIkDxou217itDLm9pBMmeQG1aMda4wINORwkXyvq98M5RusXgYbfOefi0KutqooHJbRgOIqkLTyJMLfCnmAvfqSgrAGFV43qENE/Ukl4amQ8qIDxB0zGuIyE7HYLtjCjHX0Cq3gshgYPyVeYWaWmxObo3LqRITaFuMgHU5rsg18masudgETlDazwEfeHIEMBx4m/eqFCHw6XFII3roJrcZM/mZUg0c2qB53Op4vA2JHLVxumqmmkaMW3GiT7J0SjRgabXcsv7v5K+KzhKwGAkGH2lRn7ur3OWNXm4LmDkuAhqTYl7sxFobAJIvnwzp9XaOKDpzEfclxpf9y7N8r+DyGsNobFHcZEGzsOpjUxC8lQtULFE9lINtR0+ekyIiKlDZhzQLFC5LIShY3DIPrilgR8bpsJbiq6xjvWflMnqrk6eG7jbdeXNKhH7ijfB9Hoi7kchh9WEueErr+GWPO71589g9irMu/xjJuTPdAoWdUBzna7vGuH4c6VcobRkqRTu8qL1Jx8QcNt+q5ZddfYT/LsY1HUZlNA+mPZIzGzTBKBOTStTfuucT9aE20ae0p+fq7uq9cdeR7rKaQaty8bJUXqMgFFsO6rckjMesl4I5KHPOVh2LQhZr7webAYmIPEtisopXoVX4woIRyXogoZ4AuKyXcwbrofMwVBbD8+y44R0mGeikc2AVicSIv42pvGCCzhbDCtAke3UUTdW1i5kDD4GoCRfYNtbdJxtDES9FmdtLOOaHHqy+GJSXT3OhcDcB06TW9ZdPamW6fKAtMOvlC9FPe0REcYI3VDZp5LQGwSHwVCMGXIRI5bt+iYFIHJjQZW9JoF4M/2Iu86CAaXiQGv2tSbPWELb1l3Pd47ylFmqo2IKuSJDFqODEO8v+Zc3kLF27DziE/1x7KhnirlRmWdg7xB7HyAvOYX1rujlo+T+drsKUwKWk2HWhzpjIqcZKec+RUbUsqFhKo+wo+Ga0W7d3g4WTnkshaXDFs3UI79D8k0KCfWB+FekWpsuL8jjnDropg3AXxEtFs4r4jW7Gueloa5NUndmNEj+sgbbjBkfQnNW+e4lbDBP9SDcEsrEM26etK1Wj9rIllaNTyz7aAxwqBCdoZ4R1ZhjFByuUX+B2fS4JRBgtURDg8yXmXIJ+ah0RKXgQ2qeWsFExRNdqyPO4PlhMyJjAOXbnhp3GjlvDVDLrAAQq0ZfZbOLeTPCecZbgGpoMifMw3PzY4gHJ7rNzlQKdZ1R1fxbjLnpythGanbTx4iZYm7OcTXCaNPZCfBPye6D43Ams1LpaH3McF/JAiHevxD/7yWVlWZl7/dYjZRObijG8TC4Me0Ra4qiM0D3J7w2ZV5t1h0HhiaveK2sh9cxkz2JL8nsa/VBBrFFXDBHhs62PXdx/WJ4QMgMO0GMn/LWYodwopJQl62X7qTvHFgWhznrFhe9tSBZVXiuh6CpUdElWgQzcDIvsy6xkOTfuRcO+JUgcR37JVkXP6woxElE3u1qXGuw8FhkJ1kzc8PW6N1ofESeGsLFlhXY35oEl0Gxk/lltSx9mS4jxkcJy8J5a4qYYLcTlXYGRZFGOGk3Pto6CPigYrkhEqzWaZ5S0rayBDbkKRjhTk3DVJlvwoo4PYLEDyChfqGYi7Ca4uI2LdIJ6syrTyEp7JS2GhRn3Vj67wCG13fqr0musjky0fyRp6mow7Is+EEGZPnXSYjtAAtqt6Fm/BKbb8ggWX2jqITCBYwdHHww/shu1FlBt0N9DJC6KiZ2bjrM2Zz1IgSqkt7E4xMAhoIHqTKc+YdFMjb+Us57WzZJKriR0INJseehMP2SQlDm4eDwipV9plW3CS41KZ5xPnPXhtqlzkIZAhCWWrugiVesGPB8jcqTWmUTMUtQayL0oFkp+RqPmQHHVG3puKx6X+88Vt219Rpn9HyjeZndcD+fwk/BVYFgzt2TwlyW3WHSpmkLUoJWz8vAtcUjIXUeGOHxB1Z9USZNwWyc1MmCMIBxibGCtrFcZZpyiIe3flpqea6V63roxBSkK/0aPMay39jVi5H7abDiIDTPgUE+zywFsv9I0vwBpSMH+Y1XcGZESX6oCP1mGUhv6FIx3zsGFeegAxoKFQcxyGTWNvamGI6uxoK1iHMzMMsXEDQnYBxqrCwnoe//goFuFY7efEQsez0Z77tPhid1/Zj02lWHWBnUK21Wkt3W4e3P6XQcOwA51AEN2aSjn2pKPHmqq/q/wvRNWn4fcFDYcK57xvUlkzfftOhO6pi7oYpcP0QKwv2gA83zEWAHwlp8oHuQaPn1G6VQ/c08Um9izuLZfEmrSCT2tqqMBd9N8lvW0v8VQkXm6YC+k46Dkkcn4Co7Ud9lS0bXZr8unvgp1UOL+v6UDtVl23RgMkv/voLa08A6KXV0kFhUWuEwPArLN/eMxRx/uf/U2joG/lVSl4cwuGy9wysMAnkIdyxn34kEjMmDJt7HEA/WnBFyVWEpMhRr91oxmYNDxe1F2+oqnsW152peThI4qtJFnPaknzGHROqWOs+b32G6Q2r284eZQxPE6o/LmTC9spBmUg1gPByVmkXCUDv4jyB9dSoU0DhUI89rwWkrjMj6z2/NqlHy+4"
function ____exports.SkinSkillConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "skinskilliWu%C6F0WV&UcD@0#v^RmZz",
        string.sub("skinskill&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.SkinSkillConfig)
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
        local ____exports_skinSkillConfigList_0 = ____exports.skinSkillConfigList
        ____exports_skinSkillConfigList_0[#____exports_skinSkillConfigList_0 + 1] = obj
        ____exports.skinSkillConfigMap[obj.id] = obj
        if obj.skillId ~= nil and obj.skillId ~= nil then
            local list = ____exports.skinSkillConfigMap_skillId[obj.skillId]
            if not list then
                local ____temp_1 = {}
                ____exports.skinSkillConfigMap_skillId[obj.skillId] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
