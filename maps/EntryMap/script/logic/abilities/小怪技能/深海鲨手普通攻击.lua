local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 8,["27"] = 9,["28"] = 8,["29"] = 11,["31"] = 12,["32"] = 12,["33"] = 13,["34"] = 14,["37"] = 17,["38"] = 18,["39"] = 18,["40"] = 18,["41"] = 18,["42"] = 18,["43"] = 18,["44"] = 18,["45"] = 18,["46"] = 18,["47"] = 19,["48"] = 20,["49"] = 21,["51"] = 23,["52"] = 24,["53"] = 25,["54"] = 25,["55"] = 25,["56"] = 25,["57"] = 25,["58"] = 25,["59"] = 25,["60"] = 25,["61"] = 25,["62"] = 25,["63"] = 25,["64"] = 25,["66"] = 11,["67"] = 7,["68"] = 7,["69"] = 7,["70"] = 7,["71"] = 7,["72"] = 7,["73"] = 7});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____UnitTags = include("logic.models.UnitTags")
local UnitTag = ____UnitTags.UnitTag
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_8 = createAbility
local ____fight_7 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["小怪技能"]["深海鲨手"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        self:playSound(self.owner, 201330767)
        target:hurt(
            self.skillEntity,
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
        __TS__Await(self:awaitTime(0.1))
        local ____target_5 = target
        local ____target_hurt_6 = target.hurt
        local ____self_skillEntity_3 = self.skillEntity
        local ____Formula__56FA_5B9A_4F24_5BB3_4 = Formula["固定伤害"]
        local ____self_2 = _____6570_503C["小怪技能"]["深海鲨手"]
        ____target_hurt_6(
            ____target_5,
            ____self_skillEntity_3,
            ____Formula__56FA_5B9A_4F24_5BB3_4,
            ____self_2["额外伤害"](____self_2, self.owner),
            AbilityType["普攻"]
        )
    end)
end
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134274443,
    ____class_0,
    {["施法开始"] = 0.7, ["施法引导"] = 0, ["施法出手"] = 0.3, ["施法完成"] = 0}
)
return ____exports
