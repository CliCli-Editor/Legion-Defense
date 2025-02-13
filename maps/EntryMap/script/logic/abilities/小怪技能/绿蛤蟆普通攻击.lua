local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 9,["26"] = 8,["27"] = 11,["28"] = 12,["29"] = 12,["30"] = 13,["31"] = 14,["34"] = 17,["35"] = 18,["36"] = 18,["37"] = 18,["38"] = 18,["39"] = 18,["40"] = 18,["41"] = 18,["42"] = 18,["43"] = 18,["44"] = 19,["45"] = 20,["46"] = 21,["48"] = 23,["49"] = 11,["50"] = 25,["51"] = 26,["52"] = 26,["53"] = 27,["54"] = 28,["57"] = 31,["58"] = 32,["59"] = 32,["60"] = 32,["61"] = 32,["62"] = 32,["63"] = 32,["64"] = 32,["65"] = 32,["66"] = 32,["67"] = 33,["68"] = 34,["69"] = 35,["71"] = 37,["72"] = 25,["73"] = 7,["74"] = 7,["75"] = 7,["76"] = 7,["77"] = 7,["78"] = 7,["79"] = 7});
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
    local ____self_1 = _____6570_503C["小怪技能"]["绿蛤蟆"]
    local v = ____self_1["物理伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self:playSound(self.owner, 134240944)
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
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_2 = _____6570_503C["小怪技能"]["绿蛤蟆"]
    local v = ____self_2["法术伤害"](____self_2, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
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
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134266077,
    ____class_0,
    {["施法开始"] = 0.6, ["施法引导"] = 0, ["施法出手"] = 0.4, ["施法完成"] = 0.4}
)
return ____exports
