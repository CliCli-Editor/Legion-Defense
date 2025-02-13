local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 2,["10"] = 2,["11"] = 3,["12"] = 3,["13"] = 5,["14"] = 5,["15"] = 14,["16"] = 16,["17"] = 16,["18"] = 16,["20"] = 21,["21"] = 26,["22"] = 28,["23"] = 46,["24"] = 51,["25"] = 16,["30"] = 33,["31"] = 34,["32"] = 35,["34"] = 37,["35"] = 37,["36"] = 37,["37"] = 37,["40"] = 40,["44"] = 55,["45"] = 56,["46"] = 67,["47"] = 69,["48"] = 70,["49"] = 70,["50"] = 70,["51"] = 70,["52"] = 70,["53"] = 71,["54"] = 72,["56"] = 73,["57"] = 73,["58"] = 74,["59"] = 75,["60"] = 76,["61"] = 77,["63"] = 80,["64"] = 73,["67"] = 83,["69"] = 84,["70"] = 86,["72"] = 69});
local ____exports = {}
local ____QuickStrategyIgnoreString = include("framework.encrypt.QuickStrategyIgnoreString")
local quickStrategyIgnoreString = ____QuickStrategyIgnoreString.quickStrategyIgnoreString
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local LoopS_noVue = ____SafeTableUtils.LoopS_noVue
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local fields = {"id", "_propId", "num", "name"}
____exports.nameConfig = __TS__Class()
local nameConfig = ____exports.nameConfig
nameConfig.name = "nameConfig"
function nameConfig.prototype.____constructor(self)
    self.id = 0
    self._propId = {}
    self._fkpropId = nil
    self.num = {}
    self.name = {}
end
__TS__SetDescriptor(
    nameConfig.prototype,
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
____exports.nameConfigList = {}
____exports.nameConfigMap = {}
local encryptModelData = "JOCT9pK4Q/wtlwd7IP1Q7Ygo8nlZneoivRLGW5Jpst2p0f6bsiE3TJsrBzis+Q1HrCGiStvr2hZdcVkfo82Smz8RCn+eDI6rZuyvop0PnEvvUf7NCxi5SRRsGE7EikuzOBELEijxkK+WYs0qsdDMkv4M/T97rmtlrKsvgDvAVmR6ahcUn1Uychwe12jCcf2D"
function ____exports.nameConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "nameiWu%C6F0WV&UcD@0#v^RmZz)KKV~",
        string.sub("name&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.nameConfig)
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
        local ____exports_nameConfigList_0 = ____exports.nameConfigList
        ____exports_nameConfigList_0[#____exports_nameConfigList_0 + 1] = obj
        ____exports.nameConfigMap[obj.id] = obj
    end
end
return ____exports
