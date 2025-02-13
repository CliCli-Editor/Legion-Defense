local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 13,["19"] = 13,["20"] = 13,["21"] = 13,["22"] = 13,["23"] = 13,["24"] = 15,["25"] = 15,["26"] = 15,["28"] = 21,["29"] = 26,["30"] = 31,["31"] = 36,["32"] = 41,["33"] = 46,["34"] = 51,["35"] = 56,["36"] = 61,["37"] = 66,["38"] = 71,["39"] = 76,["40"] = 82,["41"] = 87,["42"] = 92,["43"] = 15,["44"] = 96,["45"] = 97,["46"] = 98,["47"] = 111,["48"] = 113,["49"] = 114,["50"] = 114,["51"] = 114,["52"] = 114,["53"] = 114,["54"] = 115,["55"] = 116,["57"] = 117,["58"] = 117,["59"] = 118,["60"] = 119,["61"] = 120,["62"] = 121,["64"] = 124,["65"] = 125,["67"] = 127,["69"] = 117,["73"] = 132,["74"] = 134,["76"] = 113});
local ____exports = {}
local fields = {
    "id",
    "name",
    "decorate",
    "des",
    "quality",
    "icon",
    "role",
    "ban",
    "steamBan",
    "isDefault",
    "uiBornAnime",
    "uiLoopAnime",
    "changeFrom",
    "changeTo",
    "roleEffect"
}
____exports.PetConfig = __TS__Class()
local PetConfig = ____exports.PetConfig
PetConfig.name = "PetConfig"
function PetConfig.prototype.____constructor(self)
    self.id = 0
    self.name = vue.ref("")
    self.decorate = 0
    self.des = vue.ref("")
    self.quality = 0
    self.icon = 0
    self.role = 0
    self.ban = 0
    self.steamBan = false
    self.isDefault = 0
    self.uiBornAnime = ""
    self.uiLoopAnime = ""
    self.changeFrom = {}
    self.changeTo = {}
    self.roleEffect = 0
end
____exports.petConfigList = {}
____exports.petConfigMap = {}
____exports.map = ____exports.petConfigMap
local encryptModelData = "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"
function ____exports.PetConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "petiWu%C6F0WV&UcD@0#v^RmZz)KKV~1",
        string.sub("pet&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.PetConfig)
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
        local ____exports_petConfigList_0 = ____exports.petConfigList
        ____exports_petConfigList_0[#____exports_petConfigList_0 + 1] = obj
        ____exports.petConfigMap[obj.id] = obj
    end
end
return ____exports
