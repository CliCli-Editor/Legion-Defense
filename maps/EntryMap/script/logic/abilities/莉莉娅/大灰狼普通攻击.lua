local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 4,["13"] = 4,["14"] = 4,["15"] = 5,["16"] = 5,["17"] = 6,["18"] = 6,["19"] = 7,["20"] = 7,["21"] = 10,["22"] = 10,["23"] = 10,["24"] = 10,["25"] = 10,["27"] = 10,["28"] = 11,["29"] = 10,["30"] = 12,["31"] = 13,["32"] = 14,["33"] = 15,["35"] = 17,["37"] = 12,["38"] = 20,["39"] = 21,["40"] = 22,["43"] = 25,["44"] = 25,["45"] = 26,["46"] = 27,["47"] = 27,["48"] = 27,["49"] = 27,["50"] = 27,["51"] = 27,["52"] = 27,["53"] = 27,["54"] = 27,["55"] = 28,["56"] = 29,["57"] = 30,["58"] = 30,["59"] = 30,["60"] = 30,["61"] = 30,["62"] = 30,["63"] = 30,["64"] = 30,["65"] = 30,["66"] = 30,["68"] = 30,["69"] = 30,["71"] = 30,["72"] = 31,["74"] = 33,["75"] = 34,["76"] = 35,["78"] = 37,["79"] = 20,["80"] = 10,["81"] = 10,["82"] = 10,["83"] = 10,["84"] = 10,["85"] = 10,["86"] = 10});
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
local ____FightUtils = include("logic.utils.FightUtils")
local fightUtils = ____FightUtils.fightUtils
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_9 = createAbility
local ____fight_8 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.count = 0
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self.count = self.count + 1
    if self.count % 2 == 1 then
        self:play("attack1")
    else
        self:play("attack2", 1.125)
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    local target = cast:getTargetUnit()
    if not target or not target:isAlive() then
        return
    end
    local ____self_1 = _____6570_503C["莉莉"]["大灰狼普通攻击"]
    local v = ____self_1["伤害"](____self_1, self.owner)
    self:playSound(self.owner, 134240944)
    target:hurt(
        self.skillEntity,
        Formula["物理伤害"],
        v,
        AbilityType["普攻"],
        nil,
        nil,
        100804
    )
    local parent = fightUtils:getAncestor(self.owner)
    if parent and parent:isAlive() then
        local ____temp_7
        local ____target_3 = target
        local ____target_getEffectQuantity_4 = target.getEffectQuantity
        local ____self_2 = _____6570_503C["莉莉"]["普通攻击"]
        if ____target_getEffectQuantity_4(
            ____target_3,
            ____self_2["特殊攻击附加buffId"](____self_2)
        ) > 0 then
            local ____self_5 = _____6570_503C["莉莉"]["大灰狼普通攻击"]
            ____temp_7 = ____self_5["治疗"](____self_5, parent) * 2
        else
            local ____self_6 = _____6570_503C["莉莉"]["大灰狼普通攻击"]
            ____temp_7 = ____self_6["治疗"](____self_6, parent)
        end
        local c = ____temp_7
        parent:cure(self.skillEntity, Formula["回血值"], c)
    end
    local scale = 1
    if target:checkTag(UnitTag["玩家英雄"]) then
        scale = 0.5
    end
    self:setUnderParticle(target, 134259689, scale)
end
____exports.key = ____createAbility_9(
    nil,
    ____fight_8,
    134245604,
    ____class_0,
    {["施法开始"] = 0.4, ["施法引导"] = 0, ["施法出手"] = 0.6, ["施法完成"] = 0}
)
return ____exports
