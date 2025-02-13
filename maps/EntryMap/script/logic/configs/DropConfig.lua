local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 5,["9"] = 5,["10"] = 15,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 17,["20"] = 17,["21"] = 17,["23"] = 22,["24"] = 27,["25"] = 33,["26"] = 40,["27"] = 45,["28"] = 57,["29"] = 62,["30"] = 17,["35"] = 51,["39"] = 66,["40"] = 67,["41"] = 68,["42"] = 70,["43"] = 396,["44"] = 398,["45"] = 399,["46"] = 399,["47"] = 399,["48"] = 399,["49"] = 399,["50"] = 400,["51"] = 401,["53"] = 402,["54"] = 402,["55"] = 403,["56"] = 404,["57"] = 405,["58"] = 406,["60"] = 409,["61"] = 410,["63"] = 412,["65"] = 402,["69"] = 417,["70"] = 419,["71"] = 422,["72"] = 424,["73"] = 425,["74"] = 426,["75"] = 426,["76"] = 426,["78"] = 428,["81"] = 398});
local ____exports = {}
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local fields = {
    "id",
    "dropId",
    "idGroup",
    "rarity",
    "_propId",
    "number",
    "weight"
}
____exports.DropConfig = __TS__Class()
local DropConfig = ____exports.DropConfig
DropConfig.name = "DropConfig"
function DropConfig.prototype.____constructor(self)
    self.id = 0
    self.dropId = 0
    self.idGroup = 0
    self.rarity = 0
    self._propId = 0
    self.number = 0
    self.weight = 0
end
__TS__SetDescriptor(
    DropConfig.prototype,
    "propId",
    {get = function(self)
        return propConfigMap[self._propId]
    end},
    true
)
____exports.dropConfigList = {}
____exports.dropConfigMap = {}
____exports.map = ____exports.dropConfigMap
____exports.dropConfigMap_dropId = {}
local encryptModelData = "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"
function ____exports.DropConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "dropiWu%C6F0WV&UcD@0#v^RmZz)KKV~",
        string.sub("drop&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.DropConfig)
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
        local ____exports_dropConfigList_0 = ____exports.dropConfigList
        ____exports_dropConfigList_0[#____exports_dropConfigList_0 + 1] = obj
        ____exports.dropConfigMap[obj.id] = obj
        if obj.dropId ~= nil and obj.dropId ~= nil then
            local list = ____exports.dropConfigMap_dropId[obj.dropId]
            if not list then
                local ____temp_1 = {}
                ____exports.dropConfigMap_dropId[obj.dropId] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
