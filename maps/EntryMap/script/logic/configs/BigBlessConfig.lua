local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 15,["20"] = 15,["21"] = 17,["22"] = 17,["23"] = 17,["25"] = 22,["26"] = 27,["27"] = 32,["28"] = 37,["29"] = 42,["30"] = 47,["31"] = 52,["32"] = 57,["33"] = 59,["34"] = 17,["39"] = 64,["40"] = 65,["41"] = 66,["43"] = 68,["44"] = 68,["45"] = 68,["46"] = 68,["49"] = 71,["53"] = 76,["54"] = 77,["55"] = 78,["56"] = 102,["57"] = 104,["58"] = 105,["59"] = 105,["60"] = 105,["61"] = 105,["62"] = 105,["63"] = 106,["64"] = 107,["66"] = 108,["67"] = 108,["68"] = 109,["69"] = 110,["70"] = 111,["71"] = 112,["73"] = 115,["74"] = 116,["76"] = 118,["78"] = 108,["82"] = 123,["83"] = 125,["85"] = 104});
local ____exports = {}
local ____BlessConfig = include("logic.configs.BlessConfig")
local blessConfigMap = ____BlessConfig.blessConfigMap
local fields = {
    "id",
    "name",
    "des",
    "icon",
    "effect",
    "a",
    "b",
    "_disableBless"
}
____exports.BigBlessConfig = __TS__Class()
local BigBlessConfig = ____exports.BigBlessConfig
BigBlessConfig.name = "BigBlessConfig"
function BigBlessConfig.prototype.____constructor(self)
    self.id = 0
    self.name = vue.ref("")
    self.des = vue.ref("")
    self.icon = 0
    self.effect = 0
    self.a = 0
    self.b = 0
    self._disableBless = {}
    self._fkdisableBless = nil
end
__TS__SetDescriptor(
    BigBlessConfig.prototype,
    "disableBless",
    {get = function(self)
        if self._fkdisableBless == nil then
            if not self._disableBless then
                self._fkdisableBless = {}
            else
                self._fkdisableBless = __TS__ArrayMap(
                    self._disableBless,
                    function(____, a) return blessConfigMap[a] end
                )
            end
        end
        return self._fkdisableBless
    end},
    true
)
____exports.bigBlessConfigList = {}
____exports.bigBlessConfigMap = {}
____exports.map = ____exports.bigBlessConfigMap
local encryptModelData = "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"
function ____exports.BigBlessConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "bigblessiWu%C6F0WV&UcD@0#v^RmZz)",
        string.sub("bigbless&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.BigBlessConfig)
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
        local ____exports_bigBlessConfigList_0 = ____exports.bigBlessConfigList
        ____exports_bigBlessConfigList_0[#____exports_bigBlessConfigList_0 + 1] = obj
        ____exports.bigBlessConfigMap[obj.id] = obj
    end
end
return ____exports
