local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 15,["15"] = 15,["16"] = 15,["18"] = 20,["19"] = 25,["20"] = 30,["21"] = 35,["22"] = 40,["23"] = 15,["24"] = 44,["25"] = 45,["26"] = 46,["27"] = 79,["28"] = 81,["29"] = 82,["30"] = 82,["31"] = 82,["32"] = 82,["33"] = 82,["34"] = 83,["35"] = 84,["37"] = 85,["38"] = 85,["39"] = 86,["40"] = 87,["41"] = 88,["42"] = 89,["44"] = 92,["45"] = 93,["47"] = 95,["49"] = 85,["53"] = 100,["54"] = 102,["56"] = 81});
local ____exports = {}
local fields = {
    "id",
    "level1",
    "level2",
    "level3",
    "weight"
}
____exports.BlessRuleConfig = __TS__Class()
local BlessRuleConfig = ____exports.BlessRuleConfig
BlessRuleConfig.name = "BlessRuleConfig"
function BlessRuleConfig.prototype.____constructor(self)
    self.id = 0
    self.level1 = 0
    self.level2 = 0
    self.level3 = 0
    self.weight = 0
end
____exports.blessRuleConfigList = {}
____exports.blessRuleConfigMap = {}
____exports.map = ____exports.blessRuleConfigMap
local encryptModelData = "Vwe3Wxq96FJVebZTWlFWNao1zHzMmcXgjJfchLM6WLSJhvVaufixmLk4/AKoYXhB1+QgsExg9I+IkZfTwQfm+eVowrr7d2DqCCm6B7ndSzXKmPZuEm1wqQXStlgLpc7L3eiNnIT2++B/JLZvtxMsHZDL/rBbsyy4GeK5Kvdmm3qdSQnrxnK9qxQRzRy77FCCPfu8GVynjfmkS3V7mMUqbjHzCFmbFdwsjoKDNJP0DXLZ/lij44E3o5VmYhTb6VDXaZao3GKoRO7JAO52a+cfjodNy8NbXNPfwfabTW+KOonA8B6CpK+xfIsPH6kArMzsfLZiDHpueVP1eJY+aHoNYvYC3peEBb+a6tFn+WG00vAQ9eumLmFePZSevstZrjnMzKfY1apKCIbozA92J21+u8m4FUBHkc/TdviDR5YEsdWSrgk73UNpQcSl8UfGUgtpfFYr+duGQu4SJPgesxaRLheXDmyYQXWX4V9yK1jQnVI="
function ____exports.BlessRuleConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "blessruleiWu%C6F0WV&UcD@0#v^RmZz",
        string.sub("blessrule&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.BlessRuleConfig)
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
        local ____exports_blessRuleConfigList_0 = ____exports.blessRuleConfigList
        ____exports_blessRuleConfigList_0[#____exports_blessRuleConfigList_0 + 1] = obj
        ____exports.blessRuleConfigMap[obj.id] = obj
    end
end
return ____exports
