local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 9,["17"] = 9,["18"] = 9,["19"] = 9,["20"] = 9,["21"] = 11,["22"] = 12,["23"] = 11,["24"] = 14,["25"] = 15,["26"] = 15,["27"] = 15,["28"] = 15,["29"] = 15,["30"] = 15,["31"] = 15,["32"] = 15,["33"] = 16,["34"] = 17,["35"] = 17,["36"] = 17,["37"] = 17,["38"] = 17,["39"] = 17,["40"] = 17,["41"] = 17,["43"] = 19,["44"] = 20,["45"] = 21,["46"] = 21,["47"] = 21,["48"] = 21,["50"] = 14,["51"] = 9,["52"] = 9,["53"] = 9,["54"] = 9,["55"] = 9,["56"] = 9,["57"] = 9});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Property = include("logic.models.Property")
local _____5929_8D4B_2 = ____Property["天赋_2"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local ____createAbility_2 = createAbility
local ____fight_1 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("attack2")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local summonEntity = fightUtils:summon(
        self.owner,
        21,
        nil,
        nil,
        1,
        3
    )
    if summonEntity ~= nil then
        self:addParticle(
            104765,
            summonEntity:getPosition(),
            nil,
            1,
            1,
            10
        )
    end
    local effectEntity = self.owner:getEffectEntities(self.owner:getValue(_____5929_8D4B_2) == 2 and 102024 or 102021)
    if #effectEntity > 0 and effectEntity[1] ~= nil then
        effectEntity[1]:setStore(
            0,
            effectEntity[1]:s(0) + 1
        )
    end
end
____exports.key = ____createAbility_2(
    nil,
    ____fight_1,
    134243853,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.2, ["施法完成"] = 0.4}
)
return ____exports
