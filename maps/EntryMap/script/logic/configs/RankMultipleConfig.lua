local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 15,["15"] = 15,["16"] = 15,["18"] = 21,["19"] = 26,["20"] = 31,["21"] = 36,["22"] = 41,["23"] = 15,["24"] = 45,["25"] = 46,["26"] = 47,["27"] = 153,["28"] = 155,["29"] = 156,["30"] = 156,["31"] = 156,["32"] = 156,["33"] = 156,["34"] = 157,["35"] = 158,["37"] = 159,["38"] = 159,["39"] = 160,["40"] = 161,["41"] = 162,["42"] = 163,["44"] = 166,["45"] = 167,["47"] = 169,["49"] = 159,["53"] = 174,["54"] = 176,["56"] = 155});
local ____exports = {}
local fields = {
    "rankDifference",
    "winHighRankMultiple",
    "loseHighRankMultiple",
    "winLowRankMultiple",
    "loseLowRankMultiple"
}
____exports.RankMultipleConfig = __TS__Class()
local RankMultipleConfig = ____exports.RankMultipleConfig
RankMultipleConfig.name = "RankMultipleConfig"
function RankMultipleConfig.prototype.____constructor(self)
    self.rankDifference = 0
    self.winHighRankMultiple = 0
    self.loseHighRankMultiple = 0
    self.winLowRankMultiple = 0
    self.loseLowRankMultiple = 0
end
____exports.rankMultipleConfigList = {}
____exports.rankMultipleConfigMap = {}
____exports.map = ____exports.rankMultipleConfigMap
local encryptModelData = "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"
function ____exports.RankMultipleConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "rankmultipleiWu%C6F0WV&UcD@0#v^R",
        string.sub("rankmultiple&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.RankMultipleConfig)
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
        local ____exports_rankMultipleConfigList_0 = ____exports.rankMultipleConfigList
        ____exports_rankMultipleConfigList_0[#____exports_rankMultipleConfigList_0 + 1] = obj
        ____exports.rankMultipleConfigMap[obj.rankDifference] = obj
    end
end
return ____exports
