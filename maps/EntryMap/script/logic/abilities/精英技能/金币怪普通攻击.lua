local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 9,["26"] = 8,["27"] = 12,["28"] = 13,["29"] = 13,["30"] = 14,["31"] = 15,["34"] = 18,["35"] = 19,["36"] = 19,["37"] = 19,["38"] = 19,["39"] = 19,["40"] = 19,["41"] = 19,["42"] = 19,["43"] = 19,["44"] = 20,["45"] = 21,["46"] = 22,["48"] = 24,["49"] = 12,["50"] = 26,["51"] = 27,["52"] = 27,["53"] = 28,["54"] = 29,["57"] = 32,["58"] = 33,["59"] = 33,["60"] = 33,["61"] = 33,["62"] = 33,["63"] = 33,["64"] = 33,["65"] = 33,["66"] = 33,["67"] = 34,["68"] = 35,["69"] = 36,["71"] = 38,["72"] = 26,["73"] = 7,["74"] = 7,["75"] = 7,["76"] = 7,["77"] = 7,["78"] = 42,["79"] = 42,["80"] = 42,["81"] = 42,["82"] = 42,["83"] = 42,["84"] = 7,["85"] = 7});
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
    local ____self_1 = _____6570_503C["精英技能"]["宝箱怪普通攻击"]
    local v1 = ____self_1["伤害1"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self:playSound(self.owner, 201329173)
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
end
____class_0.prototype["施法完成"] = function(self, ability, cast)
    local ____self_2 = _____6570_503C["精英技能"]["宝箱怪普通攻击"]
    local v2 = ____self_2["伤害2"](____self_2, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self:playSound(self.owner, 201329173)
    target:hurt(
        self.skillEntity,
        Formula["法术伤害"],
        v2,
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
    134252400,
    ____class_0,
    {
        ["释放范围"] = 350,
        ["施法开始"] = 0.5,
        ["施法引导"] = 0,
        ["施法出手"] = 0.2,
        ["施法完成"] = 0.5
    }
)
return ____exports
