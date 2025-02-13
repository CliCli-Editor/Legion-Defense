local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 2,["8"] = 2,["9"] = 3,["10"] = 3,["11"] = 12,["12"] = 12,["13"] = 12,["14"] = 12,["15"] = 12,["16"] = 12,["17"] = 12,["18"] = 14,["19"] = 14,["20"] = 14,["22"] = 19,["23"] = 26,["24"] = 31,["25"] = 36,["26"] = 41,["27"] = 14,["28"] = 45,["29"] = 46,["30"] = 55,["31"] = 57,["32"] = 58,["33"] = 58,["34"] = 58,["35"] = 58,["36"] = 58,["37"] = 59,["38"] = 60,["40"] = 61,["41"] = 61,["42"] = 62,["43"] = 63,["44"] = 64,["45"] = 65,["47"] = 68,["48"] = 61,["51"] = 71,["53"] = 72,["54"] = 74,["56"] = 57});
local ____exports = {}
local ____QuickStrategyIgnoreString = include("framework.encrypt.QuickStrategyIgnoreString")
local quickStrategyIgnoreString = ____QuickStrategyIgnoreString.quickStrategyIgnoreString
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local LoopS_noVue = ____SafeTableUtils.LoopS_noVue
local fields = {
    "id",
    "skinEffect",
    "value1",
    "value2",
    "value3"
}
____exports.SkinEffectConfig = __TS__Class()
local SkinEffectConfig = ____exports.SkinEffectConfig
SkinEffectConfig.name = "SkinEffectConfig"
function SkinEffectConfig.prototype.____constructor(self)
    self.id = 0
    self.skinEffect = 0
    self.value1 = 0
    self.value2 = 0
    self.value3 = 0
end
____exports.skinEffectConfigList = {}
____exports.skinEffectConfigMap = {}
local encryptModelData = "tFar+kfOwHe3QG3WdLt5FHFNGy82P5T/0vnyTPRhQYZOVsFRJYTzSk/13siHS6oQ"
function ____exports.SkinEffectConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "skineffectiWu%C6F0WV&UcD@0#v^RmZ",
        string.sub("skineffect&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.SkinEffectConfig)
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
        local ____exports_skinEffectConfigList_0 = ____exports.skinEffectConfigList
        ____exports_skinEffectConfigList_0[#____exports_skinEffectConfigList_0 + 1] = obj
        ____exports.skinEffectConfigMap[obj.id] = obj
    end
end
return ____exports
