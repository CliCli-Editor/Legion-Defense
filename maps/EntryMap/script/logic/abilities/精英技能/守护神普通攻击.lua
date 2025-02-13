local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 6,["22"] = 6,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 9,["29"] = 10,["30"] = 9,["31"] = 12,["33"] = 13,["34"] = 13,["35"] = 14,["36"] = 15,["39"] = 18,["40"] = 19,["41"] = 20,["42"] = 21,["43"] = 21,["44"] = 21,["45"] = 21,["46"] = 21,["47"] = 21,["48"] = 21,["49"] = 21,["50"] = 21,["51"] = 22,["52"] = 23,["53"] = 24,["55"] = 26,["57"] = 28,["58"] = 28,["59"] = 28,["60"] = 28,["61"] = 28,["62"] = 28,["63"] = 28,["64"] = 28,["65"] = 28,["66"] = 29,["67"] = 30,["68"] = 31,["70"] = 33,["73"] = 12,["74"] = 8,["75"] = 8,["76"] = 8,["77"] = 8,["78"] = 8,["79"] = 8,["80"] = 8});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local ____Property = include("logic.models.Property")
local _____7279_6280_1 = ____Property["特技_1"]
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
    self:play("attack1")
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["精英技能"]["守护神普通攻击"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local target = cast:getTargetUnit()
        if not target or not target:isAlive() then
            return ____awaiter_resolve(nil)
        end
        self:playSound(self.owner, 134240944)
        if self.owner:v(_____7279_6280_1) == 1 then
            self.owner:setValue(_____7279_6280_1, 0)
            target:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                true,
                true,
                134231255
            )
            local scale = 1
            if target:checkTag(UnitTag["玩家英雄"]) then
                scale = 0.5
            end
            self:setUnderParticle(target, 134259689, scale)
        else
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
    end)
end
____exports.key = ____createAbility_3(
    nil,
    ____fight_2,
    134282093,
    ____class_0,
    {["施法开始"] = 1.15, ["施法引导"] = 0, ["施法出手"] = 0.7, ["施法完成"] = 0}
)
return ____exports
