local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 5,["18"] = 5,["19"] = 7,["20"] = 7,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 8,["25"] = 9,["26"] = 9,["27"] = 9,["28"] = 9,["29"] = 9,["30"] = 9,["31"] = 9,["32"] = 9,["33"] = 8,["34"] = 11,["35"] = 12,["36"] = 12,["37"] = 13,["38"] = 14,["41"] = 17,["42"] = 18,["43"] = 18,["44"] = 19,["45"] = 20,["46"] = 20,["47"] = 20,["48"] = 20,["49"] = 20,["50"] = 20,["51"] = 20,["52"] = 20,["53"] = 20,["54"] = 21,["55"] = 22,["56"] = 23,["58"] = 25,["59"] = 11,["60"] = 27,["61"] = 28,["62"] = 28,["63"] = 29,["64"] = 30,["67"] = 33,["68"] = 34,["69"] = 34,["70"] = 35,["71"] = 36,["72"] = 36,["73"] = 36,["74"] = 36,["75"] = 36,["76"] = 36,["77"] = 36,["78"] = 36,["79"] = 36,["80"] = 37,["81"] = 38,["82"] = 39,["84"] = 41,["85"] = 27,["86"] = 7,["87"] = 7,["88"] = 7,["89"] = 7,["90"] = 7,["91"] = 45,["92"] = 45,["93"] = 45,["94"] = 45,["95"] = 45,["96"] = 45,["97"] = 7,["98"] = 7});
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
local ____createAbility_6 = createAbility
local ____fight_5 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play(
        "attack1",
        1,
        0,
        1,
        false,
        true
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local ____self_1 = _____6570_503C["精英技能"]["蛇女普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self:playSound(self.owner, 201329173)
    local ____self_2 = _____6570_503C["精英技能"]["蛇女普通攻击"]
    local quantity = ____self_2["附加中毒层数"](____self_2) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
    target:addEffect(self.skillEntity, 1, quantity)
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
    local ____self_3 = _____6570_503C["精英技能"]["蛇女普通攻击"]
    local v = ____self_3["伤害"](____self_3, self.owner)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    self:playSound(self.owner, 201329173)
    local ____self_4 = _____6570_503C["精英技能"]["蛇女普通攻击"]
    local quantity = ____self_4["附加中毒层数"](____self_4) * (1 + self.owner:formula(Formula["展示面板_毒系数"]))
    target:addEffect(self.skillEntity, 1, quantity)
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
____exports.key = ____createAbility_6(
    nil,
    ____fight_5,
    134244163,
    ____class_0,
    {
        ["释放范围"] = 350,
        ["施法开始"] = 0.4,
        ["施法引导"] = 0,
        ["施法出手"] = 0.3,
        ["施法完成"] = 0.3
    }
)
return ____exports
