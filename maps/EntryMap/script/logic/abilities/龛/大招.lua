local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 7,["17"] = 7,["18"] = 7,["19"] = 7,["20"] = 7,["21"] = 8,["22"] = 9,["23"] = 8,["24"] = 11,["25"] = 12,["26"] = 13,["27"] = 13,["28"] = 13,["29"] = 13,["30"] = 13,["31"] = 13,["32"] = 13,["33"] = 13,["34"] = 14,["35"] = 14,["36"] = 14,["37"] = 14,["38"] = 14,["39"] = 14,["40"] = 14,["41"] = 11,["42"] = 7,["43"] = 7,["44"] = 7,["45"] = 7,["46"] = 7,["47"] = 7,["48"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____Property = include("logic.models.Property")
local _____5929_8D4B_3 = ____Property["天赋_3"]
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local ____createAbility_2 = createAbility
local ____fight_1 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play("ability3")
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local id = self.owner:getValue(_____5929_8D4B_3) == 1 and 13 or (self.owner:getValue(_____5929_8D4B_3) == 2 and 14 or 12)
    fightUtils:summon(
        self.owner,
        id,
        nil,
        nil,
        2,
        2
    )
    self:addParticle(
        134275495,
        self.owner:getPosition(),
        nil,
        1,
        1
    )
end
____exports.key = ____createAbility_2(
    nil,
    ____fight_1,
    134258674,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0.4, ["施法完成"] = 0.5}
)
return ____exports
