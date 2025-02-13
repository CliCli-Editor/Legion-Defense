local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 15,["18"] = 15,["19"] = 15,["21"] = 20,["22"] = 25,["23"] = 30,["24"] = 35,["25"] = 40,["26"] = 50,["27"] = 55,["28"] = 60,["29"] = 15,["30"] = 64,["31"] = 65,["32"] = 66,["33"] = 124,["34"] = 126,["35"] = 127,["36"] = 127,["37"] = 127,["38"] = 127,["39"] = 127,["40"] = 128,["41"] = 129,["43"] = 130,["44"] = 130,["45"] = 131,["46"] = 132,["47"] = 133,["48"] = 134,["50"] = 137,["51"] = 138,["53"] = 140,["55"] = 130,["59"] = 145,["60"] = 147,["62"] = 126});
local ____exports = {}
local fields = {
    "id",
    "code",
    "count",
    "startTime",
    "endTime",
    "type",
    "rewardId",
    "player"
}
____exports.CodeConfig = __TS__Class()
local CodeConfig = ____exports.CodeConfig
CodeConfig.name = "CodeConfig"
function CodeConfig.prototype.____constructor(self)
    self.id = 0
    self.code = ""
    self.count = 0
    self.startTime = 0
    self.endTime = 0
    self.type = 0
    self.rewardId = 0
    self.player = 0
end
____exports.codeConfigList = {}
____exports.codeConfigMap = {}
____exports.map = ____exports.codeConfigMap
local encryptModelData = "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"
function ____exports.CodeConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "codeiWu%C6F0WV&UcD@0#v^RmZz)KKV~",
        string.sub("code&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.CodeConfig)
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
        local ____exports_codeConfigList_0 = ____exports.codeConfigList
        ____exports_codeConfigList_0[#____exports_codeConfigList_0 + 1] = obj
        ____exports.codeConfigMap[obj.id] = obj
    end
end
return ____exports
