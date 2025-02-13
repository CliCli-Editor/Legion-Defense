local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 5,["14"] = 5,["15"] = 6,["16"] = 6,["17"] = 7,["18"] = 7,["19"] = 16,["20"] = 16,["21"] = 16,["22"] = 16,["23"] = 16,["24"] = 16,["25"] = 16,["26"] = 16,["27"] = 16,["28"] = 16,["29"] = 16,["30"] = 16,["31"] = 16,["32"] = 16,["33"] = 18,["34"] = 18,["35"] = 18,["37"] = 23,["38"] = 28,["39"] = 33,["40"] = 38,["41"] = 43,["42"] = 48,["43"] = 63,["44"] = 69,["45"] = 83,["46"] = 96,["47"] = 101,["48"] = 103,["49"] = 121,["50"] = 18,["55"] = 54,["63"] = 76,["71"] = 90,["79"] = 108,["80"] = 109,["81"] = 110,["83"] = 112,["84"] = 112,["85"] = 112,["86"] = 112,["89"] = 115,["93"] = 125,["94"] = 126,["95"] = 133,["96"] = 135,["97"] = 136,["98"] = 136,["99"] = 136,["100"] = 136,["101"] = 136,["102"] = 137,["103"] = 138,["105"] = 139,["106"] = 139,["107"] = 140,["108"] = 141,["109"] = 142,["110"] = 143,["112"] = 146,["113"] = 139,["116"] = 149,["118"] = 150,["119"] = 152,["121"] = 135});
local ____exports = {}
local ____QuickStrategyIgnoreString = include("framework.encrypt.QuickStrategyIgnoreString")
local quickStrategyIgnoreString = ____QuickStrategyIgnoreString.quickStrategyIgnoreString
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local LoopS_noVue = ____SafeTableUtils.LoopS_noVue
local ____TokenTaskConfig = include("logic.configs.TokenTaskConfig")
local tokenTaskConfigMap = ____TokenTaskConfig.tokenTaskConfigMap
local ____TokenRewardConfig = include("logic.configs.TokenRewardConfig")
local tokenRewardConfigMap = ____TokenRewardConfig.tokenRewardConfigMap
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local fields = {
    "id",
    "season",
    "seasonName",
    "startTime",
    "endTime",
    "_tokenTaskGroup",
    "maxExp",
    "_tokenRewardGroup1",
    "_tokenRewardGroup2",
    "specialexp",
    "_specialPropId",
    "num"
}
____exports.TokenSeasonConfig = __TS__Class()
local TokenSeasonConfig = ____exports.TokenSeasonConfig
TokenSeasonConfig.name = "TokenSeasonConfig"
function TokenSeasonConfig.prototype.____constructor(self)
    self.id = 0
    self.season = 0
    self.seasonName = ""
    self.startTime = 0
    self.endTime = 0
    self._tokenTaskGroup = 0
    self.maxExp = {}
    self._tokenRewardGroup1 = 0
    self._tokenRewardGroup2 = 0
    self.specialexp = 0
    self._specialPropId = {}
    self._fkspecialPropId = nil
    self.num = {}
end
__TS__SetDescriptor(
    TokenSeasonConfig.prototype,
    "tokenTaskGroup",
    {get = function(self)
        return tokenTaskConfigMap[self._tokenTaskGroup]
    end},
    true
)
__TS__SetDescriptor(
    TokenSeasonConfig.prototype,
    "tokenRewardGroup1",
    {get = function(self)
        return tokenRewardConfigMap[self._tokenRewardGroup1]
    end},
    true
)
__TS__SetDescriptor(
    TokenSeasonConfig.prototype,
    "tokenRewardGroup2",
    {get = function(self)
        return tokenRewardConfigMap[self._tokenRewardGroup2]
    end},
    true
)
__TS__SetDescriptor(
    TokenSeasonConfig.prototype,
    "specialPropId",
    {get = function(self)
        if self._fkspecialPropId == nil then
            if not self._specialPropId then
                self._fkspecialPropId = {}
            else
                self._fkspecialPropId = __TS__ArrayMap(
                    self._specialPropId,
                    function(____, a) return propConfigMap[a] end
                )
            end
        end
        return self._fkspecialPropId
    end},
    true
)
____exports.tokenSeasonConfigList = {}
____exports.tokenSeasonConfigMap = {}
local encryptModelData = "3uuiu69lDGdub83tEtvkUQMen2H/SMm0z9bIMAkl+vjhSYB00o602/NP7LI6AOJEhXm9bvAa1auYtjizKgVNafQ5ePbDyoPTaSMyL5ARD8o="
function ____exports.TokenSeasonConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "tokenseasoniWu%C6F0WV&UcD@0#v^Rm",
        string.sub("tokenseason&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.TokenSeasonConfig)
        do
            local i = 0
            while i < #fields do
                local key = fields[i + 1]
                local value = record[i + 1]
                if value == "%null%" then
                    value = nil
                end
                obj[key] = value
                i = i + 1
            end
        end
        obj = LoopS_noVue(obj, quickStrategyIgnoreString)
        local ____exports_tokenSeasonConfigList_0 = ____exports.tokenSeasonConfigList
        ____exports_tokenSeasonConfigList_0[#____exports_tokenSeasonConfigList_0 + 1] = obj
        ____exports.tokenSeasonConfigMap[obj.id] = obj
    end
end
return ____exports
