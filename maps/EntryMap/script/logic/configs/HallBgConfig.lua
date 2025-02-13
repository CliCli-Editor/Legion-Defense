local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 15,["18"] = 15,["19"] = 15,["21"] = 20,["22"] = 25,["23"] = 30,["24"] = 35,["25"] = 40,["26"] = 45,["27"] = 50,["28"] = 55,["29"] = 15,["30"] = 59,["31"] = 60,["32"] = 61,["33"] = 69,["34"] = 71,["35"] = 72,["36"] = 72,["37"] = 72,["38"] = 72,["39"] = 72,["40"] = 73,["41"] = 74,["43"] = 75,["44"] = 75,["45"] = 76,["46"] = 77,["47"] = 78,["48"] = 79,["50"] = 82,["51"] = 83,["53"] = 85,["55"] = 75,["59"] = 90,["60"] = 92,["62"] = 71});
local ____exports = {}
local fields = {
    "id",
    "name",
    "decorate",
    "icon",
    "spine",
    "bg",
    "scale",
    "isDefault"
}
____exports.HallBgConfig = __TS__Class()
local HallBgConfig = ____exports.HallBgConfig
HallBgConfig.name = "HallBgConfig"
function HallBgConfig.prototype.____constructor(self)
    self.id = 0
    self.name = vue.ref("")
    self.decorate = 0
    self.icon = 0
    self.spine = 0
    self.bg = 0
    self.scale = 0
    self.isDefault = 0
end
____exports.hallBgConfigList = {}
____exports.hallBgConfigMap = {}
____exports.map = ____exports.hallBgConfigMap
local encryptModelData = "vcWFKyBwDEPFXTY1/9NS4q6W9cxk4k8QZ9/H1mIjZWaLykWIfIaMkOvuvIr71mopTlTw5WzIryytpuhA9QNRBmB4neXoCCQMD/sMSnA06GUUb2nHCcyrSRuUqTW9PqLpvlbbE1D6buCZRIOazvtAHg=="
function ____exports.HallBgConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "hallbgiWu%C6F0WV&UcD@0#v^RmZz)KK",
        string.sub("hallbg&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.HallBgConfig)
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
        local ____exports_hallBgConfigList_0 = ____exports.hallBgConfigList
        ____exports_hallBgConfigList_0[#____exports_hallBgConfigList_0 + 1] = obj
        ____exports.hallBgConfigMap[obj.id] = obj
    end
end
return ____exports
