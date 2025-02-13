local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 15,["20"] = 15,["21"] = 15,["22"] = 15,["23"] = 15,["24"] = 15,["25"] = 15,["26"] = 15,["27"] = 15,["28"] = 17,["29"] = 17,["30"] = 17,["32"] = 22,["33"] = 27,["34"] = 32,["35"] = 37,["36"] = 47,["37"] = 52,["38"] = 57,["39"] = 79,["40"] = 84,["41"] = 86,["42"] = 104,["43"] = 112,["44"] = 117,["45"] = 125,["46"] = 135,["47"] = 140,["48"] = 17,["53"] = 91,["54"] = 92,["55"] = 93,["57"] = 95,["58"] = 95,["59"] = 95,["60"] = 95,["63"] = 98,["67"] = 144,["68"] = 145,["69"] = 146,["70"] = 148,["71"] = 207,["72"] = 209,["73"] = 210,["74"] = 210,["75"] = 210,["76"] = 210,["77"] = 210,["78"] = 211,["79"] = 212,["81"] = 213,["82"] = 213,["83"] = 214,["84"] = 215,["85"] = 216,["86"] = 217,["88"] = 220,["89"] = 221,["91"] = 223,["93"] = 213,["97"] = 228,["98"] = 230,["99"] = 233,["100"] = 235,["101"] = 236,["102"] = 237,["103"] = 237,["104"] = 237,["106"] = 239,["109"] = 209});
local ____exports = {}
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local fields = {
    "id",
    "y3Id",
    "icon",
    "enIcon",
    "quality",
    "name",
    "des",
    "type",
    "_propId",
    "propCount",
    "cost",
    "price",
    "consumeType",
    "lockType",
    "sponsor"
}
____exports.KkGoodsConfig = __TS__Class()
local KkGoodsConfig = ____exports.KkGoodsConfig
KkGoodsConfig.name = "KkGoodsConfig"
function KkGoodsConfig.prototype.____constructor(self)
    self.id = 0
    self.y3Id = 0
    self.icon = 0
    self.enIcon = 0
    self.quality = 0
    self.name = vue.ref("")
    self.des = vue.ref("")
    self.type = 0
    self._propId = {}
    self._fkpropId = nil
    self.propCount = {}
    self.cost = 0
    self.price = 0
    self.consumeType = 0
    self.lockType = 0
    self.sponsor = 0
end
__TS__SetDescriptor(
    KkGoodsConfig.prototype,
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
____exports.kkGoodsConfigList = {}
____exports.kkGoodsConfigMap = {}
____exports.map = ____exports.kkGoodsConfigMap
____exports.kkGoodsConfigMap_y3Id = {}
local encryptModelData = "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"
function ____exports.KkGoodsConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "kkgoodsiWu%C6F0WV&UcD@0#v^RmZz)K",
        string.sub("kkgoods&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.KkGoodsConfig)
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
        local ____exports_kkGoodsConfigList_0 = ____exports.kkGoodsConfigList
        ____exports_kkGoodsConfigList_0[#____exports_kkGoodsConfigList_0 + 1] = obj
        ____exports.kkGoodsConfigMap[obj.id] = obj
        if obj.y3Id ~= nil and obj.y3Id ~= nil then
            local list = ____exports.kkGoodsConfigMap_y3Id[obj.y3Id]
            if not list then
                local ____temp_1 = {}
                ____exports.kkGoodsConfigMap_y3Id[obj.y3Id] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
