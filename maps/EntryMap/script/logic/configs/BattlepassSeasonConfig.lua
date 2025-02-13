local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayMap = ____lualib.__TS__ArrayMap
local __TS__SetDescriptor = ____lualib.__TS__SetDescriptor
local __TS__New = ____lualib.__TS__New
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 5,["10"] = 5,["11"] = 6,["12"] = 6,["13"] = 16,["14"] = 16,["15"] = 16,["16"] = 16,["17"] = 16,["18"] = 16,["19"] = 16,["20"] = 16,["21"] = 16,["22"] = 16,["23"] = 16,["24"] = 16,["25"] = 16,["26"] = 16,["27"] = 16,["28"] = 16,["29"] = 16,["30"] = 16,["31"] = 16,["32"] = 16,["33"] = 16,["34"] = 16,["35"] = 18,["36"] = 18,["37"] = 18,["39"] = 23,["40"] = 28,["41"] = 33,["42"] = 38,["43"] = 45,["44"] = 52,["45"] = 57,["46"] = 64,["47"] = 71,["48"] = 76,["49"] = 82,["50"] = 88,["51"] = 94,["52"] = 99,["53"] = 101,["54"] = 120,["55"] = 125,["56"] = 133,["57"] = 138,["58"] = 143,["59"] = 145,["60"] = 163,["61"] = 18,["66"] = 106,["67"] = 107,["68"] = 108,["70"] = 110,["71"] = 110,["72"] = 110,["73"] = 110,["76"] = 113,["84"] = 150,["85"] = 151,["86"] = 152,["88"] = 154,["89"] = 154,["90"] = 154,["91"] = 154,["94"] = 157,["98"] = 167,["99"] = 168,["100"] = 169,["101"] = 178,["102"] = 180,["103"] = 181,["104"] = 181,["105"] = 181,["106"] = 181,["107"] = 181,["108"] = 182,["109"] = 183,["111"] = 184,["112"] = 184,["113"] = 185,["114"] = 186,["115"] = 187,["116"] = 188,["118"] = 191,["119"] = 192,["121"] = 194,["123"] = 184,["127"] = 199,["128"] = 201,["130"] = 180});
local ____exports = {}
local ____BattlepassTaskConfig = include("logic.configs.BattlepassTaskConfig")
local battlepassTaskConfigMap = ____BattlepassTaskConfig.battlepassTaskConfigMap
local ____PropConfig = include("logic.configs.PropConfig")
local propConfigMap = ____PropConfig.propConfigMap
local fields = {
    "id",
    "seasonName",
    "battlePassPayedItem",
    "expId",
    "winDrop",
    "loseDrop",
    "scoreId",
    "scoreIdle",
    "scoreDrop",
    "startTime",
    "endTime",
    "battlepassRewardGroup1",
    "battlepassRewardGroup2",
    "_battlepassTaskConfigGroup",
    "payExp",
    "getExp",
    "maxExp",
    "specialexp",
    "_specialPropId",
    "num"
}
____exports.BattlepassSeasonConfig = __TS__Class()
local BattlepassSeasonConfig = ____exports.BattlepassSeasonConfig
BattlepassSeasonConfig.name = "BattlepassSeasonConfig"
function BattlepassSeasonConfig.prototype.____constructor(self)
    self.id = 0
    self.seasonName = vue.ref("")
    self.battlePassPayedItem = 0
    self.expId = 0
    self.winDrop = 0
    self.loseDrop = 0
    self.scoreId = 0
    self.scoreIdle = 0
    self.scoreDrop = 0
    self.startTime = 0
    self.endTime = 0
    self.battlepassRewardGroup1 = 0
    self.battlepassRewardGroup2 = 0
    self._battlepassTaskConfigGroup = {}
    self._fkbattlepassTaskConfigGroup = nil
    self.payExp = {}
    self.getExp = 0
    self.maxExp = {}
    self.specialexp = 0
    self._specialPropId = {}
    self._fkspecialPropId = nil
    self.num = {}
end
__TS__SetDescriptor(
    BattlepassSeasonConfig.prototype,
    "battlepassTaskConfigGroup",
    {get = function(self)
        if self._fkbattlepassTaskConfigGroup == nil then
            if not self._battlepassTaskConfigGroup then
                self._fkbattlepassTaskConfigGroup = {}
            else
                self._fkbattlepassTaskConfigGroup = __TS__ArrayMap(
                    self._battlepassTaskConfigGroup,
                    function(____, a) return battlepassTaskConfigMap[a] end
                )
            end
        end
        return self._fkbattlepassTaskConfigGroup
    end},
    true
)
__TS__SetDescriptor(
    BattlepassSeasonConfig.prototype,
    "specialPropId",
    {get = function(self)
        if self._fkspecialPropId == nil then
            if not self._specialPropId then
                self._fkspecialPropId = {}
            else
                self._fkspecialPropId = __TS__ArrayMap(
                    self._specialPropId,
                    function(____, a) return propConfigMap[a] end
                )
            end
        end
        return self._fkspecialPropId
    end},
    true
)
____exports.battlepassSeasonConfigList = {}
____exports.battlepassSeasonConfigMap = {}
____exports.map = ____exports.battlepassSeasonConfigMap
local encryptModelData = "SJbDmtdP2VyJvTJ/tHLWthtFunsEChkvFhlGMaZNXpwfxq7u9YgxV/+99NY+tk29diCgbqcj6dA8o+BlFHEpUSyv7XyQ1nLmjGA/IScbWOmWLR/YOr+qu7yFgzPEW/5KbibJGGOUaXvM42tLY0tsUb+MHK1FdubEU9f5qaNwHu8uTHqG02qEueMXvOEheeciYy2iIWFEypNWt6lDzozXv734fPY+WhRWq7yZyPI91mB2AFBpcdQf7gl2L8bJHUi8lkdvi29deSSKjaBV1A2P7Wj0DIinJJ/er1NpkU7wLvxFg5MUVHOqzyrQ7qd2oIlgksNXDS2wLyA5aUNQnsjjYB/xqgnuu4fW3nZzQkwLLHmLKA7l8FeLn4NzOn4xsSAjA80JYdWK0p5lvkSSzHrbVA=="
function ____exports.BattlepassSeasonConfigInit(self, data)
    local modelData = JSON:parse(y3.aes.decrypt(
        "battlepassseasoniWu%C6F0WV&UcD@0",
        string.sub("battlepassseason&49UxrT#pizdc*Km", 2, 17),
        y3.base64.decode(encryptModelData)
    ))
    for ____, record in ipairs(data or modelData) do
        local obj = __TS__New(____exports.BattlepassSeasonConfig)
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
        local ____exports_battlepassSeasonConfigList_0 = ____exports.battlepassSeasonConfigList
        ____exports_battlepassSeasonConfigList_0[#____exports_battlepassSeasonConfigList_0 + 1] = obj
        ____exports.battlepassSeasonConfigMap[obj.id] = obj
    end
end
return ____exports
