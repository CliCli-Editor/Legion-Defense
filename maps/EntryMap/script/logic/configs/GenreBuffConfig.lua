local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 9,["8"] = 9,["9"] = 9,["10"] = 9,["11"] = 9,["12"] = 9,["13"] = 9,["14"] = 11,["15"] = 11,["16"] = 11,["18"] = 16,["19"] = 21,["20"] = 26,["21"] = 31,["22"] = 36,["23"] = 11,["24"] = 40,["25"] = 41,["26"] = 52,["27"] = 53,["28"] = 53,["29"] = 53,["30"] = 53,["31"] = 53,["32"] = 53,["33"] = 52,["34"] = 53,["35"] = 53,["36"] = 53,["37"] = 53,["38"] = 53,["39"] = 53,["40"] = 52,["41"] = 53,["42"] = 53,["43"] = 53,["44"] = 53,["45"] = 53,["46"] = 53,["47"] = 52,["48"] = 53,["49"] = 53,["50"] = 53,["51"] = 53,["52"] = 53,["53"] = 53,["54"] = 52,["55"] = 53,["56"] = 53,["57"] = 53,["58"] = 53,["59"] = 53,["60"] = 53,["61"] = 52,["62"] = 52,["63"] = 56,["64"] = 57,["65"] = 58,["67"] = 59,["68"] = 59,["69"] = 60,["70"] = 61,["71"] = 62,["72"] = 63,["74"] = 66,["75"] = 59,["79"] = 69,["80"] = 71,["82"] = 56});
local ____exports = {}
local fields = {
    "id",
    "type",
    "name",
    "icon",
    "des"
}
____exports.GenreBuffConfig = __TS__Class()
local GenreBuffConfig = ____exports.GenreBuffConfig
GenreBuffConfig.name = "GenreBuffConfig"
function GenreBuffConfig.prototype.____constructor(self)
    self.id = 0
    self.type = 0
    self.name = ""
    self.icon = 0
    self.des = ""
end
____exports.genreBuffConfigList = {}
____exports.genreBuffConfigMap = {}
local modelData = {
    {
        1,
        1,
        "毒",
        108700,
        ""
    },
    {
        2,
        2,
        "冰霜",
        109161,
        ""
    },
    {
        3,
        3,
        "怒火",
        106507,
        ""
    },
    {
        4,
        4,
        "易伤",
        109239,
        ""
    },
    {
        5,
        5,
        "护盾",
        904679,
        ""
    }
}
function ____exports.GenreBuffConfigInit(self, data)
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.GenreBuffConfig)
        do
            local i = 0
            while i < #fields do
                local key = fields[i + 1]
                local value = record[i + 1]
                if value == "%null%" then
                    value = nil
                end
                obj[key] = value
                i = i + 1
            end
        end
        local ____exports_genreBuffConfigList_0 = ____exports.genreBuffConfigList
        ____exports_genreBuffConfigList_0[#____exports_genreBuffConfigList_0 + 1] = obj
        ____exports.genreBuffConfigMap[obj.id] = obj
    end
end
return ____exports
