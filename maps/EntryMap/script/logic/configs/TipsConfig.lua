local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 15,["9"] = 15,["10"] = 15,["12"] = 20,["13"] = 25,["14"] = 30,["15"] = 15,["16"] = 34,["17"] = 35,["18"] = 36,["19"] = 61,["20"] = 63,["21"] = 64,["22"] = 64,["23"] = 64,["24"] = 64,["25"] = 64,["26"] = 65,["27"] = 66,["29"] = 67,["30"] = 67,["31"] = 68,["32"] = 69,["33"] = 70,["34"] = 71,["36"] = 74,["37"] = 75,["39"] = 77,["41"] = 67,["45"] = 82,["46"] = 84,["48"] = 63});
local ____exports = {}
local fields = {"id", "name", "des"}
____exports.TipsConfig = __TS__Class()
local TipsConfig = ____exports.TipsConfig
TipsConfig.name = "TipsConfig"
function TipsConfig.prototype.____constructor(self)
    self.id = 0
    self.name = vue.ref("")
    self.des = vue.ref("")
end
____exports.tipsConfigList = {}
____exports.tipsConfigMap = {}
____exports.map = ____exports.tipsConfigMap
local encryptModelData = "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"
function ____exports.TipsConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "tipsiWu%C6F0WV&UcD@0#v^RmZz)KKV~",
        string.sub("tips&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.TipsConfig)
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
        local ____exports_tipsConfigList_0 = ____exports.tipsConfigList
        ____exports_tipsConfigList_0[#____exports_tipsConfigList_0 + 1] = obj
        ____exports.tipsConfigMap[obj.id] = obj
    end
end
return ____exports
