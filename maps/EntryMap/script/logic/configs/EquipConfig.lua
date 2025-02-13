local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 15,["20"] = 15,["21"] = 17,["22"] = 17,["23"] = 17,["25"] = 25,["26"] = 30,["27"] = 35,["28"] = 40,["29"] = 45,["30"] = 51,["31"] = 59,["32"] = 64,["33"] = 66,["34"] = 17,["39"] = 71,["40"] = 72,["41"] = 73,["43"] = 75,["44"] = 75,["45"] = 75,["46"] = 75,["49"] = 78,["53"] = 83,["54"] = 84,["55"] = 85,["56"] = 87,["57"] = 89,["58"] = 153,["59"] = 155,["60"] = 156,["61"] = 156,["62"] = 156,["63"] = 156,["64"] = 156,["65"] = 157,["66"] = 158,["68"] = 159,["69"] = 159,["70"] = 160,["71"] = 161,["72"] = 162,["73"] = 163,["75"] = 166,["76"] = 167,["78"] = 169,["80"] = 159,["84"] = 174,["85"] = 176,["86"] = 179,["87"] = 181,["88"] = 182,["89"] = 183,["90"] = 183,["91"] = 183,["93"] = 185,["95"] = 190,["96"] = 192,["97"] = 193,["98"] = 194,["99"] = 194,["100"] = 194,["102"] = 196,["105"] = 155});
local ____exports = {}
local ____EffectConfig = include("logic.configs.EffectConfig")
local effectConfigMap = ____EffectConfig.effectConfigMap
local fields = {
    "id",
    "groupId",
    "name",
    "icon",
    "genre",
    "des",
    "quality",
    "_effect"
}
____exports.EquipConfig = __TS__Class()
local EquipConfig = ____exports.EquipConfig
EquipConfig.name = "EquipConfig"
function EquipConfig.prototype.____constructor(self)
    self.id = 0
    self.groupId = 0
    self.name = vue.ref("")
    self.icon = 0
    self.genre = {}
    self.des = vue.ref("")
    self.quality = 0
    self._effect = {}
    self._fkeffect = nil
end
__TS__SetDescriptor(
    EquipConfig.prototype,
    "effect",
    {get = function(self)
        if self._fkeffect == nil then
            if not self._effect then
                self._fkeffect = {}
            else
                self._fkeffect = __TS__ArrayMap(
                    self._effect,
                    function(____, a) return effectConfigMap[a] end
                )
            end
        end
        return self._fkeffect
    end},
    true
)
____exports.equipConfigList = {}
____exports.equipConfigMap = {}
____exports.map = ____exports.equipConfigMap
____exports.equipConfigMap_groupId = {}
____exports.equipConfigMap_quality = {}
local encryptModelData = "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"
function ____exports.EquipConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "equipiWu%C6F0WV&UcD@0#v^RmZz)KKV",
        string.sub("equip&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.EquipConfig)
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
        local ____exports_equipConfigList_0 = ____exports.equipConfigList
        ____exports_equipConfigList_0[#____exports_equipConfigList_0 + 1] = obj
        ____exports.equipConfigMap[obj.id] = obj
        if obj.groupId ~= nil and obj.groupId ~= nil then
            local list = ____exports.equipConfigMap_groupId[obj.groupId]
            if not list then
                local ____temp_1 = {}
                ____exports.equipConfigMap_groupId[obj.groupId] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
        if obj.quality ~= nil and obj.quality ~= nil then
            local list = ____exports.equipConfigMap_quality[obj.quality]
            if not list then
                local ____temp_2 = {}
                ____exports.equipConfigMap_quality[obj.quality] = ____temp_2
                list = ____temp_2
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
