local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 15,["12"] = 15,["13"] = 15,["14"] = 15,["15"] = 15,["16"] = 15,["17"] = 15,["18"] = 15,["19"] = 15,["20"] = 15,["21"] = 15,["22"] = 15,["23"] = 15,["24"] = 17,["25"] = 17,["26"] = 17,["28"] = 22,["29"] = 27,["30"] = 32,["31"] = 37,["32"] = 39,["33"] = 57,["34"] = 62,["35"] = 68,["36"] = 73,["37"] = 78,["38"] = 83,["39"] = 89,["40"] = 17,["45"] = 44,["46"] = 45,["47"] = 46,["49"] = 48,["50"] = 48,["51"] = 48,["52"] = 48,["55"] = 51,["59"] = 93,["60"] = 94,["61"] = 95,["62"] = 97,["63"] = 119,["64"] = 121,["65"] = 122,["66"] = 122,["67"] = 122,["68"] = 122,["69"] = 122,["70"] = 123,["71"] = 124,["73"] = 125,["74"] = 125,["75"] = 126,["76"] = 127,["77"] = 128,["78"] = 129,["80"] = 132,["81"] = 133,["83"] = 135,["85"] = 125,["89"] = 140,["90"] = 142,["91"] = 145,["92"] = 147,["93"] = 148,["94"] = 149,["95"] = 149,["96"] = 149,["98"] = 151,["101"] = 121});
local ____exports = {}
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local fields = {
    "task",
    "taskName",
    "des",
    "_propId",
    "num",
    "rewardDes",
    "taskCondition1",
    "taskValue1",
    "taskCondition2",
    "taskValue2",
    "season"
}
____exports.SeasonTaskConfig = __TS__Class()
local SeasonTaskConfig = ____exports.SeasonTaskConfig
SeasonTaskConfig.name = "SeasonTaskConfig"
function SeasonTaskConfig.prototype.____constructor(self)
    self.task = 0
    self.taskName = vue.ref("")
    self.des = vue.ref("")
    self._propId = {}
    self._fkpropId = nil
    self.num = {}
    self.rewardDes = vue.ref("")
    self.taskCondition1 = 0
    self.taskValue1 = 0
    self.taskCondition2 = 0
    self.taskValue2 = 0
    self.season = 0
end
__TS__SetDescriptor(
    SeasonTaskConfig.prototype,
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
____exports.seasonTaskConfigList = {}
____exports.seasonTaskConfigMap = {}
____exports.map = ____exports.seasonTaskConfigMap
____exports.seasonTaskConfigMap_season = {}
local encryptModelData = "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"
function ____exports.SeasonTaskConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "seasontaskiWu%C6F0WV&UcD@0#v^RmZ",
        string.sub("seasontask&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.SeasonTaskConfig)
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
        local ____exports_seasonTaskConfigList_0 = ____exports.seasonTaskConfigList
        ____exports_seasonTaskConfigList_0[#____exports_seasonTaskConfigList_0 + 1] = obj
        ____exports.seasonTaskConfigMap[obj.task] = obj
        if obj.season ~= nil and obj.season ~= nil then
            local list = ____exports.seasonTaskConfigMap_season[obj.season]
            if not list then
                local ____temp_1 = {}
                ____exports.seasonTaskConfigMap_season[obj.season] = ____temp_1
                list = ____temp_1
            end
            list[#list + 1] = obj
        end
    end
end
return ____exports
