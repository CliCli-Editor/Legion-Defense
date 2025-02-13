local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 13,["18"] = 15,["19"] = 15,["20"] = 15,["22"] = 20,["23"] = 25,["24"] = 30,["25"] = 35,["26"] = 40,["27"] = 45,["28"] = 50,["29"] = 55,["30"] = 60,["31"] = 15,["32"] = 64,["33"] = 66,["34"] = 68,["35"] = 69,["36"] = 69,["37"] = 69,["38"] = 69,["39"] = 69,["40"] = 70,["42"] = 71,["43"] = 71,["44"] = 72,["45"] = 73,["46"] = 74,["47"] = 75,["49"] = 78,["50"] = 71,["53"] = 68});
local ____exports = {}
local fields = {
    "MVP积分倍率",
    "sMVP积分倍率",
    "胜利场次每分钟积分3v3",
    "失败场次每分钟积分3v3",
    "胜利场次每分钟积分2v2",
    "失败场次每分钟积分2v2",
    "胜利场次每分钟积分1v1",
    "失败场次每分钟积分1v1",
    "单局时长上限"
}
____exports.HeroExpDefaultConfig = __TS__Class()
local HeroExpDefaultConfig = ____exports.HeroExpDefaultConfig
HeroExpDefaultConfig.name = "HeroExpDefaultConfig"
function HeroExpDefaultConfig.prototype.____constructor(self)
    self["MVP积分倍率"] = 0
    self["sMVP积分倍率"] = 0
    self["胜利场次每分钟积分3v3"] = 0
    self["失败场次每分钟积分3v3"] = 0
    self["胜利场次每分钟积分2v2"] = 0
    self["失败场次每分钟积分2v2"] = 0
    self["胜利场次每分钟积分1v1"] = 0
    self["失败场次每分钟积分1v1"] = 0
    self["单局时长上限"] = 0
end
local encryptModelData = "cy1pQyhCGHVb0d8EGLiyT5eMgYP48hzS1ZNVuVyTdNY="
____exports.heroExpDefaultConfig = __TS__New(____exports.HeroExpDefaultConfig)
function ____exports.HeroExpDefaultConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "heroexpdefaultiWu%C6F0WV&UcD@0#v",
        string.sub("heroexpdefault&49UxrT#pizdc*Km", 2, 17),
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
            ____exports.heroExpDefaultConfig[key] = value
            i = i + 1
        end
    end
end
return ____exports
