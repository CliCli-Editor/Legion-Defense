local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 5,["9"] = 5,["10"] = 15,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 17,["20"] = 17,["21"] = 17,["23"] = 22,["24"] = 27,["25"] = 39,["26"] = 44,["27"] = 56,["28"] = 61,["29"] = 73,["30"] = 17,["35"] = 33,["43"] = 50,["51"] = 67,["55"] = 77,["56"] = 78,["57"] = 79,["58"] = 211,["59"] = 213,["60"] = 214,["61"] = 214,["62"] = 214,["63"] = 214,["64"] = 214,["65"] = 215,["66"] = 216,["68"] = 217,["69"] = 217,["70"] = 218,["71"] = 219,["72"] = 220,["73"] = 221,["75"] = 224,["76"] = 225,["78"] = 227,["80"] = 217,["84"] = 232,["85"] = 234,["87"] = 213});
local ____exports = {}
local ____MonsterConfig = include("logic.configs.MonsterConfig")
local monsterConfigMap = ____MonsterConfig.monsterConfigMap
local fields = {
    "id",
    "_monster1",
    "monster1Num",
    "_monster2",
    "monster2Num",
    "_monster3",
    "monster3Num"
}
____exports.MonsterPoolConfig = __TS__Class()
local MonsterPoolConfig = ____exports.MonsterPoolConfig
MonsterPoolConfig.name = "MonsterPoolConfig"
function MonsterPoolConfig.prototype.____constructor(self)
    self.id = 0
    self._monster1 = 0
    self.monster1Num = 0
    self._monster2 = 0
    self.monster2Num = 0
    self._monster3 = 0
    self.monster3Num = 0
end
__TS__SetDescriptor(
    MonsterPoolConfig.prototype,
    "monster1",
    {get = function(self)
        return monsterConfigMap[self._monster1]
    end},
    true
)
__TS__SetDescriptor(
    MonsterPoolConfig.prototype,
    "monster2",
    {get = function(self)
        return monsterConfigMap[self._monster2]
    end},
    true
)
__TS__SetDescriptor(
    MonsterPoolConfig.prototype,
    "monster3",
    {get = function(self)
        return monsterConfigMap[self._monster3]
    end},
    true
)
____exports.monsterPoolConfigList = {}
____exports.monsterPoolConfigMap = {}
____exports.map = ____exports.monsterPoolConfigMap
local encryptModelData = "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"
function ____exports.MonsterPoolConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "monsterpooliWu%C6F0WV&UcD@0#v^Rm",
        string.sub("monsterpool&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.MonsterPoolConfig)
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
        local ____exports_monsterPoolConfigList_0 = ____exports.monsterPoolConfigList
        ____exports_monsterPoolConfigList_0[#____exports_monsterPoolConfigList_0 + 1] = obj
        ____exports.monsterPoolConfigMap[obj.id] = obj
    end
end
return ____exports
