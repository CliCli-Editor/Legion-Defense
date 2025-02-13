local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 9,["26"] = 8,["27"] = 11,["28"] = 12,["29"] = 13,["32"] = 16,["33"] = 16,["34"] = 17,["35"] = 18,["36"] = 18,["37"] = 19,["38"] = 20,["39"] = 20,["40"] = 20,["41"] = 20,["42"] = 20,["43"] = 20,["44"] = 20,["45"] = 20,["46"] = 20,["47"] = 21,["48"] = 22,["49"] = 23,["51"] = 25,["52"] = 11,["53"] = 7,["54"] = 7,["55"] = 7,["56"] = 7,["57"] = 7,["58"] = 7,["59"] = 7});
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
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local ____self_1 = _____6570_503C["小怪技能"]["绿蛤蟆2"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    self:playSound(self.owner, 134240944)
    local ____self_2 = _____6570_503C["小怪技能"]["绿蛤蟆2"]
    local quantity = ____self_2["附加中毒层数"](____self_2) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
    target:addEffect(self.skillEntity, 1, quantity)
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
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134220723,
    ____class_0,
    {["施法开始"] = 0.55, ["施法引导"] = 0, ["施法出手"] = 0.45, ["施法完成"] = 0}
)
return ____exports
