local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["27"] = 7,["28"] = 8,["29"] = 7,["30"] = 9,["31"] = 10,["32"] = 11,["33"] = 11,["34"] = 11,["35"] = 11,["36"] = 11,["37"] = 11,["38"] = 11,["39"] = 11,["40"] = 9,["41"] = 14,["43"] = 15,["44"] = 15,["45"] = 16,["46"] = 16,["47"] = 18,["48"] = 19,["51"] = 22,["52"] = 23,["53"] = 23,["54"] = 23,["55"] = 23,["56"] = 23,["57"] = 23,["58"] = 23,["59"] = 23,["60"] = 23,["61"] = 24,["62"] = 25,["63"] = 26,["65"] = 28,["66"] = 30,["67"] = 31,["68"] = 31,["69"] = 31,["70"] = 31,["71"] = 31,["72"] = 31,["73"] = 31,["74"] = 31,["76"] = 14,["77"] = 7,["78"] = 7,["79"] = 7,["80"] = 7,["81"] = 7,["82"] = 35,["83"] = 35,["84"] = 35,["85"] = 35,["86"] = 35,["87"] = 35,["88"] = 7,["89"] = 7});
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
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self.count = 0
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self.count = self.count + 1
    self:play(
        self.count % 2 ~= 0 and "attack1" or "attack2",
        1,
        0,
        -1,
        false,
        true
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["流派卡召唤物"]["替身魔像"]
        local v1 = ____self_1["伤害1"](____self_1, self.owner)
        local ____self_2 = _____6570_503C["流派卡召唤物"]["替身魔像"]
        local v2 = ____self_2["伤害2"](____self_2, self.owner)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        self:playSound(self.owner, 134240944)
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
        target:hurt(
            self.skillEntity,
            Formula["法术伤害"],
            v2,
            AbilityType["普攻"],
            nil,
            nil
        )
    end)
end
____exports.key = ____createAbility_4(
    nil,
    ____fight_3,
    134277680,
    ____class_0,
    {
        ["释放范围"] = 350,
        ["施法开始"] = 0.65,
        ["施法引导"] = 0,
        ["施法出手"] = 0.9,
        ["施法完成"] = 0
    }
)
return ____exports
