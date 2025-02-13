local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 13,["19"] = 13,["20"] = 13,["21"] = 13,["22"] = 13,["23"] = 15,["24"] = 15,["25"] = 15,["27"] = 21,["28"] = 26,["29"] = 32,["30"] = 37,["31"] = 42,["32"] = 47,["33"] = 52,["34"] = 57,["35"] = 62,["36"] = 67,["37"] = 72,["38"] = 77,["39"] = 82,["40"] = 87,["41"] = 15,["42"] = 91,["43"] = 92,["44"] = 93,["45"] = 137,["46"] = 139,["47"] = 140,["48"] = 140,["49"] = 140,["50"] = 140,["51"] = 140,["52"] = 141,["53"] = 142,["55"] = 143,["56"] = 143,["57"] = 144,["58"] = 145,["59"] = 146,["60"] = 147,["62"] = 150,["63"] = 151,["65"] = 153,["67"] = 143,["71"] = 158,["72"] = 160,["74"] = 139});
local ____exports = {}
local fields = {
    "id",
    "name",
    "reward1",
    "reward2",
    "reward3",
    "reward4",
    "reward5",
    "reward6",
    "reward7",
    "reward8",
    "reward9",
    "reward10",
    "reward11",
    "reward12"
}
____exports.HeroExpRewardConfig = __TS__Class()
local HeroExpRewardConfig = ____exports.HeroExpRewardConfig
HeroExpRewardConfig.name = "HeroExpRewardConfig"
function HeroExpRewardConfig.prototype.____constructor(self)
    self.id = 0
    self.name = vue.ref("")
    self.reward1 = {}
    self.reward2 = {}
    self.reward3 = {}
    self.reward4 = {}
    self.reward5 = {}
    self.reward6 = {}
    self.reward7 = {}
    self.reward8 = {}
    self.reward9 = {}
    self.reward10 = {}
    self.reward11 = {}
    self.reward12 = {}
end
____exports.heroExpRewardConfigList = {}
____exports.heroExpRewardConfigMap = {}
____exports.map = ____exports.heroExpRewardConfigMap
local encryptModelData = "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"
function ____exports.HeroExpRewardConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "heroexprewardiWu%C6F0WV&UcD@0#v^",
        string.sub("heroexpreward&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.HeroExpRewardConfig)
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
        local ____exports_heroExpRewardConfigList_0 = ____exports.heroExpRewardConfigList
        ____exports_heroExpRewardConfigList_0[#____exports_heroExpRewardConfigList_0 + 1] = obj
        ____exports.heroExpRewardConfigMap[obj.id] = obj
    end
end
return ____exports
