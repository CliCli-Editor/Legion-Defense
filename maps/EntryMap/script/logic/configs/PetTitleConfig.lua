local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 13,["19"] = 13,["20"] = 13,["21"] = 13,["22"] = 13,["23"] = 15,["24"] = 15,["25"] = 15,["27"] = 21,["28"] = 27,["29"] = 32,["30"] = 37,["31"] = 46,["32"] = 51,["33"] = 56,["34"] = 61,["35"] = 66,["36"] = 71,["37"] = 76,["38"] = 81,["39"] = 86,["40"] = 91,["41"] = 15,["42"] = 95,["43"] = 96,["44"] = 97,["45"] = 99,["46"] = 142,["47"] = 144,["48"] = 145,["49"] = 145,["50"] = 145,["51"] = 145,["52"] = 145,["53"] = 146,["54"] = 147,["56"] = 148,["57"] = 148,["58"] = 149,["59"] = 150,["60"] = 151,["61"] = 152,["63"] = 155,["64"] = 156,["66"] = 158,["68"] = 148,["72"] = 163,["73"] = 165,["74"] = 168,["75"] = 170,["76"] = 171,["77"] = 172,["78"] = 172,["79"] = 172,["81"] = 174,["84"] = 144});
local ____exports = {}
local fields = {
    "id",
    "group",
    "name",
    "des",
    "quality",
    "icon",
    "enIcon",
    "ban",
    "steamBan",
    "isDefault",
    "width",
    "height",
    "enWidth",
    "enHeight"
}
____exports.PetTitleConfig = __TS__Class()
local PetTitleConfig = ____exports.PetTitleConfig
PetTitleConfig.name = "PetTitleConfig"
function PetTitleConfig.prototype.____constructor(self)
    self.id = 0
    self.group = 0
    self.name = vue.ref("")
    self.des = vue.ref("")
    self.quality = 0
    self.icon = 0
    self.enIcon = 0
    self.ban = 0
    self.steamBan = false
    self.isDefault = 0
    self.width = 0
    self.height = 0
    self.enWidth = 0
    self.enHeight = 0
end
____exports.petTitleConfigList = {}
____exports.petTitleConfigMap = {}
____exports.map = ____exports.petTitleConfigMap
____exports.petTitleConfigMap_group = {}
local encryptModelData = "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"
function ____exports.PetTitleConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "pettitleiWu%C6F0WV&UcD@0#v^RmZz)",
        string.sub("pettitle&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.PetTitleConfig)
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
        local ____exports_petTitleConfigList_0 = ____exports.petTitleConfigList
        ____exports_petTitleConfigList_0[#____exports_petTitleConfigList_0 + 1] = obj
        ____exports.petTitleConfigMap[obj.id] = obj
        if obj.group ~= nil and obj.group ~= nil then
            local list = ____exports.petTitleConfigMap_group[obj.group]
            if not list then
                local ____temp_1 = {}
                ____exports.petTitleConfigMap_group[obj.group] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
