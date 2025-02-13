local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 9,["27"] = 10,["28"] = 9,["29"] = 12,["30"] = 13,["31"] = 13,["32"] = 14,["33"] = 15,["36"] = 18,["37"] = 19,["38"] = 19,["39"] = 19,["40"] = 19,["41"] = 19,["42"] = 19,["43"] = 19,["44"] = 19,["45"] = 19,["46"] = 20,["47"] = 21,["48"] = 22,["50"] = 24,["51"] = 25,["52"] = 25,["53"] = 25,["54"] = 26,["56"] = 26,["57"] = 26,["58"] = 26,["61"] = 26,["62"] = 26,["66"] = 12,["67"] = 8,["68"] = 8,["69"] = 8,["70"] = 8,["71"] = 8,["72"] = 8,["73"] = 8});
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
local _____8840 = ____Property["血"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_10 = createAbility
local ____fight_9 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["佣兵技能"]["蛮族将军普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self:playSound(self.owner, 201329173)
    target:hurt(
        ability.skillEntity,
        Formula["物理伤害"],
        v,
        AbilityType["普攻"],
        nil,
        nil,
        134231255
    )
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.5
    end
    self:setUnderParticle(target, 134259689, scale)
    local ____temp_3 = self.owner:v(_____8840) / self.owner:formula(Formula["展示面板_血量上限"])
    local ____self_2 = _____6570_503C["佣兵技能"]["蛮族将军普通攻击"]
    if ____temp_3 < ____self_2["回血阈值"](____self_2) then
        local ____self_7 = self.owner
        local ____self_7_cure_8 = ____self_7.cure
        local ____self_skillEntity_5 = self.skillEntity
        local ____Formula__56DE_8840_503C_6 = Formula["回血值"]
        local ____self_4 = _____6570_503C["佣兵技能"]["蛮族将军普通攻击"]
        ____self_7_cure_8(
            ____self_7,
            ____self_skillEntity_5,
            ____Formula__56DE_8840_503C_6,
            ____self_4["治疗"](____self_4)
        )
    end
end
____exports.key = ____createAbility_10(
    nil,
    ____fight_9,
    134249075,
    ____class_0,
    {["施法开始"] = 0.3, ["施法引导"] = 0, ["施法出手"] = 0.7, ["施法完成"] = 0}
)
return ____exports
