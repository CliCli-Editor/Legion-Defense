local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 5,["17"] = 5,["18"] = 7,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 9,["24"] = 9,["25"] = 11,["26"] = 12,["27"] = 12,["28"] = 12,["29"] = 12,["30"] = 12,["31"] = 12,["32"] = 12,["33"] = 12,["34"] = 12,["35"] = 12,["36"] = 12,["37"] = 12,["38"] = 12,["39"] = 12,["40"] = 12,["41"] = 13,["42"] = 14,["43"] = 14,["44"] = 14,["45"] = 14,["46"] = 14,["47"] = 14,["48"] = 14,["49"] = 14,["50"] = 15,["51"] = 16,["52"] = 16,["53"] = 16,["54"] = 16,["55"] = 16,["56"] = 16,["57"] = 16,["58"] = 16,["59"] = 16,["62"] = 11,["63"] = 7,["64"] = 7,["65"] = 7,["66"] = 7,["67"] = 7,["68"] = 7,["69"] = 7});
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
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_12 = createAbility
local ____fight_11 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____fightUtils_5 = fightUtils
    local ____fightUtils_summon_6 = fightUtils.summon
    local ____self_owner_3 = self.owner
    local ____self_1 = _____6570_503C["游侠"]["大招"]
    local ____self_1__53EC_5524_7269id_result_4 = ____self_1["召唤物id"](____self_1)
    local ____self_2 = _____6570_503C["游侠"]["大招"]
    local summonEntity = ____fightUtils_summon_6(
        ____fightUtils_5,
        ____self_owner_3,
        ____self_1__53EC_5524_7269id_result_4,
        nil,
        nil,
        1,
        ____self_2["召唤物数量上限"](____self_2)
    )
    if summonEntity ~= nil then
        self:addParticle(
            102472,
            summonEntity:getPosition(),
            nil,
            1,
            1,
            10
        )
        if self.owner:getValue(_____5929_8D4B_3) == 2 then
            local ____summonEntity_9 = summonEntity
            local ____summonEntity_addEffect_10 = summonEntity.addEffect
            local ____self_skillEntity_8 = self.skillEntity
            local ____self_7 = _____6570_503C["游侠"]["大招"]
            ____summonEntity_addEffect_10(
                ____summonEntity_9,
                ____self_skillEntity_8,
                ____self_7["天赋32附加buff"](____self_7)
            )
        end
    end
end
____exports.key = ____createAbility_12(
    nil,
    ____fight_11,
    134267982,
    ____class_0,
    {["施法开始"] = 0, ["施法引导"] = 0, ["施法出手"] = 0, ["施法完成"] = 0}
)
return ____exports
