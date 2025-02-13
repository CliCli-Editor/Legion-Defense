local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 8,["27"] = 9,["28"] = 8,["29"] = 12,["31"] = 13,["32"] = 13,["33"] = 14,["34"] = 14,["35"] = 15,["36"] = 16,["39"] = 19,["40"] = 20,["41"] = 20,["42"] = 20,["43"] = 20,["44"] = 20,["45"] = 20,["46"] = 20,["47"] = 20,["48"] = 20,["49"] = 21,["50"] = 22,["51"] = 23,["53"] = 25,["54"] = 26,["55"] = 27,["57"] = 12,["58"] = 7,["59"] = 7,["60"] = 7,["61"] = 7,["62"] = 7,["63"] = 7,["64"] = 7});
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
local ____createAbility_4 = createAbility
local ____fight_3 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["小怪技能"]["亡灵剑士"]
        local v1 = ____self_1["伤害1"](____self_1, self.owner)
        local ____self_2 = _____6570_503C["小怪技能"]["亡灵剑士"]
        local v2 = ____self_2["伤害2"](____self_2, self.owner)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        self:playSound(self.owner, 201330767)
        target:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            v1,
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
        target:hurt(self.skillEntity, Formula["法术伤害"], v2, AbilityType["普攻"])
    end)
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134235707,
    ____class_0,
    {["施法开始"] = 0.75, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0}
)
return ____exports
