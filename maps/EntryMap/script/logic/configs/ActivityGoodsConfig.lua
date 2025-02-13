local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 2,["9"] = 2,["10"] = 3,["11"] = 3,["12"] = 5,["13"] = 5,["14"] = 6,["15"] = 6,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 15,["20"] = 15,["21"] = 15,["22"] = 15,["23"] = 15,["24"] = 15,["25"] = 15,["26"] = 15,["27"] = 15,["28"] = 15,["29"] = 15,["30"] = 17,["31"] = 17,["32"] = 17,["34"] = 22,["35"] = 27,["36"] = 32,["37"] = 38,["38"] = 44,["39"] = 49,["40"] = 61,["41"] = 66,["42"] = 78,["43"] = 86,["44"] = 91,["45"] = 101,["46"] = 17,["51"] = 55,["59"] = 72,["63"] = 105,["64"] = 106,["65"] = 114,["66"] = 116,["67"] = 117,["68"] = 117,["69"] = 117,["70"] = 117,["71"] = 117,["72"] = 118,["73"] = 119,["75"] = 120,["76"] = 120,["77"] = 121,["78"] = 122,["79"] = 123,["80"] = 124,["82"] = 127,["83"] = 120,["86"] = 130,["88"] = 131,["89"] = 133,["91"] = 116});
local ____exports = {}
local ____QuickStrategyIgnoreString = include("framework.encrypt.QuickStrategyIgnoreString")
local quickStrategyIgnoreString = ____QuickStrategyIgnoreString.quickStrategyIgnoreString
local ____SafeTableUtils = include("logic.utils.SafeTableUtils")
local LoopS_noVue = ____SafeTableUtils.LoopS_noVue
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local ____DropConfig = include("logic.configs.DropConfig")
local dropConfigMap = ____DropConfig.dropConfigMap
local fields = {
    "id",
    "name",
    "des",
    "type",
    "typeArgs",
    "_propId",
    "propCount",
    "_dropId",
    "limitCount",
    "cost",
    "price",
    "label"
}
____exports.ActivityGoodsConfig = __TS__Class()
local ActivityGoodsConfig = ____exports.ActivityGoodsConfig
ActivityGoodsConfig.name = "ActivityGoodsConfig"
function ActivityGoodsConfig.prototype.____constructor(self)
    self.id = 0
    self.name = ""
    self.des = ""
    self.type = 0
    self.typeArgs = 0
    self._propId = 0
    self.propCount = 0
    self._dropId = 0
    self.limitCount = 0
    self.cost = 0
    self.price = 0
    self.label = 0
end
__TS__SetDescriptor(
    ActivityGoodsConfig.prototype,
    "propId",
    {get = function(self)
        return propConfigMap[self._propId]
    end},
    true
)
__TS__SetDescriptor(
    ActivityGoodsConfig.prototype,
    "dropId",
    {get = function(self)
        return dropConfigMap[self._dropId]
    end},
    true
)
____exports.activityGoodsConfigList = {}
____exports.activityGoodsConfigMap = {}
local encryptModelData = "t+85VmX908w88eIQINfKGSW/lp3lKWFSTttSuJwKlsX8LFXsCguqYppg/SiOJBcnleI/0fQ0CeQouJ8qoomzBYP3Xf2gqoQwbfYaUKzs57TupgvEpHxe9efV8SLkn4/VtoT1bLQ9L1gpHyAzouMKQ2jaJnv+iC5gTwL0erlUw8c="
function ____exports.ActivityGoodsConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "activitygoodsiWu%C6F0WV&UcD@0#v^",
        string.sub("activitygoods&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.ActivityGoodsConfig)
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
        local ____exports_activityGoodsConfigList_0 = ____exports.activityGoodsConfigList
        ____exports_activityGoodsConfigList_0[#____exports_activityGoodsConfigList_0 + 1] = obj
        ____exports.activityGoodsConfigMap[obj.id] = obj
    end
end
return ____exports
