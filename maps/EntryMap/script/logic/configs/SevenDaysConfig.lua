local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 5,["9"] = 5,["10"] = 15,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 17,["19"] = 17,["20"] = 17,["22"] = 22,["23"] = 28,["24"] = 41,["25"] = 46,["26"] = 52,["27"] = 58,["28"] = 17,["33"] = 35,["37"] = 62,["38"] = 63,["39"] = 64,["40"] = 79,["41"] = 81,["42"] = 82,["43"] = 82,["44"] = 82,["45"] = 82,["46"] = 82,["47"] = 83,["48"] = 84,["50"] = 85,["51"] = 85,["52"] = 86,["53"] = 87,["54"] = 88,["55"] = 89,["57"] = 92,["58"] = 93,["60"] = 95,["62"] = 85,["66"] = 100,["67"] = 102,["69"] = 81});
local ____exports = {}
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local fields = {
    "id",
    "_propId",
    "num",
    "name",
    "des",
    "rare"
}
____exports.SevenDaysConfig = __TS__Class()
local SevenDaysConfig = ____exports.SevenDaysConfig
SevenDaysConfig.name = "SevenDaysConfig"
function SevenDaysConfig.prototype.____constructor(self)
    self.id = 0
    self._propId = 0
    self.num = 0
    self.name = vue.ref("")
    self.des = vue.ref("")
    self.rare = 0
end
__TS__SetDescriptor(
    SevenDaysConfig.prototype,
    "propId",
    {get = function(self)
        return propConfigMap[self._propId]
    end},
    true
)
____exports.sevenDaysConfigList = {}
____exports.sevenDaysConfigMap = {}
____exports.map = ____exports.sevenDaysConfigMap
local encryptModelData = "22EKPXWo+4kCDokaSJamd0rlOFSGb3YzWQsugp7PxbEhQGg7L2g3+Xth9laUF6LMwSxNUTMs8QPcoVEGdnWv4wCJQVDwA5Iu73Cd42NrkycmRFM02rkcWslfZzAyeBATyIot6X60xdpjrmEGotK61i2UKkWqOhkkoJWxXges0sNjVufzyHkNb3G29919CaL00Z7ngyD375vg76mldhiLIZ7GRgZ92y/OlnvJaPqutE83TKbU4S43ldR/dxpmlEdrI5Z311bhll7HaRqtnPSwkPRkbbmuS2sZVSYNnYjXkclTRZsMgCNUUWBr85RUkCi5slCdQiKttQYUGQqwtOrH6CrO7JKvk/wNNTR6Dsr5fqLYtm/BWhRfRQBsrTXpYn7sBZDzANobDNz6+aubZwvWrzxda4BzAj7yPG6ieXLEBnJVBxClNRjjdwf/26tDUvVBjaTyCfpDqegYIM/XK2GILlhRvicmcDv+DVDOBT7Xp0XOmNaB4ebQywkA/35orXT45VsubpQw7xwvP5x4o/L/uSJ3Pl/0WaghA9wOyCyx3vrMgeQRxbXg12faE1CJV4qL6yso5RFYLnG1n3rIp8Yy30VWasu79SZJ3cdMgATpEzDClaVCiA3wzN9fh8Q0u1qRg7BPGFcPISwwP41YgTNsIpqhXzTQRUmxiGrNhUELxMyCU7wuc6ITn5ErWdybcO69RzCYyo2rqIw0gyQHzl9KCNnn8Q1DqfvdFqWNvmLLVp9pq/XbN69GuhejGfh//ZlI4shethJ/l3FCsaTE4z6Bvfk9XhaqXfx/HPPS3DuznBU="
function ____exports.SevenDaysConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "sevendaysiWu%C6F0WV&UcD@0#v^RmZz",
        string.sub("sevendays&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.SevenDaysConfig)
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
        local ____exports_sevenDaysConfigList_0 = ____exports.sevenDaysConfigList
        ____exports_sevenDaysConfigList_0[#____exports_sevenDaysConfigList_0 + 1] = obj
        ____exports.sevenDaysConfigMap[obj.id] = obj
    end
end
return ____exports
