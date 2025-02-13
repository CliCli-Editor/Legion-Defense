local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 15,["15"] = 15,["16"] = 15,["18"] = 20,["19"] = 25,["20"] = 30,["21"] = 35,["22"] = 40,["23"] = 15,["24"] = 44,["25"] = 45,["26"] = 46,["27"] = 61,["28"] = 63,["29"] = 64,["30"] = 64,["31"] = 64,["32"] = 64,["33"] = 64,["34"] = 65,["35"] = 66,["37"] = 67,["38"] = 67,["39"] = 68,["40"] = 69,["41"] = 70,["42"] = 71,["44"] = 74,["45"] = 75,["47"] = 77,["49"] = 67,["53"] = 82,["55"] = 63});
local ____exports = {}
local fields = {
    "id",
    "tagNumber",
    "rarity1",
    "rarity2",
    "rarity3"
}
____exports.GenreRandomRuleConfig = __TS__Class()
local GenreRandomRuleConfig = ____exports.GenreRandomRuleConfig
GenreRandomRuleConfig.name = "GenreRandomRuleConfig"
function GenreRandomRuleConfig.prototype.____constructor(self)
    self.id = 0
    self.tagNumber = 0
    self.rarity1 = 0
    self.rarity2 = 0
    self.rarity3 = 0
end
____exports.genreRandomRuleConfigList = {}
____exports.genreRandomRuleConfigMap = {}
____exports.map = ____exports.genreRandomRuleConfigMap
local encryptModelData = "WtA5vq0/Uidw0j5wkQhuRmGQ+kjx0Fqt8lMN5hS8fP79Tufi2Wk8A5SGIT67dl4kH5V9BpKNJfeY4C39Bgfji/aqeVb99INrEz0g5ASydCkfDrDDNlBBw/+kgP7tTVpUeuWVPI4dYzqbLUkYi5cGaQPexgMNVhFhHFajh6lQQc4ZkhhJVGl6PSfi7CYkmJEX"
function ____exports.GenreRandomRuleConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "genrerandomruleiWu%C6F0WV&UcD@0#",
        string.sub("genrerandomrule&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.GenreRandomRuleConfig)
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
        local ____exports_genreRandomRuleConfigList_0 = ____exports.genreRandomRuleConfigList
        ____exports_genreRandomRuleConfigList_0[#____exports_genreRandomRuleConfigList_0 + 1] = obj
    end
end
return ____exports
