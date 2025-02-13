local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 15,["12"] = 17,["13"] = 17,["14"] = 17,["16"] = 22,["17"] = 28,["18"] = 33,["19"] = 35,["20"] = 17,["25"] = 40,["26"] = 41,["27"] = 42,["29"] = 44,["30"] = 44,["31"] = 44,["32"] = 44,["35"] = 47,["39"] = 52,["40"] = 53,["41"] = 54,["42"] = 68,["43"] = 70,["44"] = 71,["45"] = 71,["46"] = 71,["47"] = 71,["48"] = 71,["49"] = 72,["50"] = 73,["52"] = 74,["53"] = 74,["54"] = 75,["55"] = 76,["56"] = 77,["57"] = 78,["59"] = 81,["60"] = 82,["62"] = 84,["64"] = 74,["68"] = 89,["69"] = 91,["71"] = 70});
local ____exports = {}
local ____MonsterConfig = include("logic.configs.MonsterConfig")
local monsterConfigMap = ____MonsterConfig.monsterConfigMap
local fields = {"id", "time", "_monsterList"}
____exports.RabbitVsSheepConfig = __TS__Class()
local RabbitVsSheepConfig = ____exports.RabbitVsSheepConfig
RabbitVsSheepConfig.name = "RabbitVsSheepConfig"
function RabbitVsSheepConfig.prototype.____constructor(self)
    self.id = 0
    self.time = 0
    self._monsterList = {}
    self._fkmonsterList = nil
end
__TS__SetDescriptor(
    RabbitVsSheepConfig.prototype,
    "monsterList",
    {get = function(self)
        if self._fkmonsterList == nil then
            if not self._monsterList then
                self._fkmonsterList = {}
            else
                self._fkmonsterList = __TS__ArrayMap(
                    self._monsterList,
                    function(____, a) return monsterConfigMap[a] end
                )
            end
        end
        return self._fkmonsterList
    end},
    true
)
____exports.rabbitVsSheepConfigList = {}
____exports.rabbitVsSheepConfigMap = {}
____exports.map = ____exports.rabbitVsSheepConfigMap
local encryptModelData = "bOgI02MHpOp9HmEl9j4fjX6NsP78waK7R5b0sp/MGQOjHZNJt+wfnz1rwYF8FMXiqZnAhr6yE3+17o5QJPgIuy8lCYuaFcBhbYJVI+w8FP6X1H+rkp1EWOUdDssevLNCo+SXYRHyWCaPgVSNXXDVuV87u+t31AdsWqIWYLW5wsdeA6ZmYr3YGEReE9TepBPqEF1gvKPKugH55Ooiv+L2qw=="
function ____exports.RabbitVsSheepConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "rabbitvssheepiWu%C6F0WV&UcD@0#v^",
        string.sub("rabbitvssheep&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.RabbitVsSheepConfig)
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
        local ____exports_rabbitVsSheepConfigList_0 = ____exports.rabbitVsSheepConfigList
        ____exports_rabbitVsSheepConfigList_0[#____exports_rabbitVsSheepConfigList_0 + 1] = obj
        ____exports.rabbitVsSheepConfigMap[obj.id] = obj
    end
end
return ____exports
