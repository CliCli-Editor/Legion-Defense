local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 6,["20"] = 6,["21"] = 8,["22"] = 8,["23"] = 8,["24"] = 8,["25"] = 8,["27"] = 8,["28"] = 9,["29"] = 8,["30"] = 10,["31"] = 11,["32"] = 12,["33"] = 12,["34"] = 12,["35"] = 12,["36"] = 12,["37"] = 12,["38"] = 12,["39"] = 12,["40"] = 10,["41"] = 15,["43"] = 16,["44"] = 16,["45"] = 17,["46"] = 18,["49"] = 21,["50"] = 22,["51"] = 22,["52"] = 22,["53"] = 22,["54"] = 22,["55"] = 22,["56"] = 22,["57"] = 22,["58"] = 22,["59"] = 23,["60"] = 24,["61"] = 25,["63"] = 27,["65"] = 15,["66"] = 8,["67"] = 8,["68"] = 8,["69"] = 8,["70"] = 8,["71"] = 32,["72"] = 32,["73"] = 32,["74"] = 32,["75"] = 32,["76"] = 32,["77"] = 8,["78"] = 8});
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
        local ____self_1 = _____6570_503C["精英技能"]["大石头普通攻击"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
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
    end)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134273932,
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
