local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 13,["19"] = 13,["20"] = 13,["21"] = 13,["22"] = 13,["23"] = 13,["24"] = 13,["25"] = 15,["26"] = 15,["27"] = 15,["29"] = 20,["30"] = 25,["31"] = 30,["32"] = 35,["33"] = 40,["34"] = 45,["35"] = 50,["36"] = 55,["37"] = 61,["38"] = 66,["39"] = 71,["40"] = 76,["41"] = 81,["42"] = 86,["43"] = 91,["44"] = 96,["45"] = 15,["46"] = 100,["47"] = 101,["48"] = 102,["49"] = 111,["50"] = 113,["51"] = 114,["52"] = 114,["53"] = 114,["54"] = 114,["55"] = 114,["56"] = 115,["57"] = 116,["59"] = 117,["60"] = 117,["61"] = 118,["62"] = 119,["63"] = 120,["64"] = 121,["66"] = 124,["67"] = 125,["69"] = 127,["71"] = 117,["75"] = 132,["76"] = 134,["78"] = 113});
local ____exports = {}
local fields = {
    "seasonIndex",
    "icon",
    "enIcon",
    "rankSeasonName",
    "entryImg",
    "enEntryImg",
    "startTime",
    "endTime",
    "reward1",
    "reward2",
    "reward3",
    "reward4",
    "reward5",
    "reward6",
    "gameDes",
    "rewardDes"
}
____exports.RankSeasonConfig = __TS__Class()
local RankSeasonConfig = ____exports.RankSeasonConfig
RankSeasonConfig.name = "RankSeasonConfig"
function RankSeasonConfig.prototype.____constructor(self)
    self.seasonIndex = 0
    self.icon = 0
    self.enIcon = 0
    self.rankSeasonName = vue.ref("")
    self.entryImg = 0
    self.enEntryImg = 0
    self.startTime = 0
    self.endTime = 0
    self.reward1 = {}
    self.reward2 = {}
    self.reward3 = {}
    self.reward4 = {}
    self.reward5 = {}
    self.reward6 = {}
    self.gameDes = vue.ref("")
    self.rewardDes = vue.ref("")
end
____exports.rankSeasonConfigList = {}
____exports.rankSeasonConfigMap = {}
____exports.map = ____exports.rankSeasonConfigMap
local encryptModelData = "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"
function ____exports.RankSeasonConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "rankseasoniWu%C6F0WV&UcD@0#v^RmZ",
        string.sub("rankseason&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.RankSeasonConfig)
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
        local ____exports_rankSeasonConfigList_0 = ____exports.rankSeasonConfigList
        ____exports_rankSeasonConfigList_0[#____exports_rankSeasonConfigList_0 + 1] = obj
        ____exports.rankSeasonConfigMap[obj.seasonIndex] = obj
    end
end
return ____exports
