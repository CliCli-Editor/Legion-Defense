local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 13,["19"] = 15,["20"] = 15,["21"] = 15,["23"] = 21,["24"] = 26,["25"] = 31,["26"] = 36,["27"] = 46,["28"] = 51,["29"] = 56,["30"] = 61,["31"] = 66,["32"] = 71,["33"] = 15,["34"] = 75,["35"] = 76,["36"] = 77,["37"] = 92,["38"] = 94,["39"] = 95,["40"] = 95,["41"] = 95,["42"] = 95,["43"] = 95,["44"] = 96,["45"] = 97,["47"] = 98,["48"] = 98,["49"] = 99,["50"] = 100,["51"] = 101,["52"] = 102,["54"] = 105,["55"] = 106,["57"] = 108,["59"] = 98,["63"] = 113,["64"] = 115,["66"] = 94});
local ____exports = {}
local fields = {
    "id",
    "name",
    "des",
    "decorate",
    "quality",
    "icon",
    "effect",
    "ban",
    "steamBan",
    "isDefault"
}
____exports.PetEffectConfig = __TS__Class()
local PetEffectConfig = ____exports.PetEffectConfig
PetEffectConfig.name = "PetEffectConfig"
function PetEffectConfig.prototype.____constructor(self)
    self.id = 0
    self.name = vue.ref("")
    self.des = vue.ref("")
    self.decorate = 0
    self.quality = 0
    self.icon = 0
    self.effect = 0
    self.ban = 0
    self.steamBan = false
    self.isDefault = 0
end
____exports.petEffectConfigList = {}
____exports.petEffectConfigMap = {}
____exports.map = ____exports.petEffectConfigMap
local encryptModelData = "tQvKDFa43tAL8W4MGJ3BX+8Vcf8MRffDyV/Cp3NiOaMszLLZp2M664X7QOMIafnbS/ovMPo7jTkWm14xmehfQz8f3XwlPdhtblXmnlze0/z7NrgEMv8qSTtkyFbcGERsISWFRGhVdNXYIOMc4aHxoMjLgxD4qFj2x/vzKceZNx/5oHUBSwPPrk2aKVf3ioP+xUbqBGoF0kkwOO4VrNXiEKKFHcs4nUHAJKM+dldcSRmvGpyMkv6nlEdeMFrzenRI0P46djOEAvcm63GEae92rSuSxp0sKgdzcKWwyyR52/OmjuVulgf2BsMrH0XsZtd8ccu+blP3+k6HGtX4q8uROIzA3MkJo+vLZJhp3O7FqWGz4A/dchMpFp+fXxJFpvlQ/AayQ2eCYo252TVHe7nC8ia/vAne0gXu4frf96FXsTUoR4ORcK8yVUSnUIOdzaSqZtB0UmDsKjFB2KEtMYhfVoXxn13jbYPv8huTLqwS7mlL8MEhiBKqKaftQuDVcL8BY7tEGkAxrOZEBxJnWiT1KB8BRVDtcfsjvfPcsR75PHnRAEqr1AkEmsNAogTU5XoyVPAwJQQrlVjteDHpEQvniVX69kdQIpOJtYNZO8kIpYHuwsunhhjFehXZ7ofqyTNMZ47QSUAm1jneqRBZUdYkQCK/gFmiSLU9cL09vWEZ2qfBDwwxqjIonzpxN1HQ4kLps7lLfKi8HbxCHSTvQwt8j1HACApjVoq+Q74Y01vqd35SLvw83rkgyvCbpy6Gm9cAGLjLZRcy2bDcg81c9a7WSQyHK6NXs5Aaw3fXfFYQ3teZv4i6rgX6BOjpOYHAaLQj2SJmFl2+Y1ERVLF8pu5AsT0D6OmKgc/h/xCi3eaLNf+9vAqmTj5ZAPJOXX59c4mEF3BrjWXckHQS8IUjUzAIsf5ZUWZ+lLnQJ2qYdsOBV1/JadMRzjpIoZbqcAber32iWY0wPijs7+2cmrW/J7+FmONIq7eLarI2+TvfwxI8p2rIVFn1q9AC8LGJMT1emzZj480WxISGWECRyUUIs1epu0H7Xguo2JH0m6LxhWYM/m5aDjZJWLyHEJYiufKtYUYs1xMlxn7XKNEPJui6ZChSywfVYbAbnOMqgYAsMYo01YyOwPZjY6N6emUbz8bnF5xc"
function ____exports.PetEffectConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "peteffectiWu%C6F0WV&UcD@0#v^RmZz",
        string.sub("peteffect&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.PetEffectConfig)
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
        local ____exports_petEffectConfigList_0 = ____exports.petEffectConfigList
        ____exports_petEffectConfigList_0[#____exports_petEffectConfigList_0 + 1] = obj
        ____exports.petEffectConfigMap[obj.id] = obj
    end
end
return ____exports
