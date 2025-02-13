local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 15,["20"] = 15,["21"] = 15,["22"] = 15,["23"] = 15,["24"] = 15,["25"] = 15,["26"] = 15,["27"] = 15,["28"] = 17,["29"] = 17,["30"] = 17,["32"] = 22,["33"] = 27,["34"] = 32,["35"] = 41,["36"] = 46,["37"] = 51,["38"] = 72,["39"] = 77,["40"] = 79,["41"] = 97,["42"] = 102,["43"] = 110,["44"] = 120,["45"] = 125,["46"] = 130,["47"] = 135,["48"] = 17,["53"] = 84,["54"] = 85,["55"] = 86,["57"] = 88,["58"] = 88,["59"] = 88,["60"] = 88,["63"] = 91,["67"] = 139,["68"] = 140,["69"] = 141,["70"] = 143,["71"] = 182,["72"] = 184,["73"] = 185,["74"] = 185,["75"] = 185,["76"] = 185,["77"] = 185,["78"] = 186,["79"] = 187,["81"] = 188,["82"] = 188,["83"] = 189,["84"] = 190,["85"] = 191,["86"] = 192,["88"] = 195,["89"] = 196,["91"] = 198,["93"] = 188,["97"] = 203,["98"] = 205,["99"] = 208,["100"] = 210,["101"] = 211,["102"] = 212,["103"] = 212,["104"] = 212,["106"] = 214,["109"] = 184});
local ____exports = {}
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local fields = {
    "id",
    "icon",
    "enIcon",
    "quality",
    "name",
    "des",
    "type",
    "_propId",
    "propCount",
    "pointPrice",
    "consumeType",
    "lockType",
    "sponsor",
    "weight",
    "point"
}
____exports.SteamBoxConfig = __TS__Class()
local SteamBoxConfig = ____exports.SteamBoxConfig
SteamBoxConfig.name = "SteamBoxConfig"
function SteamBoxConfig.prototype.____constructor(self)
    self.id = 0
    self.icon = 0
    self.enIcon = 0
    self.quality = 0
    self.name = vue.ref("")
    self.des = vue.ref("")
    self.type = 0
    self._propId = {}
    self._fkpropId = nil
    self.propCount = {}
    self.pointPrice = 0
    self.consumeType = 0
    self.lockType = 0
    self.sponsor = 0
    self.weight = 0
    self.point = 0
end
__TS__SetDescriptor(
    SteamBoxConfig.prototype,
    "propId",
    {get = function(self)
        if self._fkpropId == nil then
            if not self._propId then
                self._fkpropId = {}
            else
                self._fkpropId = __TS__ArrayMap(
                    self._propId,
                    function(____, a) return propConfigMap[a] end
                )
            end
        end
        return self._fkpropId
    end},
    true
)
____exports.steamBoxConfigList = {}
____exports.steamBoxConfigMap = {}
____exports.map = ____exports.steamBoxConfigMap
____exports.steamBoxConfigMap_quality = {}
local encryptModelData = "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"
function ____exports.SteamBoxConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "steamboxiWu%C6F0WV&UcD@0#v^RmZz)",
        string.sub("steambox&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.SteamBoxConfig)
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
        local ____exports_steamBoxConfigList_0 = ____exports.steamBoxConfigList
        ____exports_steamBoxConfigList_0[#____exports_steamBoxConfigList_0 + 1] = obj
        ____exports.steamBoxConfigMap[obj.id] = obj
        if obj.quality ~= nil and obj.quality ~= nil then
            local list = ____exports.steamBoxConfigMap_quality[obj.quality]
            if not list then
                local ____temp_1 = {}
                ____exports.steamBoxConfigMap_quality[obj.quality] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
