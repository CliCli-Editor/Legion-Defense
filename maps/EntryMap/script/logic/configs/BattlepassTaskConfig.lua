local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 13,["8"] = 13,["9"] = 13,["10"] = 13,["11"] = 13,["12"] = 13,["13"] = 13,["14"] = 13,["15"] = 13,["16"] = 13,["17"] = 15,["18"] = 15,["19"] = 15,["21"] = 20,["22"] = 25,["23"] = 33,["24"] = 38,["25"] = 43,["26"] = 48,["27"] = 53,["28"] = 58,["29"] = 15,["30"] = 62,["31"] = 63,["32"] = 64,["33"] = 72,["34"] = 74,["35"] = 75,["36"] = 75,["37"] = 75,["38"] = 75,["39"] = 75,["40"] = 76,["41"] = 77,["43"] = 78,["44"] = 78,["45"] = 79,["46"] = 80,["47"] = 81,["48"] = 82,["50"] = 85,["51"] = 86,["53"] = 88,["55"] = 78,["59"] = 93,["60"] = 95,["62"] = 74});
local ____exports = {}
local fields = {
    "id",
    "group",
    "taskType",
    "exp",
    "taskName",
    "taskDes",
    "condition1",
    "conditionArg1"
}
____exports.BattlepassTaskConfig = __TS__Class()
local BattlepassTaskConfig = ____exports.BattlepassTaskConfig
BattlepassTaskConfig.name = "BattlepassTaskConfig"
function BattlepassTaskConfig.prototype.____constructor(self)
    self.id = 0
    self.group = 0
    self.taskType = 0
    self.exp = 0
    self.taskName = vue.ref("")
    self.taskDes = vue.ref("")
    self.condition1 = {}
    self.conditionArg1 = {}
end
____exports.battlepassTaskConfigList = {}
____exports.battlepassTaskConfigMap = {}
____exports.map = ____exports.battlepassTaskConfigMap
local encryptModelData = "XR5nOPhl2D2BPE7JphhJTJ+qiy4Wr/1dW59qIO/PK5ufuBya2H9uExxeU7XEZ75y72NW9BVYbZb5Qylr5EwD4x4c3EhVLuZbRYs/ZVbpZMy7iDbiMNuqvPg+ySxu+SdIuJKa/ny1092Yuet0jERH7eS8/tBvCz3v+FBsA21tBKzT/Qe8Zpbwqv6JZwMa4hXYmWv57RTmcZXP5Ij/ebDENSvhydACw6nQVaicBVTxuJYxMeNiaNFJwlv/0HZCNq7AEWGdlYDOPtuBLCdMd9o0lrqK7KikFjq83NBm1yFj8tMd095fMoKuEdgVK8vOipvm"
function ____exports.BattlepassTaskConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "battlepasstaskiWu%C6F0WV&UcD@0#v",
        string.sub("battlepasstask&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.BattlepassTaskConfig)
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
        local ____exports_battlepassTaskConfigList_0 = ____exports.battlepassTaskConfigList
        ____exports_battlepassTaskConfigList_0[#____exports_battlepassTaskConfigList_0 + 1] = obj
        ____exports.battlepassTaskConfigMap[obj.id] = obj
    end
end
return ____exports
