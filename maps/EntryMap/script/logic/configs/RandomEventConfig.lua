local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 15,["17"] = 15,["18"] = 15,["20"] = 20,["21"] = 26,["22"] = 31,["23"] = 43,["24"] = 49,["25"] = 55,["26"] = 61,["27"] = 15,["28"] = 65,["29"] = 66,["30"] = 67,["31"] = 69,["32"] = 94,["33"] = 96,["34"] = 97,["35"] = 97,["36"] = 97,["37"] = 97,["38"] = 97,["39"] = 98,["40"] = 99,["42"] = 100,["43"] = 100,["44"] = 101,["45"] = 102,["46"] = 103,["47"] = 104,["49"] = 107,["50"] = 108,["52"] = 110,["54"] = 100,["58"] = 115,["59"] = 117,["60"] = 120,["61"] = 122,["62"] = 123,["63"] = 124,["64"] = 125,["65"] = 125,["66"] = 125,["68"] = 127,["72"] = 96});
local ____exports = {}
local fields = {
    "id",
    "name",
    "des",
    "type",
    "weight1",
    "weight2",
    "weight3"
}
____exports.RandomEventConfig = __TS__Class()
local RandomEventConfig = ____exports.RandomEventConfig
RandomEventConfig.name = "RandomEventConfig"
function RandomEventConfig.prototype.____constructor(self)
    self.id = 0
    self.name = vue.ref("")
    self.des = vue.ref("")
    self.type = {}
    self.weight1 = {}
    self.weight2 = {}
    self.weight3 = {}
end
____exports.randomEventConfigList = {}
____exports.randomEventConfigMap = {}
____exports.map = ____exports.randomEventConfigMap
____exports.randomEventConfigMap_type = {}
local encryptModelData = "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"
function ____exports.RandomEventConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "randomeventiWu%C6F0WV&UcD@0#v^Rm",
        string.sub("randomevent&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.RandomEventConfig)
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
        local ____exports_randomEventConfigList_0 = ____exports.randomEventConfigList
        ____exports_randomEventConfigList_0[#____exports_randomEventConfigList_0 + 1] = obj
        ____exports.randomEventConfigMap[obj.id] = obj
        if obj.type ~= nil and obj.type ~= nil and #obj.type > 0 then
            for ____, index in ipairs(obj.type) do
                local list = ____exports.randomEventConfigMap_type[index]
                if not list then
                    local ____temp_1 = {}
                    ____exports.randomEventConfigMap_type[index] = ____temp_1
                    list = ____temp_1
                end
                list[#list + 1] = obj
            end
        end
    end
end
return ____exports
