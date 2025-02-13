local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 15,["20"] = 15,["21"] = 15,["22"] = 15,["23"] = 15,["24"] = 15,["25"] = 17,["26"] = 17,["27"] = 17,["29"] = 22,["30"] = 39,["31"] = 44,["32"] = 49,["33"] = 54,["34"] = 59,["35"] = 65,["36"] = 67,["37"] = 86,["38"] = 88,["39"] = 106,["40"] = 111,["41"] = 124,["42"] = 130,["43"] = 17,["48"] = 73,["49"] = 74,["50"] = 75,["52"] = 77,["53"] = 77,["54"] = 77,["55"] = 77,["58"] = 80,["66"] = 93,["67"] = 94,["68"] = 95,["70"] = 97,["71"] = 97,["72"] = 97,["73"] = 97,["76"] = 100,["80"] = 134,["81"] = 135,["82"] = 136,["83"] = 138,["84"] = 156,["85"] = 158,["86"] = 159,["87"] = 159,["88"] = 159,["89"] = 159,["90"] = 159,["91"] = 160,["92"] = 161,["94"] = 162,["95"] = 162,["96"] = 163,["97"] = 164,["98"] = 165,["99"] = 166,["101"] = 169,["102"] = 170,["104"] = 172,["106"] = 162,["110"] = 177,["111"] = 179,["112"] = 182,["113"] = 184,["114"] = 185,["115"] = 186,["116"] = 186,["117"] = 186,["119"] = 188,["122"] = 158});
local ____exports = {}
local ____EffectConfig = include("logic.configs.EffectConfig")
local effectConfigMap = ____EffectConfig.effectConfigMap
local fields = {
    "id",
    "genre",
    "icon",
    "icon_disable",
    "name",
    "des",
    "_effect",
    "_effect2",
    "weightBase",
    "weightMax",
    "weightInterval",
    "weightChange"
}
____exports.GenreLevelConfig = __TS__Class()
local GenreLevelConfig = ____exports.GenreLevelConfig
GenreLevelConfig.name = "GenreLevelConfig"
function GenreLevelConfig.prototype.____constructor(self)
    self.id = 0
    self.genre = 0
    self.icon = 0
    self.icon_disable = 0
    self.name = vue.ref("")
    self.des = vue.ref("")
    self._effect = {}
    self._fkeffect = nil
    self._effect2 = {}
    self._fkeffect2 = nil
    self.weightBase = 0
    self.weightMax = 0
    self.weightInterval = {}
    self.weightChange = {}
end
__TS__SetDescriptor(
    GenreLevelConfig.prototype,
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
    GenreLevelConfig.prototype,
    "effect2",
    {get = function(self)
        if self._fkeffect2 == nil then
            if not self._effect2 then
                self._fkeffect2 = {}
            else
                self._fkeffect2 = __TS__ArrayMap(
                    self._effect2,
                    function(____, a) return effectConfigMap[a] end
                )
            end
        end
        return self._fkeffect2
    end},
    true
)
____exports.genreLevelConfigList = {}
____exports.genreLevelConfigMap = {}
____exports.map = ____exports.genreLevelConfigMap
____exports.genreLevelConfigMap_genre = {}
local encryptModelData = "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"
function ____exports.GenreLevelConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "genreleveliWu%C6F0WV&UcD@0#v^RmZ",
        string.sub("genrelevel&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.GenreLevelConfig)
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
        local ____exports_genreLevelConfigList_0 = ____exports.genreLevelConfigList
        ____exports_genreLevelConfigList_0[#____exports_genreLevelConfigList_0 + 1] = obj
        ____exports.genreLevelConfigMap[obj.id] = obj
        if obj.genre ~= nil and obj.genre ~= nil then
            local list = ____exports.genreLevelConfigMap_genre[obj.genre]
            if not list then
                local ____temp_1 = {}
                ____exports.genreLevelConfigMap_genre[obj.genre] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
