local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 15,["20"] = 15,["21"] = 15,["22"] = 15,["23"] = 15,["24"] = 15,["25"] = 15,["26"] = 15,["27"] = 15,["28"] = 15,["29"] = 15,["30"] = 15,["31"] = 17,["32"] = 17,["33"] = 17,["35"] = 23,["36"] = 28,["37"] = 33,["38"] = 38,["39"] = 43,["40"] = 52,["41"] = 57,["42"] = 62,["43"] = 67,["44"] = 72,["45"] = 77,["46"] = 83,["47"] = 88,["48"] = 95,["49"] = 100,["50"] = 102,["51"] = 120,["52"] = 125,["53"] = 130,["54"] = 17,["59"] = 107,["60"] = 108,["61"] = 109,["63"] = 111,["64"] = 111,["65"] = 111,["66"] = 111,["69"] = 114,["73"] = 134,["74"] = 135,["75"] = 136,["76"] = 138,["77"] = 178,["78"] = 180,["79"] = 181,["80"] = 181,["81"] = 181,["82"] = 181,["83"] = 181,["84"] = 182,["85"] = 183,["87"] = 184,["88"] = 184,["89"] = 185,["90"] = 186,["91"] = 187,["92"] = 188,["94"] = 191,["95"] = 192,["97"] = 194,["99"] = 184,["103"] = 199,["104"] = 201,["105"] = 204,["106"] = 206,["107"] = 207,["108"] = 208,["109"] = 208,["110"] = 208,["112"] = 210,["115"] = 180});
local ____exports = {}
local ____vipConfig = include("logic.configs.vipConfig")
local vipConfigMap = ____vipConfig.vipConfigMap
local fields = {
    "id",
    "mercenaryId",
    "name",
    "decorate",
    "ban",
    "quality",
    "role",
    "buildId",
    "icon",
    "pic",
    "roleEffect",
    "changeFrom",
    "changeTo",
    "animeArgs",
    "_SkinEffect",
    "detailoffset",
    "detailviewport",
    "detailCamera"
}
____exports.SkinMercenaryConfig = __TS__Class()
local SkinMercenaryConfig = ____exports.SkinMercenaryConfig
SkinMercenaryConfig.name = "SkinMercenaryConfig"
function SkinMercenaryConfig.prototype.____constructor(self)
    self.id = 0
    self.mercenaryId = 0
    self.name = vue.ref("")
    self.decorate = 0
    self.ban = 0
    self.quality = 0
    self.role = 0
    self.buildId = 0
    self.icon = 0
    self.pic = 0
    self.roleEffect = 0
    self.changeFrom = {}
    self.changeTo = {}
    self.animeArgs = nil
    self._SkinEffect = {}
    self._fkSkinEffect = nil
    self.detailoffset = {}
    self.detailviewport = 0
    self.detailCamera = {}
end
__TS__SetDescriptor(
    SkinMercenaryConfig.prototype,
    "SkinEffect",
    {get = function(self)
        if self._fkSkinEffect == nil then
            if not self._SkinEffect then
                self._fkSkinEffect = {}
            else
                self._fkSkinEffect = __TS__ArrayMap(
                    self._SkinEffect,
                    function(____, a) return vipConfigMap[a] end
                )
            end
        end
        return self._fkSkinEffect
    end},
    true
)
____exports.skinMercenaryConfigList = {}
____exports.skinMercenaryConfigMap = {}
____exports.map = ____exports.skinMercenaryConfigMap
____exports.skinMercenaryConfigMap_mercenaryId = {}
local encryptModelData = "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"
function ____exports.SkinMercenaryConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "skinmercenaryiWu%C6F0WV&UcD@0#v^",
        string.sub("skinmercenary&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.SkinMercenaryConfig)
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
        local ____exports_skinMercenaryConfigList_0 = ____exports.skinMercenaryConfigList
        ____exports_skinMercenaryConfigList_0[#____exports_skinMercenaryConfigList_0 + 1] = obj
        ____exports.skinMercenaryConfigMap[obj.id] = obj
        if obj.mercenaryId ~= nil and obj.mercenaryId ~= nil then
            local list = ____exports.skinMercenaryConfigMap_mercenaryId[obj.mercenaryId]
            if not list then
                local ____temp_1 = {}
                ____exports.skinMercenaryConfigMap_mercenaryId[obj.mercenaryId] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
