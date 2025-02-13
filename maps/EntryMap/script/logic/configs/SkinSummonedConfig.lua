local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 5,["9"] = 5,["10"] = 15,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 17,["20"] = 17,["21"] = 17,["23"] = 22,["24"] = 27,["25"] = 39,["26"] = 44,["27"] = 50,["28"] = 55,["29"] = 60,["30"] = 17,["35"] = 33,["39"] = 64,["40"] = 65,["41"] = 66,["42"] = 84,["43"] = 86,["44"] = 87,["45"] = 87,["46"] = 87,["47"] = 87,["48"] = 87,["49"] = 88,["50"] = 89,["52"] = 90,["53"] = 90,["54"] = 91,["55"] = 92,["56"] = 93,["57"] = 94,["59"] = 97,["60"] = 98,["62"] = 100,["64"] = 90,["68"] = 105,["69"] = 107,["71"] = 86});
local ____exports = {}
local ____SummonedConfig = include("logic.configs.SummonedConfig")
local summonedConfigMap = ____SummonedConfig.summonedConfigMap
local fields = {
    "id",
    "_summonedId",
    "role",
    "name",
    "changeFrom",
    "changeTo",
    "animeArgs"
}
____exports.SkinSummonedConfig = __TS__Class()
local SkinSummonedConfig = ____exports.SkinSummonedConfig
SkinSummonedConfig.name = "SkinSummonedConfig"
function SkinSummonedConfig.prototype.____constructor(self)
    self.id = 0
    self._summonedId = 0
    self.role = 0
    self.name = vue.ref("")
    self.changeFrom = {}
    self.changeTo = {}
    self.animeArgs = nil
end
__TS__SetDescriptor(
    SkinSummonedConfig.prototype,
    "summonedId",
    {get = function(self)
        return summonedConfigMap[self._summonedId]
    end},
    true
)
____exports.skinSummonedConfigList = {}
____exports.skinSummonedConfigMap = {}
____exports.map = ____exports.skinSummonedConfigMap
local encryptModelData = "d1TzNqvfs+Hlu5wupLNr7nfDAOoJQ6ewvVmQKuvMmBFTg5hRi4pNQ4wUVbGiNHvfiEQ27c7N3uxqzsO2A6/WURSgRLVXWPLDb0gKSFG6Bg7SRUNvIZPyqNfSnj3ytsv4S9ZKtv3i7e0MVwDBxl5BoO4qA/pQZErTX0hvHWnEBPzGkhUCOp2aN54L6omM7aHIL9o/+l/56S7J3ayFRr3zKX+OCzyKUP/fBFawxRO0NaVM3OV+m58oWpEBXsJ21qE0DzowCnlB7XQrZYHZ1owjZ7Z7ECxl/q8kPqQavkUZbUEBpJO8JYyBFh0EwF5yC70eOehYBIXdgwRPqcPe/yzo5RuwFDAgkG8XwRkflkj5gZ2yfckW/LHek8DwjAXpNdueLtse6jm6S8L3gnJEqL9CvadiOYp2uz+ojbjj9e/VGf0GWnaZhKAAprMiaKZNAM+4dEVuZN/cgU3Gp0KyQ3ZCM/pe7koazfoRoVoTC1nZ+O8J8bPd+UMwejFxYGkgkBiyoW3Rvan8t+Ii3ygq07Zs6JZjXP2aX7ve7Le6zNrWtEdnTyPTD7VD15NbM6pqm4DWVrnFXEI8aBi3N7+h0CkMNAXe2QP34h0MWI/BqOyDU9C8igTCjxJN2OnTXXKrChC1O0zSiGDGHcR+WA7JFyCzmbh9HXzPvbD+8QEj9hPsH4HnphM5ErnkaSCiFGSBphR1jSnitT0ugCLrttCTtj0TI8/fvursM3oB5VJNMdPWORmsyDyJjyyvaYJrxNjpD7lUeJeQbp2T2qghVj4Rhxy36JhBuKPTmGoT/O8fK7uKdlXQabPzwou1TE5fixTZPM9plgHPTL+Uz1FvZXt2hZr3ARzL+WSJqJJRAz9DbMhHxlc="
function ____exports.SkinSummonedConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "skinsummonediWu%C6F0WV&UcD@0#v^R",
        string.sub("skinsummoned&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.SkinSummonedConfig)
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
        local ____exports_skinSummonedConfigList_0 = ____exports.skinSummonedConfigList
        ____exports_skinSummonedConfigList_0[#____exports_skinSummonedConfigList_0 + 1] = obj
        ____exports.skinSummonedConfigMap[obj.id] = obj
    end
end
return ____exports
