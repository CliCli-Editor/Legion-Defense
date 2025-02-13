local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["26"] = 8,["27"] = 9,["28"] = 8,["29"] = 11,["31"] = 12,["32"] = 13,["33"] = 13,["34"] = 14,["35"] = 15,["38"] = 18,["39"] = 19,["40"] = 19,["41"] = 19,["42"] = 19,["43"] = 19,["44"] = 19,["45"] = 19,["46"] = 19,["47"] = 19,["48"] = 20,["49"] = 21,["50"] = 22,["52"] = 24,["54"] = 11,["55"] = 7,["56"] = 7,["57"] = 7,["58"] = 7,["59"] = 7,["60"] = 7,["61"] = 7});
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
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play("attack1", 1, 0, 0.4)
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        self:play("attack1", 3, 0.4, 1.9)
        local ____self_1 = _____6570_503C["精英技能"]["力法师普通攻击"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        self:playSound(self.owner, 134240944)
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
    end)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134224335,
    ____class_0,
    {["施法开始"] = 0.4, ["施法引导"] = 0, ["施法出手"] = 0.5, ["施法完成"] = 0}
)
return ____exports
