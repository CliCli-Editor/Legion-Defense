local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 15,["15"] = 15,["16"] = 15,["18"] = 20,["19"] = 25,["20"] = 30,["21"] = 35,["22"] = 40,["23"] = 15,["24"] = 44,["25"] = 45,["26"] = 46,["27"] = 56,["28"] = 58,["29"] = 59,["30"] = 59,["31"] = 59,["32"] = 59,["33"] = 59,["34"] = 60,["35"] = 61,["37"] = 62,["38"] = 62,["39"] = 63,["40"] = 64,["41"] = 65,["42"] = 66,["44"] = 69,["45"] = 70,["47"] = 72,["49"] = 62,["53"] = 77,["54"] = 79,["56"] = 58});
local ____exports = {}
local fields = {
    "id",
    "dis1",
    "dis2",
    "dis3",
    "weight"
}
____exports.RandomEventDisConfig = __TS__Class()
local RandomEventDisConfig = ____exports.RandomEventDisConfig
RandomEventDisConfig.name = "RandomEventDisConfig"
function RandomEventDisConfig.prototype.____constructor(self)
    self.id = 0
    self.dis1 = 0
    self.dis2 = 0
    self.dis3 = 0
    self.weight = 0
end
____exports.randomEventDisConfigList = {}
____exports.randomEventDisConfigMap = {}
____exports.map = ____exports.randomEventDisConfigMap
local encryptModelData = "dJnuZj+IFNeRPkJ1yjVzthjH/z37csa/ocTrNJf6MctHFxqYQ93X2sIJjYageI/9hTrYXMDQwBh6Ja+W7ZDG1w=="
function ____exports.RandomEventDisConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "randomeventdisiWu%C6F0WV&UcD@0#v",
        string.sub("randomeventdis&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.RandomEventDisConfig)
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
        local ____exports_randomEventDisConfigList_0 = ____exports.randomEventDisConfigList
        ____exports_randomEventDisConfigList_0[#____exports_randomEventDisConfigList_0 + 1] = obj
        ____exports.randomEventDisConfigMap[obj.id] = obj
    end
end
return ____exports
