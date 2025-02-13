local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 13,["19"] = 15,["20"] = 15,["21"] = 15,["23"] = 21,["24"] = 26,["25"] = 31,["26"] = 36,["27"] = 41,["28"] = 46,["29"] = 51,["30"] = 56,["31"] = 61,["32"] = 66,["33"] = 15,["34"] = 70,["35"] = 71,["36"] = 72,["37"] = 85,["38"] = 87,["39"] = 88,["40"] = 88,["41"] = 88,["42"] = 88,["43"] = 88,["44"] = 89,["45"] = 90,["47"] = 91,["48"] = 91,["49"] = 92,["50"] = 93,["51"] = 94,["52"] = 95,["54"] = 98,["55"] = 99,["57"] = 101,["59"] = 91,["63"] = 106,["64"] = 108,["66"] = 87});
local ____exports = {}
local fields = {
    "id",
    "name",
    "decorate",
    "des",
    "quality",
    "icon",
    "wing",
    "ban",
    "steamBan",
    "isDefault"
}
____exports.PetWingConfig = __TS__Class()
local PetWingConfig = ____exports.PetWingConfig
PetWingConfig.name = "PetWingConfig"
function PetWingConfig.prototype.____constructor(self)
    self.id = 0
    self.name = vue.ref("")
    self.decorate = 0
    self.des = vue.ref("")
    self.quality = 0
    self.icon = 0
    self.wing = 0
    self.ban = 0
    self.steamBan = false
    self.isDefault = 0
end
____exports.petWingConfigList = {}
____exports.petWingConfigMap = {}
____exports.map = ____exports.petWingConfigMap
local encryptModelData = "+QTf2k6IeYiIE5tJpbxk5FKhiKPkRFpxYdVVqRBe2hFM/HRTGI1Ul+jqFVFNcWfQ5iWqyF71+qyAiESu9il09xa74WDF1gcDhKRdo9vQmB7bVkLD+g/djBlOh1epv+TZx3u2WTko+CeHjwBSFl2VShkEgLxWxuWgCrB5ifY6bD/MvnpLUBA1t/fdnJC62tmsZojIHKON4GzpIv/Yb1xBPXkclOwW6JQ+3MhBh2Xm8q0D6qkqKLkCqiACL2VXd81ARC00zxqyXitU53E+JK+tLVACExu7k2n0kEMsXvqWVQe4T8MoKGCW08d4BYW0XuYw/CQ2ClPBRiLrwQu/XKIu7d95EL3EhtxmAIjb6xkzqPeR5YS9dbo0cEMrVwux7ao2AhUIh40a8WvkxfS97H+wc8WXZkzwYa8zOpt0Yarupc1Df7K9H989CRW8ywheNwyOydr5gwY2xR+nQcb5JeJeHLqXGR+mkk4CS5EvHYspv56k7TVp5AEzrzLRGKr5zDov/ZxfoKF9X4GMsl0JLk26nLQ8jaiDTQih3ldoDHgiDOQNBTk622Q6irDPJoM/NenkZEmeC3j9stgCuPYAgQkBH6oMtFY3tluq1xhTSGE59i6A/XfLB23rrG7eSNcBLPCZHVKuJiZSNFwpqJJQBqqNQ5CESusZ/WAzjyiCx4PCOAznIE/Q85LhhXD9cUzqLAI0sYBBWLDkCmu/xyYFA7t90TdRmkMFzrwfBV8ffMDMU399xyzVLVkN20/b+jfch06JHGbsBo3zM4yJeIjA7EAULBA43BXmbnjNUKqGF+6CrJowgxcn0QTgob/43HB8l7eI"
function ____exports.PetWingConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "petwingiWu%C6F0WV&UcD@0#v^RmZz)K",
        string.sub("petwing&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.PetWingConfig)
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
        local ____exports_petWingConfigList_0 = ____exports.petWingConfigList
        ____exports_petWingConfigList_0[#____exports_petWingConfigList_0 + 1] = obj
        ____exports.petWingConfigMap[obj.id] = obj
    end
end
return ____exports
