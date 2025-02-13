local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 15,["15"] = 15,["16"] = 15,["18"] = 20,["19"] = 25,["20"] = 30,["21"] = 35,["22"] = 40,["23"] = 15,["24"] = 44,["25"] = 45,["26"] = 46,["27"] = 104,["28"] = 106,["29"] = 107,["30"] = 107,["31"] = 107,["32"] = 107,["33"] = 107,["34"] = 108,["35"] = 109,["37"] = 110,["38"] = 110,["39"] = 111,["40"] = 112,["41"] = 113,["42"] = 114,["44"] = 117,["45"] = 118,["47"] = 120,["49"] = 110,["53"] = 125,["54"] = 127,["56"] = 106});
local ____exports = {}
local fields = {
    "id",
    "name",
    "des",
    "zhtw",
    "en"
}
____exports.SoundConfig = __TS__Class()
local SoundConfig = ____exports.SoundConfig
SoundConfig.name = "SoundConfig"
function SoundConfig.prototype.____constructor(self)
    self.id = 0
    self.name = ""
    self.des = ""
    self.zhtw = 0
    self.en = 0
end
____exports.soundConfigList = {}
____exports.soundConfigMap = {}
____exports.map = ____exports.soundConfigMap
local encryptModelData = "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"
function ____exports.SoundConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "soundiWu%C6F0WV&UcD@0#v^RmZz)KKV",
        string.sub("sound&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.SoundConfig)
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
        local ____exports_soundConfigList_0 = ____exports.soundConfigList
        ____exports_soundConfigList_0[#____exports_soundConfigList_0 + 1] = obj
        ____exports.soundConfigMap[obj.id] = obj
    end
end
return ____exports
