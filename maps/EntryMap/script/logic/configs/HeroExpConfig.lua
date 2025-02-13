local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 15,["9"] = 15,["10"] = 15,["12"] = 20,["13"] = 25,["14"] = 15,["15"] = 29,["16"] = 30,["17"] = 31,["18"] = 50,["19"] = 52,["20"] = 53,["21"] = 53,["22"] = 53,["23"] = 53,["24"] = 53,["25"] = 54,["26"] = 55,["28"] = 56,["29"] = 56,["30"] = 57,["31"] = 58,["32"] = 59,["33"] = 60,["35"] = 63,["36"] = 64,["38"] = 66,["40"] = 56,["44"] = 71,["45"] = 73,["47"] = 52});
local ____exports = {}
local fields = {"id", "score"}
____exports.HeroExpConfig = __TS__Class()
local HeroExpConfig = ____exports.HeroExpConfig
HeroExpConfig.name = "HeroExpConfig"
function HeroExpConfig.prototype.____constructor(self)
    self.id = 0
    self.score = 0
end
____exports.heroExpConfigList = {}
____exports.heroExpConfigMap = {}
____exports.map = ____exports.heroExpConfigMap
local encryptModelData = "A83Ctz8XBDH747dK5k1mnLKUCqiEkFiKZOXiE7PJ+Qn/HW6ZjMt1/n66alHqxDoBjmMalw6Euum/nsm7CYDNLR/M8PX0V6Opj31XrPKQ9zRewmKt/2EWmSw9gUW+clA9Bo1Zv36u86VEOxCMZYEkuUq/pVAnzSF1xVfku41hR6s="
function ____exports.HeroExpConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "heroexpiWu%C6F0WV&UcD@0#v^RmZz)K",
        string.sub("heroexp&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.HeroExpConfig)
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
        local ____exports_heroExpConfigList_0 = ____exports.heroExpConfigList
        ____exports_heroExpConfigList_0[#____exports_heroExpConfigList_0 + 1] = obj
        ____exports.heroExpConfigMap[obj.id] = obj
    end
end
return ____exports
