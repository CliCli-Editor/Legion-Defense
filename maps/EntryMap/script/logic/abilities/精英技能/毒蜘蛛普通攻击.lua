local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__AsyncAwaiter = ____lualib.__TS__AsyncAwaiter
local __TS__Await = ____lualib.__TS__Await
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 2,["13"] = 2,["14"] = 3,["15"] = 3,["16"] = 3,["17"] = 4,["18"] = 4,["19"] = 5,["20"] = 5,["21"] = 7,["22"] = 7,["23"] = 7,["24"] = 7,["25"] = 7,["27"] = 7,["28"] = 8,["29"] = 7,["30"] = 9,["31"] = 10,["32"] = 11,["33"] = 12,["34"] = 12,["35"] = 12,["36"] = 12,["37"] = 12,["38"] = 12,["39"] = 12,["40"] = 12,["42"] = 14,["44"] = 9,["45"] = 18,["47"] = 19,["48"] = 19,["49"] = 20,["51"] = 20,["52"] = 20,["53"] = 20,["54"] = 20,["55"] = 20,["56"] = 20,["57"] = 20,["59"] = 21,["60"] = 22,["61"] = 23,["62"] = 23,["63"] = 24,["65"] = 24,["66"] = 24,["67"] = 24,["68"] = 24,["69"] = 24,["70"] = 24,["71"] = 24,["74"] = 18,["75"] = 7,["76"] = 7,["77"] = 7,["78"] = 7,["79"] = 7,["80"] = 7,["81"] = 7});
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
local _____66B4_51FB_7387 = ____Property["暴击率"]
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_8 = createAbility
local ____fight_7 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
function ____class_0.prototype.____constructor(self, ...)
    AbilityBase.prototype.____constructor(self, ...)
    self["暴击"] = false
end
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self["暴击"] = math.random() < self.owner:p(_____66B4_51FB_7387)
    if self["暴击"] then
        self:play(
            "attack2",
            1.07,
            0,
            1.87,
            false,
            true
        )
    else
        self:play("attack1")
    end
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    return __TS__AsyncAwaiter(function(____awaiter_resolve)
        local ____self_1 = _____6570_503C["精英技能"]["钢人普通攻击"]
        local v = ____self_1["伤害"](____self_1, self.owner)
        local ____opt_2 = cast:getTargetUnit()
        if ____opt_2 ~= nil then
            ____opt_2:hurt(
                self.skillEntity,
                Formula["物理伤害"],
                v,
                AbilityType["普攻"],
                self["暴击"]
            )
        end
        local x = 1 / self.owner:formula(Formula["展示面板_攻速"]) * 100
        __TS__Await(self:awaitTime(0.2 * x))
        local ____self_4 = _____6570_503C["精英技能"]["钢人普通攻击"]
        local v2 = ____self_4["额外伤害"](____self_4, self.owner)
        local ____opt_5 = cast:getTargetUnit()
        if ____opt_5 ~= nil then
            ____opt_5:hurt(
                self.skillEntity,
                Formula["法术伤害"],
                v2,
                AbilityType["普攻"],
                self["暴击"]
            )
        end
    end)
end
____exports.key = ____createAbility_8(
    nil,
    ____fight_7,
    134239430,
    ____class_0,
    {["施法开始"] = 0.75, ["施法引导"] = 0, ["施法出手"] = 1, ["施法完成"] = 0}
)
return ____exports
