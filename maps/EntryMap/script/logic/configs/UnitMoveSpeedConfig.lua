local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 15,["9"] = 15,["10"] = 15,["12"] = 20,["13"] = 25,["14"] = 15,["15"] = 29,["16"] = 30,["17"] = 31,["18"] = 39,["19"] = 41,["20"] = 42,["21"] = 42,["22"] = 42,["23"] = 42,["24"] = 42,["25"] = 43,["26"] = 44,["28"] = 45,["29"] = 45,["30"] = 46,["31"] = 47,["32"] = 48,["33"] = 49,["35"] = 52,["36"] = 53,["38"] = 55,["40"] = 45,["44"] = 60,["45"] = 62,["47"] = 41});
local ____exports = {}
local fields = {"id", "speed"}
____exports.UnitMoveSpeedConfig = __TS__Class()
local UnitMoveSpeedConfig = ____exports.UnitMoveSpeedConfig
UnitMoveSpeedConfig.name = "UnitMoveSpeedConfig"
function UnitMoveSpeedConfig.prototype.____constructor(self)
    self.id = 0
    self.speed = 0
end
____exports.unitMoveSpeedConfigList = {}
____exports.unitMoveSpeedConfigMap = {}
____exports.map = ____exports.unitMoveSpeedConfigMap
local encryptModelData = "N4jsDi/HT5KlTombSkYjF2DWf8Uj1f75RmOQEbPbQIFT37GU9JslZ6RNxvQESAbt"
function ____exports.UnitMoveSpeedConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "unitmovespeediWu%C6F0WV&UcD@0#v^",
        string.sub("unitmovespeed&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.UnitMoveSpeedConfig)
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
        local ____exports_unitMoveSpeedConfigList_0 = ____exports.unitMoveSpeedConfigList
        ____exports_unitMoveSpeedConfigList_0[#____exports_unitMoveSpeedConfigList_0 + 1] = obj
        ____exports.unitMoveSpeedConfigMap[obj.id] = obj
    end
end
return ____exports
