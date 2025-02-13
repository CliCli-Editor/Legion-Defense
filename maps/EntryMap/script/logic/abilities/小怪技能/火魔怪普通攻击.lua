local ____lualib = include("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["7"] = 1,["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 3,["15"] = 4,["16"] = 4,["17"] = 6,["18"] = 6,["19"] = 6,["20"] = 6,["21"] = 6,["22"] = 7,["23"] = 8,["24"] = 8,["25"] = 8,["26"] = 8,["27"] = 8,["28"] = 8,["29"] = 8,["30"] = 7,["31"] = 10,["32"] = 11,["33"] = 11,["34"] = 11,["35"] = 11,["36"] = 11,["37"] = 11,["38"] = 11,["39"] = 12,["40"] = 13,["43"] = 16,["44"] = 19,["45"] = 20,["46"] = 22,["47"] = 22,["48"] = 23,["49"] = 23,["50"] = 23,["51"] = 23,["52"] = 23,["53"] = 23,["54"] = 23,["55"] = 23,["56"] = 23,["57"] = 24,["58"] = 20,["59"] = 27,["60"] = 10,["61"] = 6});
local ____exports = {}
local ____AbilityBase = include("framework.fight.AbilityBase")
local createAbility = ____AbilityBase.createAbility
local AbilityBase = ____AbilityBase.AbilityBase
local ____Fight = include("framework.fight.Fight")
local fight = ____Fight.fight
local ____FightController = include("logic.controllers.FightController")
local AbilityType = ____FightController.AbilityType
local Formula = ____FightController.Formula
local _____6570_503C = include("logic.abilities.数值")
local _____6570_503C = _____6570_503C["数值"]
local ____createAbility_3 = createAbility
local ____fight_2 = fight
local ____class_0 = __TS__Class()
____class_0.name = ____class_0.name
__TS__ClassExtends(____class_0, AbilityBase)
____class_0.prototype["施法开始"] = function(self, ability, cast)
    self:play(
        "attack2",
        1,
        0,
        0.45,
        false
    )
end
____class_0.prototype["施法出手"] = function(self, ability, cast)
    self:play(
        "attack2",
        1,
        0.45,
        1.25,
        false
    )
    local target = cast:getTargetUnit()
    if not target then
        return
    end
    local angle = self:getDirection(ability.owner, target)
    local p = self:createProjectile(134252744, self.owner, angle, 150)
    p:listener({onFinish = function()
        local ____self_1 = _____6570_503C["火魔怪"]["普通攻击"]
        local v = ____self_1["普通伤害"](____self_1, self.owner)
        target:hurt(
            self.skillEntity,
            Formula["物理伤害"],
            v,
            AbilityType["普攻"],
            nil,
            nil,
            104653
        )
        p:remove()
    end})
    p:moverTarget(target, 750, 0)
end
____exports.key = ____createAbility_3(nil, ____fight_2, 134276445, ____class_0)
return ____exports
