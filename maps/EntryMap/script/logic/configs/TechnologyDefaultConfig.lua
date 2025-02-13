local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 15,["9"] = 15,["10"] = 15,["12"] = 20,["13"] = 25,["14"] = 30,["15"] = 35,["16"] = 15,["17"] = 39,["18"] = 41,["19"] = 43,["20"] = 44,["21"] = 44,["22"] = 44,["23"] = 44,["24"] = 44,["25"] = 45,["27"] = 46,["28"] = 46,["29"] = 47,["30"] = 48,["31"] = 49,["32"] = 50,["34"] = 53,["35"] = 46,["38"] = 43});
local ____exports = {}
local fields = {"初始农民数量", "初始采集效率", "初始采集数量", "初始移动速度"}
____exports.TechnologyDefaultConfig = __TS__Class()
local TechnologyDefaultConfig = ____exports.TechnologyDefaultConfig
TechnologyDefaultConfig.name = "TechnologyDefaultConfig"
function TechnologyDefaultConfig.prototype.____constructor(self)
    self["初始农民数量"] = 0
    self["初始采集效率"] = 0
    self["初始采集数量"] = 0
    self["初始移动速度"] = 0
end
local encryptModelData = "zFgHdYm0895JcgADyTvieg=="
____exports.technologyDefaultConfig = __TS__New(____exports.TechnologyDefaultConfig)
function ____exports.TechnologyDefaultConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "technologydefaultiWu%C6F0WV&UcD@",
        string.sub("technologydefault&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    local record = modelData[1]
    do
        local i = 0
        while i < #fields do
            local key = fields[i + 1]
            local value = record[i + 1]
            if value == "%null%" then
                value = nil
            end
            ____exports.technologyDefaultConfig[key] = value
            i = i + 1
        end
    end
end
return ____exports
