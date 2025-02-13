local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 13,["19"] = 13,["20"] = 13,["21"] = 15,["22"] = 15,["23"] = 15,["25"] = 20,["26"] = 25,["27"] = 30,["28"] = 35,["29"] = 40,["30"] = 45,["31"] = 50,["32"] = 55,["33"] = 62,["34"] = 67,["35"] = 72,["36"] = 77,["37"] = 15,["38"] = 81,["39"] = 82,["40"] = 83,["41"] = 115,["42"] = 117,["43"] = 118,["44"] = 118,["45"] = 118,["46"] = 118,["47"] = 118,["48"] = 119,["49"] = 120,["51"] = 121,["52"] = 121,["53"] = 122,["54"] = 123,["55"] = 124,["56"] = 125,["58"] = 128,["59"] = 129,["61"] = 131,["63"] = 121,["67"] = 136,["68"] = 138,["70"] = 117});
local ____exports = {}
local fields = {
    "id",
    "rankName",
    "icon",
    "score",
    "totalScore",
    "winScore",
    "loseScore",
    "notFallInRank",
    "debtScore",
    "mvpScore",
    "smvpScore",
    "rewardId"
}
____exports.RankConfig = __TS__Class()
local RankConfig = ____exports.RankConfig
RankConfig.name = "RankConfig"
function RankConfig.prototype.____constructor(self)
    self.id = 0
    self.rankName = vue.ref("")
    self.icon = 0
    self.score = 0
    self.totalScore = 0
    self.winScore = 0
    self.loseScore = 0
    self.notFallInRank = false
    self.debtScore = false
    self.mvpScore = 0
    self.smvpScore = 0
    self.rewardId = 0
end
____exports.rankConfigList = {}
____exports.rankConfigMap = {}
____exports.map = ____exports.rankConfigMap
local encryptModelData = "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"
function ____exports.RankConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "rankiWu%C6F0WV&UcD@0#v^RmZz)KKV~",
        string.sub("rank&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.RankConfig)
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
        local ____exports_rankConfigList_0 = ____exports.rankConfigList
        ____exports_rankConfigList_0[#____exports_rankConfigList_0 + 1] = obj
        ____exports.rankConfigMap[obj.id] = obj
    end
end
return ____exports
