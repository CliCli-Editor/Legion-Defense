local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SparseArrayNew = ____lualib.__TS__SparseArrayNew
local __TS__SparseArrayPush = ____lualib.__TS__SparseArrayPush
local __TS__SparseArraySpread = ____lualib.__TS__SparseArraySpread
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["10"] = 1,["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 7,["25"] = 7,["26"] = 9,["27"] = 10,["28"] = 10,["29"] = 10,["30"] = 10,["31"] = 10,["32"] = 11,["33"] = 12,["34"] = 11,["35"] = 15,["36"] = 16,["37"] = 16,["38"] = 17,["39"] = 18,["42"] = 21,["43"] = 22,["44"] = 22,["45"] = 22,["46"] = 22,["47"] = 22,["48"] = 22,["49"] = 22,["50"] = 22,["51"] = 22,["52"] = 23,["53"] = 24,["54"] = 25,["56"] = 27,["57"] = 28,["59"] = 28,["60"] = 28,["61"] = 28,["64"] = 28,["65"] = 28,["66"] = 28,["67"] = 28,["68"] = 28,["69"] = 28,["70"] = 28,["71"] = 28,["73"] = 28,["82"] = 15,["83"] = 10,["84"] = 10,["85"] = 10,["86"] = 10,["87"] = 10,["88"] = 10,["89"] = 10});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____utils = include("framework.fight.utils")
local genEffectId = ____utils.genEffectId
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____6CD5_672F_653B_51FB = ____Property["法术攻击"]
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local buffId = genEffectId(nil)
local ____createAbility_9 = createAbility
local ____fight_8 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["小怪技能"]["火狼"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self:playSound(self.owner, 201329173)
    target:hurt(
        self.skillEntity,
        Formula["法术伤害"],
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
    local ____self_6 = self.owner
    local ____self_6_addTimeLimitProperties_7 = ____self_6.addTimeLimitProperties
    local ____array_5 = __TS__SparseArrayNew(self.skillEntity, buffId, 3)
    local ____6CD5_672F_653B_51FB_3 = _____6CD5_672F_653B_51FB
    local ____self_2 = _____6570_503C["小怪技能"]["火狼"]
    __TS__SparseArrayPush(
        ____array_5,
        {
            ____6CD5_672F_653B_51FB_3,
            ____self_2["每层叠加法攻"](____self_2)
        },
        {},
        {-1},
        nil,
        1
    )
    local ____self_4 = _____6570_503C["小怪技能"]["火狼"]
    __TS__SparseArrayPush(
        ____array_5,
        ____self_4["最大层数"](____self_4)
    )
    ____self_6_addTimeLimitProperties_7(
        ____self_6,
        __TS__SparseArraySpread(____array_5)
    )
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134227290,
    ____class_0,
    {["施法开始"] = 0.65, ["施法引导"] = 0, ["施法出手"] = 0.35, ["施法完成"] = 0}
)
return ____exports
