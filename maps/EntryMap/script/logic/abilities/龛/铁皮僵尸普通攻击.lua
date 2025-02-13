local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 7,["22"] = 7,["23"] = 9,["24"] = 9,["25"] = 9,["26"] = 9,["27"] = 9,["28"] = 10,["29"] = 11,["30"] = 10,["31"] = 13,["32"] = 14,["33"] = 15,["34"] = 16,["37"] = 19,["38"] = 20,["39"] = 21,["40"] = 22,["41"] = 22,["42"] = 22,["43"] = 22,["44"] = 22,["45"] = 22,["46"] = 22,["47"] = 22,["48"] = 22,["49"] = 22,["50"] = 22,["51"] = 22,["52"] = 23,["53"] = 24,["54"] = 25,["56"] = 27,["57"] = 13,["58"] = 9,["59"] = 9,["60"] = 9,["61"] = 9,["62"] = 9,["63"] = 9,["64"] = 9});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____5929_8D4B_2 = ____Property["天赋_2"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_9 = createAbility
local ____fight_8 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local parent = fightUtils:getAncestor(self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self:playSound(self.owner, 134240944)
    local quantity = ((parent and parent:getValue(_____5929_8D4B_2)) == 1 and 5 or 1 or 1) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
    target:addEffect(ability.skillEntity, 1, quantity)
    local ____target_6 = target
    local ____target_hurt_7 = target.hurt
    local ____ability_skillEntity_4 = ability.skillEntity
    local ____Formula__7269_7406_4F24_5BB3_5 = Formula["物理伤害"]
    local ____self_3 = _____6570_503C["龛"]["铁皮僵尸普通攻击"]
    ____target_hurt_7(
        ____target_6,
        ____ability_skillEntity_4,
        ____Formula__7269_7406_4F24_5BB3_5,
        ____self_3["伤害"](____self_3, self.owner),
        AbilityType["普攻"]
    )
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.5
    end
    self:setUnderParticle(target, 134259689, scale)
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134265432,
    ____class_0,
    {["施法开始"] = 0.5, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0}
)
return ____exports
