local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 5,["14"] = 5,["15"] = 14,["16"] = 14,["17"] = 14,["18"] = 14,["19"] = 14,["20"] = 14,["21"] = 14,["22"] = 14,["23"] = 14,["24"] = 14,["25"] = 14,["26"] = 14,["27"] = 14,["28"] = 16,["29"] = 16,["30"] = 16,["32"] = 21,["33"] = 26,["34"] = 31,["35"] = 36,["36"] = 41,["37"] = 46,["38"] = 51,["39"] = 56,["40"] = 61,["41"] = 66,["42"] = 68,["43"] = 86,["44"] = 16,["49"] = 73,["50"] = 74,["51"] = 75,["53"] = 77,["54"] = 77,["55"] = 77,["56"] = 77,["59"] = 80,["63"] = 90,["64"] = 91,["65"] = 137,["66"] = 139,["67"] = 140,["68"] = 140,["69"] = 140,["70"] = 140,["71"] = 140,["72"] = 141,["73"] = 142,["75"] = 143,["76"] = 143,["77"] = 144,["78"] = 145,["79"] = 146,["80"] = 147,["82"] = 150,["83"] = 143,["86"] = 153,["88"] = 154,["89"] = 156,["91"] = 139});
local ____exports = {}
local ____QuickStrategyIgnoreString = include("framework.encrypt.QuickStrategyIgnoreString")
local quickStrategyIgnoreString = ____QuickStrategyIgnoreString.quickStrategyIgnoreString
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local LoopS_noVue = ____SafeTableUtils.LoopS_noVue
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local fields = {
    "id",
    "achieveGroup",
    "achieveLevel",
    "achieveName",
    "achievePoint",
    "achieveDes",
    "rewardDes",
    "achieveCondition1",
    "achieveValue1",
    "_propId",
    "num"
}
____exports.AchieveOutsideConfig = __TS__Class()
local AchieveOutsideConfig = ____exports.AchieveOutsideConfig
AchieveOutsideConfig.name = "AchieveOutsideConfig"
function AchieveOutsideConfig.prototype.____constructor(self)
    self.id = 0
    self.achieveGroup = 0
    self.achieveLevel = 0
    self.achieveName = ""
    self.achievePoint = 0
    self.achieveDes = ""
    self.rewardDes = ""
    self.achieveCondition1 = 0
    self.achieveValue1 = {}
    self._propId = {}
    self._fkpropId = nil
    self.num = {}
end
__TS__SetDescriptor(
    AchieveOutsideConfig.prototype,
    "propId",
    {get = function(self)
        if self._fkpropId == nil then
            if not self._propId then
                self._fkpropId = {}
            else
                self._fkpropId = __TS__ArrayMap(
                    self._propId,
                    function(____, a) return propConfigMap[a] end
                )
            end
        end
        return self._fkpropId
    end},
    true
)
____exports.achieveOutsideConfigList = {}
____exports.achieveOutsideConfigMap = {}
local encryptModelData = "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"
function ____exports.AchieveOutsideConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "achieveoutsideiWu%C6F0WV&UcD@0#v",
        string.sub("achieveoutside&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.AchieveOutsideConfig)
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
        local ____exports_achieveOutsideConfigList_0 = ____exports.achieveOutsideConfigList
        ____exports_achieveOutsideConfigList_0[#____exports_achieveOutsideConfigList_0 + 1] = obj
        ____exports.achieveOutsideConfigMap[obj.id] = obj
    end
end
return ____exports
