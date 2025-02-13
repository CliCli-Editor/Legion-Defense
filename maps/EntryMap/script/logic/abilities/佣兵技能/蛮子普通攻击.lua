local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["29"] = 8,["30"] = 9,["31"] = 8,["32"] = 10,["33"] = 11,["34"] = 12,["35"] = 13,["37"] = 15,["39"] = 10,["40"] = 18,["42"] = 19,["43"] = 19,["44"] = 20,["45"] = 21,["48"] = 24,["49"] = 25,["50"] = 25,["51"] = 25,["52"] = 25,["53"] = 25,["54"] = 25,["55"] = 25,["56"] = 25,["57"] = 25,["58"] = 26,["59"] = 27,["60"] = 28,["62"] = 30,["63"] = 31,["64"] = 32,["65"] = 33,["66"] = 33,["67"] = 33,["68"] = 33,["69"] = 33,["70"] = 33,["71"] = 33,["72"] = 33,["73"] = 33,["74"] = 33,["75"] = 33,["76"] = 33,["78"] = 35,["79"] = 35,["80"] = 35,["81"] = 35,["82"] = 35,["83"] = 35,["84"] = 35,["85"] = 35,["86"] = 35,["87"] = 35,["88"] = 35,["91"] = 18,["92"] = 8,["93"] = 8,["94"] = 8,["95"] = 8,["96"] = 8,["97"] = 8,["98"] = 8});
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
local ____createAbility_13 = createAbility
local ____fight_12 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.count = 0
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self.count = self.count + 1
    if self.count % 2 == 0 then
        self:play("attack2")
    else
        self:play("attack1")
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["佣兵技能"]["蛮子普通攻击"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        self:playSound(self.owner, 134240944)
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
        if self.count % 2 == 0 then
            __TS__Await(self:awaitTime(0.1))
            local ____target_5 = target
            local ____target_hurt_6 = target.hurt
            local ____ability_skillEntity_3 = ability.skillEntity
            local ____Formula__56FA_5B9A_4F24_5BB3_4 = Formula["固定伤害"]
            local ____self_2 = _____6570_503C["佣兵技能"]["蛮子普通攻击"]
            ____target_hurt_6(
                ____target_5,
                ____ability_skillEntity_3,
                ____Formula__56FA_5B9A_4F24_5BB3_4,
                ____self_2["右手额外固定伤害"](____self_2),
                AbilityType["普攻"]
            )
        else
            local ____fightUtils_10 = fightUtils
            local ____fightUtils_addShield_11 = fightUtils.addShield
            local ____self_owner_8 = self.owner
            local ____self_skillEntity_9 = self.skillEntity
            local ____self_7 = _____6570_503C["佣兵技能"]["蛮子普通攻击"]
            ____fightUtils_addShield_11(
                ____fightUtils_10,
                ____self_owner_8,
                ____self_skillEntity_9,
                ____self_7["左手获得护盾"](____self_7)
            )
        end
    end)
end
____exports.key = ____createAbility_13(
    nil,
    ____fight_12,
    134278383,
    ____class_0,
    {["施法开始"] = 0.2, ["施法引导"] = 0, ["施法出手"] = 0.8, ["施法完成"] = 0}
)
return ____exports
