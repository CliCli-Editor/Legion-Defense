local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 15,["9"] = 15,["10"] = 15,["12"] = 20,["13"] = 25,["14"] = 15,["15"] = 29,["16"] = 30,["17"] = 31,["18"] = 142,["19"] = 144,["20"] = 145,["21"] = 145,["22"] = 145,["23"] = 145,["24"] = 145,["25"] = 146,["26"] = 147,["28"] = 148,["29"] = 148,["30"] = 149,["31"] = 150,["32"] = 151,["33"] = 152,["35"] = 155,["36"] = 156,["38"] = 158,["40"] = 148,["44"] = 163,["45"] = 165,["47"] = 144});
local ____exports = {}
local fields = {"id", "name"}
____exports.PCNameConfig = __TS__Class()
local PCNameConfig = ____exports.PCNameConfig
PCNameConfig.name = "PCNameConfig"
function PCNameConfig.prototype.____constructor(self)
    self.id = 0
    self.name = vue.ref("")
end
____exports.pCNameConfigList = {}
____exports.pCNameConfigMap = {}
____exports.map = ____exports.pCNameConfigMap
local encryptModelData = "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"
function ____exports.PCNameConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "pcnameiWu%C6F0WV&UcD@0#v^RmZz)KK",
        string.sub("pcname&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.PCNameConfig)
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
        local ____exports_pCNameConfigList_0 = ____exports.pCNameConfigList
        ____exports_pCNameConfigList_0[#____exports_pCNameConfigList_0 + 1] = obj
        ____exports.pCNameConfigMap[obj.id] = obj
    end
end
return ____exports
